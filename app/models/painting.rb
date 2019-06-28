class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(artist, gallery, title, price)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery

    @@all << self
  end

  def self.all
  	@@all
  end

  def self.total_price
  	self.all.sum {|p| p.price}
  end

end
