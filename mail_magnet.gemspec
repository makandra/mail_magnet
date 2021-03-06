# Generated by jeweler
# DO NOT EDIT THIS FILE
# Instead, edit Jeweler::Tasks in Rakefile, and run `rake gemspec`
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{mail_magnet}
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Arne Hartherz"]
  s.date = %q{2010-09-16}
  s.description = %q{Override ActionMailer recipients so all mails go to a given address}
  s.email = %q{github@makandra.com}
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    ".gitignore",
     "MIT-LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "lib/mail_magnet.rb",
     "lib/mail_magnet/action_mailer_ext.rb",
     "lib/mail_magnet/tmail_ext.rb",
     "mail_magnet.gemspec",
     "spec/app_root/app/controllers/application_controller.rb",
     "spec/app_root/app/models/mailer.rb",
     "spec/app_root/app/views/mailer/html_letter.erb",
     "spec/app_root/app/views/mailer/letter.erb",
     "spec/app_root/config/boot.rb",
     "spec/app_root/config/database.yml",
     "spec/app_root/config/environment.rb",
     "spec/app_root/config/environments/in_memory.rb",
     "spec/app_root/config/environments/mysql.rb",
     "spec/app_root/config/environments/postgresql.rb",
     "spec/app_root/config/environments/sqlite.rb",
     "spec/app_root/config/environments/sqlite3.rb",
     "spec/app_root/config/routes.rb",
     "spec/app_root/lib/console_with_fixtures.rb",
     "spec/app_root/log/.gitignore",
     "spec/app_root/script/console",
     "spec/mail_magnet_spec.rb",
     "spec/spec_helper.rb",
     "spec/support/rcov.opts",
     "spec/support/spec.opts"
  ]
  s.homepage = %q{http://github.com/makandra/mail_magnet}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Override ActionMailer recipients so all mails go to a given address}
  s.test_files = [
    "spec/app_root/app/controllers/application_controller.rb",
     "spec/app_root/app/models/mailer.rb",
     "spec/app_root/config/boot.rb",
     "spec/app_root/config/environment.rb",
     "spec/app_root/config/environments/in_memory.rb",
     "spec/app_root/config/environments/mysql.rb",
     "spec/app_root/config/environments/postgresql.rb",
     "spec/app_root/config/environments/sqlite.rb",
     "spec/app_root/config/environments/sqlite3.rb",
     "spec/app_root/config/routes.rb",
     "spec/app_root/lib/console_with_fixtures.rb",
     "spec/spec_helper.rb",
     "spec/mail_magnet_spec.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
