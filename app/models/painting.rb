class Painting

  attr_reader :title, :price
  attr_accessor :artist, :gallery

  @@all = []

  def initialize(artist, gallery, title, price)
    @artist = artist
    @gallery = gallery
    @title = title
    @price = price
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    self.all.sum do |p|
      p.price.to_i
    end
  end

end
