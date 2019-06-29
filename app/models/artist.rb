class Artist

  attr_accessor :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end


  def galleries
    # Gallery.all.select do |artist|
    #   gallery.artist == self
    # end
    paintings.map do |painting|
        painting.gallery
    end

  end

  def cities  #Return an array of all cities that an artist has paintings in
    galleries.map do |gallery|
        gallery.city
    end

  end

  def self.total_experience #Returns an integer that is the total years of experience of all artists
    self.all.sum do |k|
      k.years_experience
    end
  end

  def self.most_prolific #Returns an instance of the artist with the highest amount of paintings per year of experience.
    self.all.max_by do |artist|
      artist.paintings.length / artist.years_experience
    end
  end
  
  def create_painting(title, price, gallery) #Given the arguments of title, price and gallery, creates a new painting belonging to that artist
    # Painting.new("Purple Meadows", 1800, "MOMA")
    Painting.new(self, gallery, title, price)

  end

end
