#!/usr/bin/env ruby
require 'method_source'
require 'drb'
class MethodSourceEnv
  include MethodSource::CodeHelpers
end

DRb.start_service 'druby://localhost:9000', MethodSourceEnv.new
puts "Server running at #{DRb.uri}"
DRb.thread.join
