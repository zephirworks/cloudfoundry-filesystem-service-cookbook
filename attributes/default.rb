# Log level for the filesystem service gateway.
default['cloudfoundry_filesystem_service']['gateway']['log_level'] = "info"

# Base directory for instance-specific data.
default['cloudfoundry_filesystem_service']['gateway']['base_dir'] = File.join(node['cloudfoundry']['services_dir'], "filesystem_gateway")

# TODO (andreacampi): Find out what this does.
default['cloudfoundry_filesystem_service']['gateway']['timeout'] = 15

# TODO (andreacampi): Find out what this does.
default['cloudfoundry_filesystem_service']['gateway']['node_timeout'] = 10

# Filesystem type.
default['cloudfoundry_filesystem_service']['fs_type'] = 'local'

# Filesystems to export.
default['cloudfoundry_filesystem_service']['backends'] = []
