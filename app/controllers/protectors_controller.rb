class ProtectorsController < ApplicationController
	
	def index
		@protectors = Protector.all
	end
	def new
		@protector = Protector.new
	end
	def create
		@protector = Protector.new(protector_params)
		@protector.save
		redirect_to protectors_path
	end
	def edit
		@protector = Protector.find(params[:id])
	end
	def update
		@protector = Protector.find(params[:id])
		if @protector.update(protector_params)
      		redirect_to protectors_path
    	else
      		render 'edit'
    	end
	end
	def destroy
		@protector = Protector.find(params[:id])
		@protector.destroy
		redirect_to protectors_path
	end
	private
	def protector_params
		params.require(:protector).permit(:nombre, :imagen)
	end
end


