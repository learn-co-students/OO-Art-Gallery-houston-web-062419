class Artist

  attr_reader :name, :years_experience

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
  	return Painting.all.select {|p| p.artist == self}
  end

  def galleries
  	paintings.map {|p| p.gallery}
  end

  def cities
  	galleries.map {|p| p.city}
  end

  def self.total_experince
  	all.sum{|a| a.years_experience}
  end

  def self.most_prolific
  	all.min {|a1, a2| a1.years_experience/a1.paintings.size <=> a2.years_experience/a2.paintings.size}
  end

  def create_painting (title, price, gallery)
  	Painting.new(self, gallery, title, price)
  end

end
