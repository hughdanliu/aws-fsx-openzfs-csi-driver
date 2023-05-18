/*
Copyright 2023 The Kubernetes Authors.
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

	http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

package cloud

import (
	"context"
	"fmt"
	"math/rand"
	"time"
)

var random *rand.Rand

func init() {
	random = rand.New(rand.NewSource(time.Now().UnixNano()))
}

type FakeCloudProvider struct {
	m           *metadata
	fileSystems map[string]*FileSystem
	volumes     map[string]*Volume
	snapshots   map[string]*Snapshot
}

func NewFakeCloudProvider() *FakeCloudProvider {
	return &FakeCloudProvider{
		m:           &metadata{"instanceID", "region", "az"},
		fileSystems: make(map[string]*FileSystem),
		volumes:     make(map[string]*Volume),
		snapshots:   make(map[string]*Snapshot),
	}
}

func (c *FakeCloudProvider) GetMetadata() MetadataService {
	return c.m
}

func (c *FakeCloudProvider) CreateFileSystem(ctx context.Context, volumeName string, fileSystemOptions FileSystemOptions) (*FileSystem, error) {
	fs, exists := c.fileSystems[volumeName]
	if exists {
		if fs.StorageCapacity == *fileSystemOptions.StorageCapacity {
			return fs, nil
		} else {
			return nil, ErrAlreadyExists
		}
	}

	var storageCapacity int64
	if fileSystemOptions.StorageCapacity == nil {
		storageCapacity = 10
	} else {
		storageCapacity = *fileSystemOptions.StorageCapacity
	}

	fs = &FileSystem{
		DnsName:         "test.us-east-1.fsx.amazonaws.com",
		FileSystemId:    fmt.Sprintf("fs-%d", random.Uint64()),
		StorageCapacity: storageCapacity,
	}
	c.fileSystems[volumeName] = fs
	return fs, nil
}

func (c *FakeCloudProvider) ResizeFileSystem(ctx context.Context, fileSystemId string, newSizeGiB int64) (*int64, error) {
	for _, fs := range c.fileSystems {
		if fs.FileSystemId == fileSystemId {
			fs.StorageCapacity = newSizeGiB
			return &newSizeGiB, nil
		}
	}
	return nil, ErrNotFound
}

func (c *FakeCloudProvider) DeleteFileSystem(ctx context.Context, filesystemId string) error {
	delete(c.fileSystems, filesystemId)
	for name, fs := range c.fileSystems {
		if fs.FileSystemId == filesystemId {
			delete(c.fileSystems, name)
		}
	}
	return nil
}

func (c *FakeCloudProvider) DescribeFileSystem(ctx context.Context, filesystemId string) (*FileSystem, error) {
	for _, fs := range c.fileSystems {
		if fs.FileSystemId == filesystemId {
			return fs, nil
		}
	}
	return nil, ErrNotFound
}

func (c *FakeCloudProvider) WaitForFileSystemAvailable(ctx context.Context, fileSystemId string) error {
	return nil
}

func (c *FakeCloudProvider) WaitForFileSystemResize(ctx context.Context, fileSystemId string, newSizeGiB int64) error {
	return nil
}

func (c *FakeCloudProvider) CreateVolume(ctx context.Context, volumeName string, volumeOptions VolumeOptions) (*Volume, error) {
	v, exists := c.volumes[volumeName]
	if exists {
		return v, nil
	}

	v = &Volume{
		FileSystemId: "fs-1234",
		VolumePath:   "/",
		VolumeId:     fmt.Sprintf("fsvol-%d", random.Uint64()),
	}
	c.volumes[volumeName] = v
	return v, nil
}

func (c *FakeCloudProvider) ResizeVolume(ctx context.Context, volumeId string, newSizeGiB int64) (*int64, error) {
	for _, v := range c.volumes {
		if v.VolumeId == volumeId {
			return &newSizeGiB, nil
		}
	}
	return nil, ErrNotFound
}

func (c *FakeCloudProvider) DeleteVolume(ctx context.Context, volumeId string) (err error) {
	delete(c.volumes, volumeId)
	for name, v := range c.volumes {
		if v.VolumeId == volumeId {
			delete(c.volumes, name)
		}
	}
	return nil
}

func (c *FakeCloudProvider) DescribeVolume(ctx context.Context, volumeId string) (*Volume, error) {
	for _, v := range c.volumes {
		if v.VolumeId == volumeId {
			return v, nil
		}
	}
	return nil, ErrNotFound
}

func (c *FakeCloudProvider) WaitForVolumeAvailable(ctx context.Context, volumeId string) error {
	return nil
}

func (c *FakeCloudProvider) WaitForVolumeResize(ctx context.Context, volumeId string, newSizeGiB int64) error {
	return nil
}

func (c *FakeCloudProvider) CreateSnapshot(ctx context.Context, snapshotOptions SnapshotOptions) (snapshot *Snapshot, err error) {
	snapshotName := *snapshotOptions.SnapshotName
	sourceVolumeId := *snapshotOptions.SourceVolumeId
	snapshot, exists := c.snapshots[snapshotName]
	if exists {
		if snapshot.SourceVolumeID == sourceVolumeId {
			return snapshot, nil
		} else {
			return nil, ErrAlreadyExists
		}
	}

	snapshot = &Snapshot{
		SnapshotID:     fmt.Sprintf("fsvolsnap-%d", random.Uint64()),
		SourceVolumeID: sourceVolumeId,
		CreationTime:   time.Now(),
	}

	c.snapshots[snapshotName] = snapshot
	return snapshot, nil
}

func (c *FakeCloudProvider) DeleteSnapshot(ctx context.Context, snapshotId string) (err error) {
	delete(c.snapshots, snapshotId)
	for name, snapshot := range c.snapshots {
		if snapshot.SnapshotID == snapshotId {
			delete(c.snapshots, name)
		}
	}
	return nil
}

func (c *FakeCloudProvider) DescribeSnapshot(ctx context.Context, snapshotId string) (*Snapshot, error) {
	for _, s := range c.snapshots {
		if s.SnapshotID == snapshotId {
			return s, nil
		}
	}
	return nil, ErrNotFound
}

func (c *FakeCloudProvider) WaitForSnapshotAvailable(ctx context.Context, snapshotId string) error {
	return nil
}
