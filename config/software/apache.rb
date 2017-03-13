name "apache"
default_version "2.4.25"

license "MIT"
# license_file "LICENSE"
skip_transitive_dependency_licensing true

version "2.4.25" do
  source url: "http://installer-bin.streambox.com.s3.amazonaws.com/httpd-#{version}-win32-VC14.zip",
         md5: '259c62962f45b2c1d7fd0ea2b3293760'
end

build do
  copy 'Apache24', "#{install_dir}/apache"
end

