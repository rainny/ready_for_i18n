require 'helper'

class TestExtractor

  def excute(src_path,target_path,locale,extension)
    ext = extension || '.html.erb'
    dict = ReadyForI18N::LocaleDictionary.new(locale)
    Dir.glob(File.join(src_path,"**#{File::SEPARATOR}*#{ext}")).each do |f|
      full_target_path = File.dirname(f).gsub(src_path,target_path)
      FileUtils.makedirs full_target_path
      target_file = File.join(full_target_path,File.basename(f))
      ReadyForI18N::LabelExtractor.new(f,target_file).extract{|k,v| dict[k] = v}
      ReadyForI18N::TextExtractor.new(target_file,target_file).extract{|k,v| dict[k] = v}
      puts "i18n ready: #{target_file}"
    end
    locale_file = dict.write_to target_path
    puts "------------------------------------------------------------------------------"
    puts "Locale file: #{locale_file}"
  end
end

src = 'E:/Ruby/sonar/sonar-web/src/main/webapp/WEB-INF/app/views'
target = 'E:/Ruby/temp'

TestExtractor.new.excute(src, target, nil, nil)