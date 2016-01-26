class AthletesController < ApplicationController
	def index
		@athlete = Athlete.order("RANDOM()").first
	end

	def new
		@athlete = Athlete.new
	end

	def create
		Athlete.create(quote_params)
		redirect_to root_path
	end

	private

	def quote_params
		params.require(:athlete).permit(:person, :sport)
	end
end
