require_relative '../config/environment.rb'


a1 = Artist.new("Leonardo Da Vinci", 30)
a2 = Artist.new("Rafael", 40)
a2.create_painting("Lady with a Lamb", 300000, "Metropolitan")


g1 = Gallery.new("Luvre", "Paris")

g2 = Gallery.new("Uffizzi", "Florence")


p1 = Painting.new(a1, g1, "Mona Lisa", 1000000)
p3 = Painting.new(a1, g1, "Sketch", 10)
p4 = Painting.new(a1, g1, "Sketch 2", 100)


p2 = Painting.new(a2, g2, "Madonna", 500000)



binding.pry

puts "Bob Ross rules."

