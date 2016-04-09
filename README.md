# Setup

- Make sure you have ruby version 2.2.1 installed
- Download RubyMotion (it's free) - http://www.rubymotion.com/download/
- Follow installation instructions after downloading
- Change the identifier information in build_setting.rb if needed.
- You do not need to change the certificate and profile if testing on simulator only. Otherwise, please update the codesign certificate and provisioning paths in file build_setting.rb (development: device test, release: app store, staging: adhoc or enterprise)
- Once above completed cd into the project path with terminal and run "bundle install"
- Connect an iOS device, either iPhone or iPod
- run "rake device" in terminal to build project on the device
- You will see the error in the compilation process and will not be able to complete the build.

## commands

```
rake clean # clear builds, better run this before compile

rake                           # run in simulator
rake device_name = 'iPhone 5s' # run in different simulator
rake device                    # run in device, make sure you have connected the testing device to the mac and the profile is correct

rake staging # adhoc or enterprise
rake archive:distribution # app store
```