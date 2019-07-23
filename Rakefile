
# Setup common environment variables for test device setup
def setup
  ENV["IOS_SIMULATOR"]      = ENV["IOS_SIMULATOR"]      || "iPhone 7"
  ENV["IOS_VERSION"]        = ENV["IOS_VERSION"]        || "12.2"
  ENV["DERIVED_DATA_PATH"]  = ENV["DERIVED_DATA_PATH"]  || "~/Library/Developer/Xcode/DerivedData"
end

desc "Build the app for testing"
task :build_for_testing do |t|
  # Building for the minimum supported OS version
  SIMULATOR_NAME = "platform=iOS Simulator,name=iPhone 7,OS=11.4"

  sh "xcodebuild build-for-testing \
  -scheme Hello_World \
  -sdk iphonesimulator \
  -destination \"#{SIMULATOR_NAME}\" \
  -derivedDataPath #{ENV['DERIVED_DATA_PATH']} \
  | xcpretty"
end

desc "Run all unit tests"
task :unit_tests do |t|
  setup
  SIMULATOR_NAME = "platform=iOS Simulator,name=#{ENV["IOS_SIMULATOR"]},OS=#{ENV["IOS_VERSION"]}"

  sh "xcodebuild test-without-building \
  -scheme Hello_World \
  -sdk iphonesimulator \
  -destination \"#{SIMULATOR_NAME}\" \
  -derivedDataPath #{ENV['DERIVED_DATA_PATH']} \
  | xcpretty"
end
