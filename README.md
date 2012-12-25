Description
===========

Install a Cloud Foundry filesystem service gateway, an optional component of a
[Cloud Foundry](http://www.cloudfoundry.org) installation.

Requirements
============

Cookbooks
---------

* cloudfoundry
* cloudfoundry\_service
* rbenv

Platform
--------

* Ubuntu

Tested on:

* Ubuntu 10.04
* Ubuntu 12.04

Attributes
==========

`node['cloudfoundry_filesystem_service']['gateway']['log_level']` - Log level for
the service gateway daemon. Defaults to `info`.
`node['cloudfoundry_filesystem_service']['gateway']['node_timeout']` - Time out
for talking to a service node. Defaults to `30`.
`node['cloudfoundry_filesystem_service']['gateway']['timeout']` - Time out for
completing (de)provisioning requests. Defaults to `15`.
`node['cloudfoundry_filesystem_service']['gateway']['version_aliases']` -
Human-readable aliases for MongoDB versions.
`node['cloudfoundry_filesystem_service']['fs_type']` - The backing store for
the filesystem service; can be either `local` or `nfs`. Defaults to `local`.
`node['cloudfoundry_filesystem_service']['backends']` - An Array with
configuration info for the actual backing stores.

Usage
=====

You need exactly one filesystem service gateway, ideally deployed to the same
node as the `cloud_controller`:

    run_list: "recipe[cloudfoundry_filesystem_service::gateway]"

The service gateway only handles the creation of a service instance and its
binding to the application; the configured backing store must already exist
and be available in all the DEAs.

License and Author
==================

Author:: Andrea Campi (<andrea.campi@zephirworks.om.com>)

Copyright:: 2012 ZephirWorks

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
