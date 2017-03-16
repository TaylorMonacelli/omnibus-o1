name "dirmonitor"
default_version "0.0.1"

source url: "http://www.rhyous.com/wp-content/uploads/2012/11/DirectoryMonitoring.zip",
       md5: "2d8a653697e95a4c74fb1a1324fb64f1"

relative_path "DirectoryMonitoring"

build do
  command "msbuild DirectoryMonitoring.sln"
  copy "DirectoryMonitoring/bin/Debug/DirectoryMonitoring.exe", "#{install_dir}/bin"
end
