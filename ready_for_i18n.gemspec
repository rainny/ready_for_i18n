# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{ready_for_i18n}
  s.version = "0.2.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["zigzag"]
  s.date = %q{2009-12-21}
  s.default_executable = %q{ready_for_i18n}
  s.description = %q{      ready_for_i18n will help you extract visible hard-coded text from your ERB view files,
      then choose a proper key and replace them with the I18n.translate method like t(:login)
}
  s.email = %q{zigzag.chen@gmail.com}
  s.executables = ["ready_for_i18n"]
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "bin/ready_for_i18n",
     "lib/base_extractor.rb",
     "lib/erb_helper_extractor.rb",
     "lib/html_attr_extractor.rb",
     "lib/html_text_extractor.rb",
     "lib/i18n_generator.rb",
     "lib/locale_dictionary.rb",
     "lib/ready_for_i18n.rb",
     "ready_for_i18n.gemspec",
     "test/fixtures/html_attr.html.erb",
     "test/fixtures/index.html.erb",
     "test/helper.rb",
     "test/output/en.yml",
     "test/output/label.html.erb",
     "test/output/text.html.erb",
     "test/test_base_extractor.rb",
     "test/test_erb_helper_extractor.rb",
     "test/test_html_attr_extractor.rb",
     "test/test_html_text_extractor.rb",
     "test/test_locale_dictionary.rb"
  ]
  s.homepage = %q{http://github.com/zigzag/ready_for_i18n}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{ready_for_i18n is a tool helping for the very first step of transfering your local Rails project to an i18n one.}
  s.test_files = [
    "test/helper.rb",
     "test/test_base_extractor.rb",
     "test/test_erb_helper_extractor.rb",
     "test/test_html_attr_extractor.rb",
     "test/test_html_text_extractor.rb",
     "test/test_locale_dictionary.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<thoughtbot-shoulda>, [">= 0"])
    else
      s.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
    end
  else
    s.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
  end
end

