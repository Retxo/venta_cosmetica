class HidratantesController < ApplicationController
	def index
		@hidratantes = Hidratante.all
	end
	def new
		@hidratante = Hidratante.new
	end
	def create
		@hidratante = Hidratante.new(hidratante_params)
		@hidratante.save
		redirect_to hidratantes_path
	end
	def edit
		@hidratante = Hidratante.find(params[:id])
	end
	def update
		@hidratante = Hidratante.find(params[:id])
		if @hidratante.update(hidratante_params)
      		redirect_to hidratantes_path
    	else
      		render 'edit'
    	end
	end
	def destroy
		@hidratante = Hidratante.find(params[:id])
		@hidratante.destroy
		redirect_to hidratantes_path
	end
	private
	def hidratante_params
		params.require(:hidratante).permit(:nombre, :imagen)
	end
end
