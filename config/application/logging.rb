# frozen_string_literal: true

module Application
  config.log_level = ENV.fetch('LOG_LEVEL', :debug).to_sym

  config.log_to_file = !ENV.fetch('LOG_TO_FILE', nil).nil?
  config.log_file_name = ENV.fetch('LOG_TO', config.log_to_file ? "log/#{config.app_env}.log" : nil)
  config.log_to_stdout = ENV.fetch('LOG_TO_STDOUT', config.log_file_name.nil?)

  config.log_sync = ENV.fetch('LOG_SYNC', false)
end
