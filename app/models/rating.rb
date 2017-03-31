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


# + Rating.all
#   + returns all of the ratings
# + Rating#viewer
#   + returns the viewer for that given rating
# + Rating#movie
#   + returns the movie for that given rating