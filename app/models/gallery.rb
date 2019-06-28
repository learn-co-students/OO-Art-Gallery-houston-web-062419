class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
  	@@all
  end

  def paintings
  	return Painting.all.select {|p| p.gallery == self}
  end

  def artists
  	paintings.map {|p| p.artist}
  end

 def artist_names
  	paintings.map {|p| p.artist.name}
  end

  def most_expensive_painting
  	paintings.max {|p1, p2| p1.price <=> p2.price}
  end

end
