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
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def galleries
    self.paintings.map do |painting|
      painting.gallery
    end
  end

  def cities
    self.galleries.map do |gallery|
      gallery.city
    end.uniq
  end

  def self.total_experience
    all.sum do |num|
      num.years_experience
    end
  end

  def self.most_prolific
    all.max do |a1, a2| 
    a1.paintings.size / a1.years_experience <=> a2.paintings.size / a2.years_experience
    end
  end

  def create_painting(title, price, gallery)
    Painting.new(self, title, price, gallery)
  end

end
