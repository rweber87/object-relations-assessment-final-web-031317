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


# + Movie.all
  # + returns an array of all movies
# + Movie.find_by_title(title)
#   + given a string of movie title, returns the first movie that matches
# + Movie#ratings
#   + returns an array of all ratings for that movie
# + Movie#viewers
#   + should return all of the viewers who have left ratings for that movie.
# + Movie#average_rating
#   + should return the average

