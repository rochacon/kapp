package app

import (
	"github.com/spf13/cobra"
	"k8s.io/apimachinery/pkg/runtime/schema"
)

type ResourceTypesFlags struct {
	IgnoreFailingAPIServices bool
	CanIgnoreFailingAPIService func(schema.GroupVersion) bool
}

func (s *ResourceTypesFlags) Set(cmd *cobra.Command) {
	cmd.Flags().BoolVar(&s.IgnoreFailingAPIServices, "dangerous-ignore-failing-api-services",
		false, "Allow to ignore failing APIServices")
}

func (s *ResourceTypesFlags) AttachCanIgnoreFailingAPIService(rs []ctlres.Resource) {
	s.CanIgnoreFailingAPIService = func(groupVer schema.GroupVersion) bool {
		groupVerStr := groupVer.String()
		for _, res := range rs {
			if res.APIVersion() == groupVerStr {
				return false
			}
		}
		return true
	}
}
