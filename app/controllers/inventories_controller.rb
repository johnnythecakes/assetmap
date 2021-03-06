class InventoriesController < ApplicationController
	# before_action :get_inventory, only: [:show, :edit, :update, :destroy]
	# before_action :check_security, only: [:show, :edit, :update, :destroy]
	
	def home
		@user = User.new
	end

	def index
		if !current_user
			redirect_to home_path
			return
		end
		#@inventories = Inventory.all
		@inventories = current_user.inventories
	end

	# def show
	# 	@inventories = current_user.inventories
	# 	@inventory = Inventory.find(params:[:id])
	# end

	def new
		if !current_user
			redirect_to new_sessions_path			
		return
		end
		@inventory = Inventory.new
	end

	def create
		if !current_user
			redirect_to new_sessions_path
			return
		end
			inventory = current_user.inventories.new(params.require(:inventory).permit(:user_id, :product_id, :quantity, :category_name))
			if inventory.save
				redirect_to inventories_path
			end
	end

	# def edit
	# 	@inventory = Inventory.find(params[:id])
	# end

	# def update
	# 	@inventory = Inventory.find(params[:id])
	# 	if @inventory.update_attributes(params.require(:inventory).permit(:user_id, :product_id, :quantity, :category_name))
	# 		redirect_to inventories_path
	# 	else
	# 		render 'edit'
	# 	end
	# end

	def destroy
		Inventory.find(params[:id]).destroy
		redirect_to inventories_path
	end

# private
# 	def get_inventory
# 		@inventory = Inventory.find(params[:id])
# 	end

# 	def check_security
# 		# if they're not logged in or they dont ownt this inventory boot them to the home page
# 		if current_user || @inventory.user != current_user
# 			redirect_to home_path
# 		end
# 		end
end