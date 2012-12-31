name             "cloudfoundry-filesystem-service"
maintainer       "ZephirWorks"
maintainer_email "andrea.campi@zephirworks.com"
license          "Apache 2.0"
description      "Installs/Configures cloudfoundry-filesystem-service"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "1.0.1"

%w( ubuntu ).each do |os|
  supports os
end

%w( cloudfoundry cloudfoundry_service rbenv ).each do |cb|
  depends cb
end
