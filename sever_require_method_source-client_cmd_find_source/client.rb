require 'drb'
DRb.start_service
counterObj= DRbObject.new_with_uri  'druby://localhost:9000'
file_str = open(ARGV[0]){ |f| f.read }
puts counterObj.expression_at(file_str, ARGV[1].to_i)
