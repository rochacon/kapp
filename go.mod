module github.com/k14s/kapp

go 1.13

require (
	github.com/aryann/difflib v0.0.0-20200108171459-b101e55e0592
	github.com/aws/aws-lambda-go v1.9.0
	github.com/cppforlife/cobrautil v0.0.0-20200108171912-b289811fd2b9
	github.com/cppforlife/go-cli-ui v0.0.0-20200108172221-38b12a2f8675
	github.com/cppforlife/go-patch v0.2.0
	github.com/fatih/color v1.7.0
	github.com/ghodss/yaml v1.0.0
	github.com/inconshreveable/mousetrap v1.0.0 // indirect
	github.com/k14s/kapp-controller v0.1.0
	github.com/kr/pty v1.1.8 // indirect
	github.com/mattn/go-colorable v0.1.4 // indirect
	github.com/mattn/go-isatty v0.0.12 // indirect
	github.com/mitchellh/go-wordwrap v1.0.0
	github.com/spf13/cobra v0.0.3
	github.com/spf13/pflag v1.0.5
	github.com/vito/go-interact v1.0.0 // indirect
	gopkg.in/yaml.v2 v2.2.4
	k8s.io/api v0.15.9
	k8s.io/apimachinery v0.15.9
	k8s.io/client-go v0.15.9
)

replace github.com/aryann/difflib => github.com/k14s/difflib v0.0.0-20200108171459-b101e55e0592
