#
# Cookbook Name:: cloudfoundry-filesystem-service
# Recipe:: default
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

include_recipe "cloudfoundry-filesystem-service::default"

install_path = File.join(node['cloudfoundry_common']['vcap_services']['install_path'], "filesystem")

cloudfoundry_common_source "filesystem" do
  path          install_path
  repository    node['cloudfoundry_common']['vcap_services']['repo']
  reference     node['cloudfoundry_common']['vcap_services']['reference']
  subdirectory  "filesystem"
end

cloudfoundry_common_component "filesystem_gateway" do
  install_path  File.join(install_path, "filesystem")
  bin_file      File.join(install_path, "filesystem", "bin", "filesystem_gateway")
  pid_file      node['cloudfoundry_filesystem_service']['gateway']['pid_file']
  log_file      node['cloudfoundry_filesystem_service']['gateway']['log_file']
  action        [:create, :enable]
  subscribes    :restart, resources("cloudfoundry-common_source" => "filesystem")
end
