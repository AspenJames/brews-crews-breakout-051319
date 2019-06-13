class PurchasesController < ApplicationController
  def index #get /purchases
  end

	def new
		@purchase = Purchase.new
		@brews = Brew.all
  end

	def create #post /purchases
		@purchase = Purchase.new(purchase_params)

		if @purchase.valid?
			@purchase.save
			redirect_to purchase_path(@purchase)
		else
			render :new
		end
  end

  def show
  end

  def edit
  end

  def update
  end

  def delete
	end

	private
	def purchase_params
		params.require(:purchase).permit(:customer_name, :price, :brew_id)
	end
end
