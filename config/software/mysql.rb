name "mysql"
default_version "5.6.24"

if windows_arch_i386?
  arch_suffix = "win32"
  source md5: "2b7fd9f9b236e1ec1653d3575fc1cd46"
else
  arch_suffix = "winx64"
  source md5: "8d864c8a90c6d7b2ede48a74ac66dbf3"
end

source url: "https://downloads.mysql.com/archives/get/file/mysql-#{version}-#{arch_suffix}.zip"

build do
  copy "mysql-#{version}-#{arch_suffix}", "#{install_dir}/mysql"
end  
