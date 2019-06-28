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
    Painting.all.select do |painting|
      painting.gallery == self
    end
  end

  def artists
    paintings.map do |p|
      p.artist
    end
  end

  def artist_names
    self.paintings.map do |name|
      name.gallery
    end
  end

  def most_expensive_painting
    paintings.max {|p1, p2| p1.price <=> p2.price}
  end

end