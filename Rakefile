require 'rake'
require 'rake/rdoctask'
require 'spec/rake/spectask'

desc 'Default: Run all specs.'
task :default => :spec

desc "Run all specs"
Spec::Rake::SpecTask.new() do |t|
  t.spec_opts = ['--options', "\"spec/support/spec.opts\""]
  t.spec_files = FileList['spec/**/*_spec.rb']
end

desc 'Generate documentation for the mail_magnet gem.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'mail_magnet'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "mail_magnet"
    gemspec.summary = "Override ActionMailer recipients so all mails go to a given address"
    gemspec.email = "github@makandra.com"
    gemspec.homepage = "http://github.com/makandra/mail_magnet"
    gemspec.description = "Override ActionMailer recipients so all mails go to a given address"
    gemspec.authors = ["Arne Hartherz"]
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install jeweler"
end

