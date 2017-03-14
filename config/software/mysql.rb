name "mysql"
default_version "5.6.24"

source url: "https://downloads.mysql.com/archives/get/file/mysql-#{version}-winx64.zip",
       md5: "8d864c8a90c6d7b2ede48a74ac66dbf3"

build do
  copy "mysql-#{version}-winx64", "#{install_dir}/mysql"
end
