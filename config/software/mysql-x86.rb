name "mysql-x86"

source url: "https://downloads.mysql.com/archives/get/file/mysql-5.6.24-win32.zip",
       md5: '2b7fd9f9b236e1ec1653d3575fc1cd46'

build do
  copy "mysql-#{version}-win32", "#{install_dir}/mysql-x86"
end  
