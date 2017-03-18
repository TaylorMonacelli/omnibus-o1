name "apache"
default_version "2.4.25"

case version
when "2.4.25"
  vc = "VC14"
end

if windows_arch_i386?
  arch_suffix = "win32" 
  source md5: "259c62962f45b2c1d7fd0ea2b3293760"
else
  arch_suffix = "win64"
  source md5: "eb6642b253fcf04d288c0f518f131acd"
end

source url: "http://installer-bin.streambox.com.s3.amazonaws.com/httpd-#{version}-#{arch_suffix}-#{vc}.zip"

build do
  delete "Apache24/logs/install.log"
  delete "Apache24/lib"
  delete "Apache24/*.txt"
  delete "Apache24/include"
  delete "Apache24/bin/iconv"
  delete "Apache24/icons"
  delete "Apache24/error"
  delete "Apache24/cgi-bin"
  delete "Apache24/manual"
  copy "Apache24", "#{install_dir}/apache"
end
