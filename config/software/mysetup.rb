name "oo1"
default_version "0.0.1"
source url: 'http://installer-bin.streambox.com.s3.amazonaws.com/httpd-2.4.25-win32-VC14.zip',
       md5: '259c62962f45b2c1d7fd0ea2b3293760'

if windows?
  build do
    command "echo FART #{project.resources_path}, #{install_dir}/file.txt"
    block do
      out_file = File.new("#{install_dir}/file.txt", "w")
      out_file.puts("This is a test file.")
      out_file.close
    end
  end
end
