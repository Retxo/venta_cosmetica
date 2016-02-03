class HigienesController < ApplicationController
		def index
		@higienes = Higiene.all
	end
	def new
		@higiene = Higiene.new
	end
	def create
		@higiene = Higiene.new(higiene_params)
		@higiene.save
		redirect_to higienes_path
	end
	def edit
		@higiene = Higiene.find(params[:id])
	end
	def update
		@higiene = Higiene.find(params[:id])
		if @higiene.update(higiene_params)
      		redirect_to higienes_path
    	else
      		render 'edit'
    	end
	end
	def destroy
		@higiene = Higiene.find(params[:id])
		@higiene.destroy
		redirect_to higienes_path
	end
	private
	def higiene_params
		params.require(:higiene).permit(:nombre, :imagen)
	end
end
