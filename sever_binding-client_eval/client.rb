require 'drb'
DRb.start_service
counterObj= DRbObject.new_with_uri  'druby://localhost:9000'
puts counterObj.eval("@test2")
