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


# + Viewer.all
#   + should return all of the viewers
# + Viewer.find_by_name(name)
#   + given a string of a full name, returns the first customer whose full name matches
# + Viewer#create_rating
#   + given a score and a movie, creates a new Rating and associates it with that viewer and that movie