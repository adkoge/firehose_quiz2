class AthletesController < ApplicationController
	def index
		@athlete = Athlete.order("created_at").last
	end

	def new
		@athlete = Athlete.new
	end

	def create
		@athlete = Athlete.create(quote_params)
		if @athlete.invalid?
			flash[:error] = 'Could not save, the data you entered is invalid.'
		end
		redirect_to root_path
	end

	private

	def quote_params
		params.require(:athlete).permit(:person, :sport)
	end
end
