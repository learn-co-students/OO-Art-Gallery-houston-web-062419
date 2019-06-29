class Painting

  attr_accessor :title, :price, :artist, :gallery

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

  def self.total_price #Returns an integer that is the total price of all paintings
    self.all.sum do |k|
      k.price
    end
  end


end
