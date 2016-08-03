require 'drb'
test1=1234
@test2=1234

DRb.start_service 'druby://localhost:9000', binding
puts "Server running at #{DRb.uri}"
DRb.thread.join
