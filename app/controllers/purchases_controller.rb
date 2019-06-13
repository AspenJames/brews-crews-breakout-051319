class PurchasesController < ApplicationController
  def index
  end

	def new
		@purchase = Purchase.new
		@brews = Brew.all
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def delete
  end
end
