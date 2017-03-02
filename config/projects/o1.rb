#
# Copyright 2017 YOUR NAME
#
# All Rights Reserved.
#

name "o1"
maintainer "CHANGE ME"
homepage "https://CHANGE-ME.com"

# Defaults to C:/o1 on Windows
# and /opt/o1 on all other platforms
install_dir "#{default_root}/#{name}"

build_version Omnibus::BuildVersion.semver
build_iteration 1

# Creates required build directories
dependency "preparation"

# o1 dependencies/components
# dependency "somedep"
dependency "mysetup"

# Version manifest file
dependency "version-manifest"

exclude "**/.git"
exclude "**/bundler/git"

package :msi do
	upgrade_code 'A3C83F57-6D8F-453A-9559-0D650A95EB21'
end
