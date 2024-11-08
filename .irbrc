# frozen_string_literal: true

IRB.conf[:PROMPT_MODE] = :SIMPLE

require 'wirble'
Wirble.init
Wirble.colorize

require './config/environment'
