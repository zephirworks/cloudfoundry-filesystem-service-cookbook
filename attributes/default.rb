#
# Cookbook Name:: cloudfoundry-filesystem-service
# Attributes:: default
#
# Copyright 2012, ZephirWorks
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Log level for the filesystem service gateway.
default['cloudfoundry_filesystem_service']['gateway']['log_level'] = "info"

# Time out for talking to a service node.
default['cloudfoundry_filesystem_service']['gateway']['timeout'] = 15

# Time out for completing (de)provisioning requests.
default['cloudfoundry_filesystem_service']['gateway']['node_timeout'] = 10

# The backing store for the filesystem service; can be either `local` or `nfs`.
default['cloudfoundry_filesystem_service']['fs_type'] = 'local'

# An Array with configuration info for the actual backing stores.
default['cloudfoundry_filesystem_service']['backends'] = []
