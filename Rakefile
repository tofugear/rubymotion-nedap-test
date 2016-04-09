# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

load 'build_setting.rb'

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'nedap_framework_test'
  app.short_version = '0.0.1'
  app.version = '1'
  app.identifier = BuildSetting[:identifier]
  app.deployment_target = '8.0'

  app.xcode_dir=BuildSetting[:xcode_path] unless BuildSetting[:xcode_path].nil?

  app.frameworks += ['AVFoundation']
  app.frameworks += ['ExternalAccessory']
  app.frameworks += ['CoreBluetooth']
  app.libs << '/usr/lib/libz.dylib'
  app.info_plist['UISupportedExternalAccessoryProtocols'] = ['com.nedap.retail.idreader']


  if app.build_mode == :release || Rake.application.top_level_tasks.first == 'device'
    app.embedded_frameworks += ['vendor/iphoneos/NedapIdReader.framework']
  else
    app.embedded_frameworks += ['vendor/iphonesimulator/NedapIdReader.framework']
  end

  env = :development


  app.development do
    app.entitlements['get-task-allow'] = true

  end
  app.release do
    app.entitlements['get-task-allow'] = false
    if ENV['staging'] == "true"
      env = :staging
    else
      env = :production
    end
  end

  app.codesign_certificate =  BuildSetting[env][:codesign_certificate]
  app.provisioning_profile  = BuildSetting[env][:provisioning_profile]
end


task :set_staging do
  ENV['staging'] = "true"
end

desc "Release Enterprise build"
task :staging => [
        :set_staging,
        "archive:distribution",
    ]