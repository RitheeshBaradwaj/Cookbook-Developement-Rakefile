# frozen_string_literal: true

# Policyfile.rb - Describe how you want Chef Infra Client to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile.html

# A name that describes what the system you're building with Chef does.
name 'myDevOpsProject'

# Where to find external cookbooks:
default_source :supermarket

# run_list: chef-client will run these recipes in the order specified.
run_list 'myDevOpsProject::default'

# Specify a custom source for a single cookbook:
cookbook 'myDevOpsProject', path: '.'

# Policy defined attributes
default['myDevOpsProject'] = {
  'webserver': {
    "conf_path": '/etc/nginx/nginx.conf',
    "index_path": '/var/www/html/index.html',
    },
}
