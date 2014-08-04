class InventoriesController < ApplicationController
		def index
		@inventories = Inventory.all
	end

	def show
		@inventory = Inventory.find(params:[:id])
	end

	def new
		@inventory = Inventory.new
	end

	def create
		@inventory = Inventory.new(params.require(:inventory).permit(:user_id, :product_id, :quantity, :category_name))
		if @inventory.save
			redirect_to inventories_path
		else
			render'new'
		end
	end

	def edit
		@inventory = Inventory.find(params[:id])
	end

	def update
		@inventory = Inventory.find(params[:id])
		if @inventory.update_attributes(params.require(:inventory).permit(:user_id, :product_id, :quantity, :category_name))
			redirect_to inventories_path
		else
			render 'edit'
		end
	end

	def destroy
		@inventory = Inventory.find(params[:id])
		@inventories.destroy
		redirect_to inventories_path
	end
end
