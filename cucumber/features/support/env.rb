require 'rspec/expectations'
require 'appium_lib'
require 'cucumber/ast'

class AppiumWorld
end


if ENV['ADEVICENAME']=='nexus10'
	caps = Appium.load_appium_txt file: File.expand_path("./../nexus10/appium.txt", __FILE__), verbose: true
elsif ENV['ADEVICENAME']=='lgg2'
	caps = Appium.load_appium_txt file: File.expand_path("./../lgg2/appium.txt", __FILE__), verbose: true
else
caps = Appium.load_appium_txt file: File.expand_path('./', __FILE__), verbose: true
end


Appium::Driver.new(caps)
Appium.promote_appium_methods AppiumWorld

World do
  AppiumWorld.new
end

Before { $driver.start_driver }
After { $driver.driver_quit }
