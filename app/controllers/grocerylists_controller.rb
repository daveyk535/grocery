class GrocerylistsController < ApplicationController

	def index
		@grocerylists = Grocerylist.all
	end

	def show
		@grocerylist = Grocerylist.find(params[:id])
	end

	def new
		@grocerylist = Grocerylist.new
	end

	def create
		@grocerylist = Grocerlylist.create grocerylist_params
		redirect_to grocerylist_path(@grocerylist)
	end

	def edit
		@grocerylist = Grocerlylist.find(params[:id])
	end

	def update
		@grocerylist = Grocerylist.find(params[:id])
		@grocerylist.update grocerylist_params
		redirect_to grocerylist_path(@grocerylist)
	end

	def delete
		Grocerylist.find(params[:id]).destroy
		redirect_to root_path
	end

	private
		def grocerylist_params
			params.require(:grocerylist).permit(:description, :qty, :mfg)
		end

end
