include_recipe "cloudfoundry::user"
include_recipe "nats::server"

node.set['postgresql']['password']['postgres'] = 'test-password'
node.set['cloudfoundry_cloud_controller']['server']['api_uri'] = 'http://10.0.2.15:9022/'
node.set['cloudfoundry_cloud_controller']['server']['services'] = [
  'filesystem'
]

include_recipe "postgresql::server"
include_recipe "cloudfoundry-cloud_controller::database"
include_recipe "cloudfoundry-cloud_controller::server"

node.set['cloudfoundry_filesystem_service']['backends'] = ['/tmp']
