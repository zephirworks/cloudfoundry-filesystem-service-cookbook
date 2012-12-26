#
# Cookbook Name:: cloudfoundry-filesystem-service
# Recipe:: gateway
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

#
# Install the correct rbenv
#
node.default['cloudfoundry_mongodb_service']['gateway']['ruby_version'] = node['cloudfoundry']['ruby_1_9_2_version']
ruby_ver = node['cloudfoundry_mongodb_service']['gateway']['ruby_version']
ruby_path = ruby_bin_path(ruby_ver)

include_recipe "rbenv::default"
include_recipe "rbenv::ruby_build"

rbenv_ruby ruby_ver

%w[libcurl4-openssl-dev sqlite3 libsqlite3-ruby libsqlite3-dev].each do |p|
  package p
end

cloudfoundry_service_component "filesystem_gateway" do
  service_name  "filesystem"
  action        [:create, :enable]
end
