# Log level for the filesystem service gateway.
default['cloudfoundry_filesystem_service']['gateway']['log_level'] = "info"

# TODO (andreacampi): Find out what this does.
default['cloudfoundry_filesystem_service']['gateway']['timeout'] = 15

# TODO (andreacampi): Find out what this does.
default['cloudfoundry_filesystem_service']['gateway']['node_timeout'] = 10

# Filesystem type.
default['cloudfoundry_filesystem_service']['fs_type'] = 'local'

# Filesystems to export.
default['cloudfoundry_filesystem_service']['backends'] = []
