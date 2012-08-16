# Log level for the filesystem service gateway.
default['cloudfoundry_filesystem_service']['gateway']['log_level'] = "info"

# Where to write the filesystem service gateway's logs.
default['cloudfoundry_filesystem_service']['gateway']['log_file'] = File.join(node['cloudfoundry_common']['log_dir'], "filesystem_gateway.log")

# Base directory for instance-specific data.
default['cloudfoundry_filesystem_service']['gateway']['base_dir'] = File.join(node['cloudfoundry_common']['services_dir'], "filesystem_gateway")

# Where to write the filesystem service gateway's pid.
default['cloudfoundry_filesystem_service']['gateway']['pid_file'] = File.join(node['cloudfoundry_common']['pid_dir'], "filesystem_gateway.pid")

# TODO (andreacampi): Find out what this does.
default['cloudfoundry_filesystem_service']['gateway']['timeout'] = 15

# Filesystem type.
default['cloudfoundry_filesystem_service']['fs_type'] = 'local'

# Filesystems to export.
default['cloudfoundry_filesystem_service']['backends'] = []
