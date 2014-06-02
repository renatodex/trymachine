# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Trymachine::Application.initialize!

# Dates
Time::DATE_FORMATS[:br] = "%d/%m/%Y"
