
# Setup common environment variables for test device setup
def setup_test_device
  ENV["IOS_SIMULATOR"] = ENV["IOS_SIMULATOR"] || "iPhone 7"
  ENV["IOS_VERSION"]   = ENV["IOS_VERSION"]   || "12.2"
end

desc "Build the app for testing"
task :build_for_testing do |t|
  setup_test_device
  SIMULATOR_NAME = "platform=iOS Simulator,name=#{ENV["IOS_SIMULATOR"]},OS=#{ENV["IOS_VERSION"]}"

  sh "xcodebuild build-for-testing \
  -scheme Hello_World \
  -sdk iphonesimulator \
  -destination \"#{SIMULATOR_NAME}\" \
  | xcpretty"
end

desc "Run all unit tests"
task :unit_tests do |t|
  setup_test_device
  SIMULATOR_NAME = "platform=iOS Simulator,name=#{ENV["IOS_SIMULATOR"]},OS=#{ENV["IOS_VERSION"]}"

  sh "xcodebuild test-without-building \
  -scheme Hello_World \
  -sdk iphonesimulator \
  -destination \"#{SIMULATOR_NAME}\" \
  | xcpretty" 
end
