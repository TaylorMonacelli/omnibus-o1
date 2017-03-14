name "apache"
default_version "2.4.25"

case version
when "2.4.25"
  vc = "VC14"
end

source url: "http://installer-bin.streambox.com.s3.amazonaws.com/httpd-#{version}-#{platform}-#{vc}.zip"

if windows_arch_i386? 
  platform = "win32" 
  source md5: "259c62962f45b2c1d7fd0ea2b3293760"
else
  platform = "win64"
  source md5: "eb6642b253fcf04d288c0f518f131acd"
end

build do
  copy "Apache24", "#{install_dir}/apache"
end
