class AthletesController < ApplicationController
	def index
		@athlete = Athlete.order("RANDOM()").first
	end
end
