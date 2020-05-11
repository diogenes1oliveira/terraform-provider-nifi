#!/bin/sh
set -e

# Build plugin locally
./build.sh

# Register the plugin
cat > ~/.terraformrc <<EOL
providers {
   nifi = "$GOPATH/src/github.com/diogenes1oliveira/terraform-provider-nifi/bin/local/terraform-provider-nifi"
}
EOL
