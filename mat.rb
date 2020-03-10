

location1 = 'Via Valle Verzasca, 6596 Gordola, Schweiz'

location2 = 'Davit Aghmashenebeli Avenue 166, 0112 Tbilissi'

# match_data = location1.match(/^(\w+),(\w+)$/)

street = location1.split(",").first.strip
city = location1.split(",")[1].split(" ")[0].strip
code = location1.split(",")[1].split(" ")[1].strip



puts "Street: #{street}"
puts "City: #{code}"
puts "Code: #{city}"
