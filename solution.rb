# Please copy/paste all three classes into this file to submit your solution!
class Movie
  attr_accessor :title

  ALL = []

  def self.all
  	ALL 	
  end

  def self.find_by_title(title)
  	self.all.find {|movie| movie.title == title}
  end

  def initialize(title)
    @title = title
    ALL << self
  end

  def ratings
  	rating_array = []
  	
  	Rating.all.each do |rating|
  		if rating.movie == self.title
  			rating_array << rating
  		end
  	end
  	rating_array
  end

  def viewers
  	self.ratings.collect {|rating| rating.viewer}
  end

  def average_rating
  	total_ratings = self.ratings.collect {|rating| rating.score}
  	total_ratings.inject {|sum, rating| sum + rating}.to_f / total_ratings.length
  end

end


class Rating
  attr_accessor :score, :viewer, :movie

  ALL = []

  def self.all
  	ALL
  end

  def initialize(viewer, movie, score)
  	@viewer = viewer
  	@movie = movie
  	@score = score
  	ALL << self
  end
  


end


 class Viewer
  attr_accessor :first_name, :last_name

  ALL = []

  def self.all
  	ALL
  end

  def self.find_by_name(full_name)
  	self.all.find {|viewer| viewer.full_name == full_name}
  end

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    ALL << self
  end

  def full_name
  	first_name = self.first_name
  	last_name = self.last_name

    "#{first_name} #{last_name}"
  end

  def create_rating(movie, score)
  	new_rating = Rating.new(self, movie, score)
  	new_rating
  end
  
end