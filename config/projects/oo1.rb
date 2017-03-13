#
# Copyright 2017 YOUR NAME
#
# All Rights Reserved.
#

name "oo1"
maintainer "CHANGE ME"
homepage "https://CHANGE-ME.com"

# Defaults to C:/oo1 on Windows
# and /opt/oo1 on all other platforms
install_dir "#{default_root}/#{name}"

build_version Omnibus::BuildVersion.semver
build_iteration 5

# Creates required build directories
dependency "preparation"

# Version manifest file
dependency "version-manifest"

# oo1 dependencies/components
# dependency "somedep"
dependency "apache"
dependency "mysql-x86"
dependency "mysql"

exclude "**/.git"
exclude "**/bundler/git"

package :msi do
    upgrade_code 'A3C83F57-6D8F-453A-9559-0D650A95EB21'
end
