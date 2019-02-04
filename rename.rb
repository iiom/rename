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

