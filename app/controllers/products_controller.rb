class ProductsController < ApplicationController
	before_action :get_inventory, :check_security 

	def index
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
		product = Product.new(params.require(:product).permit(:product_name, :product_purchase_price, :product_estimate_price, :product_category_id, :product_make, :product_warranty, :product_warranty_length))
		#attach this product to inventory
		product.inventory = @inventory
		if product.save
			redirect_to inventory_products_path(@inventory.id)
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
		Product.find(params[:id]).destroy
		redirect_to inventory_products_path(@inventory.id)
	end

private

	def get_inventory
		@inventory = Inventory.find(params[:id])
	end

	def check_security
		# if they're not logged in or they dont ownt this inventory boot them to the home page
		if current_user || @inventory.user != current_user
			redirect_to home_path
		end
		end
end
