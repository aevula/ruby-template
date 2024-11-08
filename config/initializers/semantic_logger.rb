# frozen_string_literal: true

require 'semantic_logger'

SemanticLogger.default_level = Application.config.log_level

SemanticLogger.sync! if Application.config.log_sync

application_appender = if Application.config.log_to_stdout
                         SemanticLogger.add_appender(io: $stdout, formatter: :color)
                       else
                         SemanticLogger.add_appender(file_name: Application.config.log_file_name, formatter: :color)
                       end

Application.config.logger = application_appender
