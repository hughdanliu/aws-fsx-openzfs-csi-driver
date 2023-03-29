// Code generated by MockGen. DO NOT EDIT.
// Source: sigs.k8s.io/aws-fsx-openzfs-csi-driver/pkg/cloud (interfaces: Cloud)

// Package mocks is a generated GoMock package.
package mocks

import (
	reflect "reflect"

	gomock "github.com/golang/mock/gomock"
	cloud "sigs.k8s.io/aws-fsx-openzfs-csi-driver/pkg/cloud"
)

// MockCloud is a mock of Cloud interface.
type MockCloud struct {
	ctrl     *gomock.Controller
	recorder *MockCloudMockRecorder
}

// MockCloudMockRecorder is the mock recorder for MockCloud.
type MockCloudMockRecorder struct {
	mock *MockCloud
}

// NewMockCloud creates a new mock instance.
func NewMockCloud(ctrl *gomock.Controller) *MockCloud {
	mock := &MockCloud{ctrl: ctrl}
	mock.recorder = &MockCloudMockRecorder{mock}
	return mock
}

// EXPECT returns an object that allows the caller to indicate expected use.
func (m *MockCloud) EXPECT() *MockCloudMockRecorder {
	return m.recorder
}

// GetMetadata mocks base method.
func (m *MockCloud) GetMetadata() cloud.MetadataService {
	m.ctrl.T.Helper()
	ret := m.ctrl.Call(m, "GetMetadata")
	ret0, _ := ret[0].(cloud.MetadataService)
	return ret0
}

// GetMetadata indicates an expected call of GetMetadata.
func (mr *MockCloudMockRecorder) GetMetadata() *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "GetMetadata", reflect.TypeOf((*MockCloud)(nil).GetMetadata))
}
