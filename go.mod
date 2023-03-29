module sigs.k8s.io/aws-fsx-openzfs-csi-driver

go 1.19

require (
	github.com/aws/aws-sdk-go v1.44.181
	github.com/container-storage-interface/spec v1.7.0
	github.com/golang/mock v1.6.0
	google.golang.org/grpc v1.27.0
	k8s.io/klog/v2 v2.80.1
	k8s.io/mount-utils v0.26.0
)

require (
	github.com/go-logr/logr v1.2.3 // indirect
	github.com/golang/glog v1.0.0 // indirect
	github.com/golang/protobuf v1.3.2 // indirect
	github.com/jmespath/go-jmespath v0.4.0 // indirect
	golang.org/x/net v0.1.0 // indirect
	golang.org/x/sys v0.3.0 // indirect
	golang.org/x/text v0.4.0 // indirect
	google.golang.org/genproto v0.0.0-20190819201941-24fa4b261c55 // indirect
	k8s.io/utils v0.0.0-20221107191617-1a15be271d1d // indirect
)

replace k8s.io/api => k8s.io/api v0.20.2

replace k8s.io/apiextensions-apiserver => k8s.io/apiextensions-apiserver v0.20.2

replace k8s.io/apimachinery => k8s.io/apimachinery v0.21.0-alpha.0

replace k8s.io/apiserver => k8s.io/apiserver v0.20.2

replace k8s.io/cli-runtime => k8s.io/cli-runtime v0.20.2

replace k8s.io/client-go => k8s.io/client-go v0.20.2

replace k8s.io/cloud-provider => k8s.io/cloud-provider v0.20.2

replace k8s.io/cluster-bootstrap => k8s.io/cluster-bootstrap v0.20.2

replace k8s.io/code-generator => k8s.io/code-generator v0.20.5-rc.0

replace k8s.io/component-base => k8s.io/component-base v0.20.2

replace k8s.io/component-helpers => k8s.io/component-helpers v0.20.2

replace k8s.io/controller-manager => k8s.io/controller-manager v0.20.2

replace k8s.io/cri-api => k8s.io/cri-api v0.20.5-rc.0

replace k8s.io/csi-translation-lib => k8s.io/csi-translation-lib v0.20.2

replace k8s.io/kube-aggregator => k8s.io/kube-aggregator v0.20.2

replace k8s.io/kube-controller-manager => k8s.io/kube-controller-manager v0.20.2

replace k8s.io/kube-proxy => k8s.io/kube-proxy v0.20.2

replace k8s.io/kube-scheduler => k8s.io/kube-scheduler v0.20.2

replace k8s.io/kubectl => k8s.io/kubectl v0.20.2

replace k8s.io/kubelet => k8s.io/kubelet v0.20.2

replace k8s.io/legacy-cloud-providers => k8s.io/legacy-cloud-providers v0.20.2

replace k8s.io/metrics => k8s.io/metrics v0.20.2

replace k8s.io/mount-utils => k8s.io/mount-utils v0.20.5-rc.0

replace k8s.io/sample-apiserver => k8s.io/sample-apiserver v0.20.2

replace k8s.io/sample-cli-plugin => k8s.io/sample-cli-plugin v0.20.2

replace k8s.io/sample-controller => k8s.io/sample-controller v0.20.2
