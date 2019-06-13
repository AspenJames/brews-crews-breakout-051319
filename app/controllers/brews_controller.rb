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

	private
	def set_brew
		@brew = Brew.find(params[:id])
	end

end
