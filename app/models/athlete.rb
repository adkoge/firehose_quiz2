class Athlete < ActiveRecord::Base
	validates :person, :presence => true, :length =>
	{ :maximum => 160, :minimum => 3 }
	validates :sport, :presence => true, :length =>
	{ :maximum => 60, :minimum => 3}
end
