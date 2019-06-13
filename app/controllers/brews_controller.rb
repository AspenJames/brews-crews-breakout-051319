class BrewsController < ApplicationController
	before_action :set_brew, :only => [:show, :edit, :update]
	# before_action :set_brew, :only => %i(show edit update)

	def index
		@brews = Brew.all
	end

	def show
	end

	def new
		@brew = Brew.new
	end

	def create
		@brew = Brew.new(brew_params)

		if @brew.valid?
			@brew.save
			redirect_to brew_path(@brew)
		else
			# flash[:message] = 'you messed up'
			render :new
		end
	end

	private
	def set_brew
		@brew = Brew.find(params[:id])
	end

	def brew_params
		params.require(:brew).permit(:blend_name, :origin, :notes, :strength)
	end

end
