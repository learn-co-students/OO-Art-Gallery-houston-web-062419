class Gallery

  attr_accessor :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings #Returns an array of all paintings in a gallery
    Painting.all.select do |painting|
      painting.gallery == self
    end
  end

  def artists 
    #Returns an array of all the galleries that an artist has paintings in
    #Returns an array of all artists that have a painting in a gallery

    paintings.map do |painting|
      painting.artist
    end

  end

  def artist_name #Returns an array of the names of all artists that have a painting in a gallery
    artists.map do |name|
      name.name
    end

  end

  def most_expensive_paintings #Returns an instance of the most expensive painting in a gallery
    paintings.max do |painting|
      painting.price
    end

  end

end
