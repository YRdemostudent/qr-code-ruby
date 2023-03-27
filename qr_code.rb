require "rqrcode"
network_name = gets.chomp
  puts

  puts "What is the password?"
  puts

  network_password = gets.chomp
  puts

  text_to_encode = "WIFI:T:WPA;S:#{network_name};P:#{network_password};;"

qrcode= RQRCode::QRCode.new("https://en.wikipedia.org/wiki/QR_code")
png = qrcode.as_png({:size => 500})

IO.binwrite("sometext.png", png.to_s)
