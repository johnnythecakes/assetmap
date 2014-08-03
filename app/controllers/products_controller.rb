class ProductsController < ApplicationController

	def index
		@products = Product.all? 
	end

	def show
		@product = Product.find(params:[:id])
	end

	def new
		@product = Product.new
	end

	def create
		@product = Product.new(params.require(:product).permit(:product_name, :product_purchase_price, :product_estimate_price, :product_category_id, :product_make, :product_warranty, :product_warranty_length))
		if @product.save
			redirect_to products_path
		else
			render'new'
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
		@product = Product.find(params[:id])
		@products.destroy
		redirect_to products_path
	end
end
