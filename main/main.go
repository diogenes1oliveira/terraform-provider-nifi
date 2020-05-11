package main

import (
	"github.com/diogenes1oliveira/terraform-provider-nifi"
	"github.com/hashicorp/terraform/plugin"
)

func main() {
	plugin.Serve(&plugin.ServeOpts{
		ProviderFunc: nifi.Provider,
	})
}
