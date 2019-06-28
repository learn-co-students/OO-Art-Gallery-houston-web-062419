require 'pry'
require_relative '../app/models/artist.rb'
require_relative '../app/models/gallery.rb'
require_relative '../app/models/painting.rb'

a1 = Artist.new('Picasso', 91)
a2 = Artist.new('Monet', 86)


g1 = Gallery.new('LACMA', 'Los Angeles')
g2 = Gallery.new('Getty', 'Los Angeles')


p1 = Painting.new(a1, g1, 'Le Reve', '167 mil')
p2 = Painting.new(a1, g2, 'Les Noces de Pierette', '100 mil')
p3 = Painting.new(a2, g1, 'Meule', '85 mil')

binding.pry
0