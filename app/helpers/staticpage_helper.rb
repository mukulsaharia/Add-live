module StaticpageHelper
	
	def ppt_path(file)
  		File.join('/download', file).to_s
	end
end
