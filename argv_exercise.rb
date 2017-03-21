file = File.open(ARGV[1], "w")
quiet = File.open(ARGV[0], "r")
loud = quiet.read
file.write(loud.upcase)