module sigs.k8s.io/aws-fsx-openzfs-csi-driver

go 1.20

require (
	github.com/aws/aws-sdk-go v1.44.264
	github.com/container-storage-interface/spec v1.7.0
	github.com/golang/mock v1.6.0
	github.com/kubernetes-csi/csi-test/v5 v5.0.0
	github.com/onsi/ginkgo/v2 v2.11.0
	github.com/onsi/gomega v1.27.8
	github.com/spf13/pflag v1.0.5
	google.golang.org/grpc v1.51.0
	google.golang.org/protobuf v1.28.1
	k8s.io/apimachinery v0.27.3
	k8s.io/component-base v0.0.0-00010101000000-000000000000
	k8s.io/klog/v2 v2.90.1
	k8s.io/mount-utils v0.26.0
)

require (
	github.com/beorn7/perks v1.0.1 // indirect
	github.com/blang/semver/v4 v4.0.0 // indirect
	github.com/cespare/xxhash/v2 v2.1.2 // indirect
	github.com/go-logr/logr v1.2.4 // indirect
	github.com/go-logr/zapr v1.2.3 // indirect
	github.com/go-task/slim-sprig v0.0.0-20230315185526-52ccab3ef572 // indirect
	github.com/gogo/protobuf v1.3.2 // indirect
	github.com/golang/protobuf v1.5.3 // indirect
	github.com/google/go-cmp v0.5.9 // indirect
	github.com/google/pprof v0.0.0-20210720184732-4bb14d4b1be1 // indirect
	github.com/google/uuid v1.3.0 // indirect
	github.com/inconshreveable/mousetrap v1.0.1 // indirect
	github.com/jmespath/go-jmespath v0.4.0 // indirect
	github.com/kr/text v0.2.0 // indirect
	github.com/matttproud/golang_protobuf_extensions v1.0.2 // indirect
	github.com/moby/sys/mountinfo v0.6.2 // indirect
	github.com/prometheus/client_golang v1.14.0 // indirect
	github.com/prometheus/client_model v0.3.0 // indirect
	github.com/prometheus/common v0.37.0 // indirect
	github.com/prometheus/procfs v0.8.0 // indirect
	github.com/rogpeppe/go-internal v1.10.0 // indirect
	github.com/spf13/cobra v1.6.0 // indirect
	go.uber.org/atomic v1.7.0 // indirect
	go.uber.org/multierr v1.6.0 // indirect
	go.uber.org/zap v1.19.0 // indirect
	golang.org/x/net v0.10.0 // indirect
	golang.org/x/sys v0.9.0 // indirect
	golang.org/x/text v0.9.0 // indirect
	golang.org/x/tools v0.9.3 // indirect
	google.golang.org/genproto v0.0.0-20220502173005-c8bf987b8c21 // indirect
	gopkg.in/inf.v0 v0.9.1 // indirect
	gopkg.in/yaml.v2 v2.4.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
	k8s.io/utils v0.0.0-20230209194617-a36077c30491 // indirect
)

replace k8s.io/api => k8s.io/api v0.27.3

replace k8s.io/apiextensions-apiserver => k8s.io/apiextensions-apiserver v0.27.3

replace k8s.io/apimachinery => k8s.io/apimachinery v0.27.3

replace k8s.io/apiserver => k8s.io/apiserver v0.27.3

replace k8s.io/cli-runtime => k8s.io/cli-runtime v0.27.3

replace k8s.io/client-go => k8s.io/client-go v0.27.3

replace k8s.io/cloud-provider => k8s.io/cloud-provider v0.27.3

replace k8s.io/cluster-bootstrap => k8s.io/cluster-bootstrap v0.27.3

replace k8s.io/code-generator => k8s.io/code-generator v0.27.3

replace k8s.io/component-base => k8s.io/component-base v0.27.3

replace k8s.io/component-helpers => k8s.io/component-helpers v0.27.3

replace k8s.io/controller-manager => k8s.io/controller-manager v0.27.3

replace k8s.io/cri-api => k8s.io/cri-api v0.27.3

replace k8s.io/csi-translation-lib => k8s.io/csi-translation-lib v0.27.3

replace k8s.io/kube-aggregator => k8s.io/kube-aggregator v0.27.3

replace k8s.io/kube-controller-manager => k8s.io/kube-controller-manager v0.27.3

replace k8s.io/kube-proxy => k8s.io/kube-proxy v0.27.3

replace k8s.io/kube-scheduler => k8s.io/kube-scheduler v0.27.3

replace k8s.io/kubectl => k8s.io/kubectl v0.27.3

replace k8s.io/kubelet => k8s.io/kubelet v0.27.3

replace k8s.io/legacy-cloud-providers => k8s.io/legacy-cloud-providers v0.27.3

replace k8s.io/metrics => k8s.io/metrics v0.27.3

replace k8s.io/mount-utils => k8s.io/mount-utils v0.27.2

replace k8s.io/sample-apiserver => k8s.io/sample-apiserver v0.27.3

replace k8s.io/sample-cli-plugin => k8s.io/sample-cli-plugin v0.27.3

replace k8s.io/sample-controller => k8s.io/sample-controller v0.27.3

replace k8s.io/pod-security-admission => k8s.io/pod-security-admission v0.27.3

replace k8s.io/dynamic-resource-allocation => k8s.io/dynamic-resource-allocation v0.27.3

replace k8s.io/kms => k8s.io/kms v0.27.3
