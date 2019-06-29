require 'pry'
require_relative '../app/models/artist.rb'
require_relative '../app/models/gallery.rb'
require_relative '../app/models/painting.rb'


a1 = Artist.new("Hanky Sparts", 6)
a2 = Artist.new("Janique Cole", 3)

g1 = Gallery.new("MOMA", "New York")
g2 = Gallery.new("MOMO", "Venice")

p1 = Painting.new(a1, g1, "Green Meadows", 1200)
p2 = Painting.new(a2, g2, "Blue Sparrows", 1000)
p3 = Painting.new(a1, g2, "Hunter Meadows", 1300)
p4 = Painting.new(a2, g1, "Green Sparrows", 1100)
p5 = Painting.new(a1, g1, "Blue Meadows", 1220)

binding.pry
0