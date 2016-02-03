class ExfoliantesController < ApplicationController
	def index
		@exfoliantes = Exfoliante.all
	end
	def new
		@exfoliante = Exfoliante.new
	end
	def create
		@exfoliante = Exfoliante.new(exfoliante_params)
		@exfoliante.save
		redirect_to exfoliantes_path
	end
	def edit
		@exfoliante = Exfoliante.find(params[:id])
	end
	def update
		@exfoliante = Exfoliante.find(params[:id])
		if @exfoliante.update(exfoliante_params)
      		redirect_to exfoliantes_path
    	else
      		render 'edit'
    	end
	end
	def destroy
		@exfoliante = Exfoliante.find(params[:id])
		@exfoliante.destroy
		redirect_to exfoliantes_path
	end
	private
	def exfoliante_params
		params.require(:exfoliante).permit(:nombre, :imagen)
	end
end
