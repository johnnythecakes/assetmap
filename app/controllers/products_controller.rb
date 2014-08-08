class ProductsController < ApplicationController

	def index
		@inventory = Inventory.find(params[:inventory_id])
		@products = @inventory.products
	end

	def show
		@product = Product.find(params:[:id])
	end

	def new
		#@inventory = Inventory.find([:inventory_id])
		@product = Product.new
	end

	def create
		@inventory = Inventory.find(params[:inventory_id])
		product = Product.new(params.require(:product).permit(:product_name, :product_purchase_price, :product_estimate_price, :product_category_id, :product_make, :product_warranty, :product_warranty_length))
		product.inventory = @inventory
		if product.save
			redirect_to inventory_products_path(@inventory_id)
		end
	end

	def edit
		@product = Product.find(params[:id])
	end

	def update
		@product = Product.find(params[:id])
		if @product.update_attributes(params.require(:product).permit(:product_name, :product_purchase_price, :product_estimate_price, :product_category_id, :product_make, :product_warranty, :product_warranty_length))
			redirect_to products_path
		else
			render 'edit'
		end
	end

	def destroy
		@inventory = Inventory.find(params[:inventory_id])
		Product.find(params[:id]).destroy
		@products.destroy
		redirect_to inventory_products_path(@inventory.id)
	end
end
