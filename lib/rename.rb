require 'fileutils'

current_path = File.dirname(__FILE__)
file_in_dir = Dir.entries(current_path)
file_in_dir.shift(2)

file_in_dir.each do |f|
  if File.extname(f) == ".sample"
    FileUtils.cp(f, File.basename(f, ".sample") + "-copy" + File.extname(f))
    File.rename(File.basename(f), File.basename(f, ".*"))
  end
end



# basename
# Если вы имеете дело с файлами, вы можете использовать basename
# File.basename("/home/gumby/work/ruby.rb")   #=> "ruby.rb"
# File.basename("/home/gumby/work/ruby.rb", ".rb") #=> "ruby"
#
# В противном случае, если это просто строка:
# 'C:/EFI/Ulta/Filename.rb'.split('/').last.split('.').first
#
# File.basename(file, '.*')[0,3] обрезает имя файла до 3х символов
#
# extname
# Returns the extension (the portion of file name in path after the period).
# File.extname("test.rb")         #=> ".rb"
# File.extname("a/b/d/test.rb")   #=> ".rb"
# File.extname("test")            #=> ""
# File.extname(".profile")        #=> ""
#
#