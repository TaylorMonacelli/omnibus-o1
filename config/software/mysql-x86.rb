name "mysql-x86"
default_version "5.6.24"

license "MIT"
# license_file "LICENSE"
skip_transitive_dependency_licensing true

version "5.6.24" do
  source url: "https://downloads.mysql.com/archives/get/file/mysql-#{version}-win32.zip",
         md5: '2b7fd9f9b236e1ec1653d3575fc1cd46'
end

build do
  copy "mysql-#{version}-win32", "#{install_dir}/mysql-x86"
end  