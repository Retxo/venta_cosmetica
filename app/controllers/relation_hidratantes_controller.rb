class RelationHidratantesController < ApplicationController
	def index
		@rhidratantes = RelationHidratante.all
	end
	def new
		@rhidratante = RelationHidratante.new
	end
	def create
		@rhidratante = RelationHidratante.new(rhidratante_params)
		@rhidratante.save
		redirect_to relation_hidratantes_path
	end
	def edit
		@rhidratante = RelationHidratante.find(params[:id])
	end
	def update
		@rhidratante = RelationHidratante.find(params[:id])
		if @rhidratante.update(rhidratante_params)
      		redirect_to relation_hidratantes_path
    	else
      		render 'edit'
    	end
	end
	def destroy
		@rhidratante = RelationHidratante.find(params[:id])
		@rhidratante.destroy
		redirect_to relation_hidratantes_path
	end
	private
	def rhidratante_params
		params.require(:relation_hidratante).permit(:numero_terapia, :hidratante_id)
	end
end
