# appium-android-parallel-exec
## Description:
* This is a sample that allows you to execute Andorid Appium test cases (using cucumber) in parallel on multiple Android devices.
* Running on multiple devices requires starting appium servers at different ports and executing the test cases in parallel using them.
* Cucumber test case sample for the Notes sample app that validates the addition of a new note is created.
* 2 devices configurations including the serial numbers of the devices and specfic ports for appium servers are added in `/cucumber/features/support`
* Profiles are added in `/cucumber/config/cucumber.yml` for executing on the chosen devices.
* Logic in `/cucumber/features/support/env.rb` is added to pick the right configuration for each device.
* A script `runcuke` is added in `/cucumber` that starts 2 appium servers, invokes the cucumber test cases in parallel on the 2 devices.
* The script places the generated reports in `/cucumber/reports/currentDate/currentDateTime_deviceName.html` for each device.

## Getting Started:
* Change the fake serial numbers added in `/cucumber/features/support/deviceName` to the devices that you are connecting
* Execute `./runcuke` from `/cucumber`
* Check the reports in  `/cucumber/reports/currentDate`
* You can add more configurations, modify the logic in `env.rb` and `./runcuke` to make run on more devices.
