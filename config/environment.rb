# Load the Rails application.
require File.expand_path('../application', __FILE__)

APP_CONFIG = YAML.load(File.open(File.dirname(__FILE__) + "/app_config.yml", "r").read)

# Initialize the Rails application.
TwitterGemApp::Application.initialize!


client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "YOUR_CONSUMER_KEY"
  config.consumer_secret     = "YOUR_CONSUMER_SECRET"
  config.access_token        = "YOUR_ACCESS_TOKEN"
  config.access_token_secret = "YOUR_ACCESS_SECRET"
end