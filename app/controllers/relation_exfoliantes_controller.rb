class RelationExfoliantesController < ApplicationController
	def index
		@rexfoliantes = RelationExfoliante.all
	end
	def new
		@rexfoliante = RelationExfoliante.new
	end
	def create
		@rexfoliante = RelationExfoliante.new(rexfoliante_params)
		@rexfoliante.save
		redirect_to relation_exfoliantes_path
	end
	def edit
		@rexfoliante = RelationExfoliante.find(params[:id])
	end
	def update
		@rexfoliante = RelationExfoliante.find(params[:id])
		if @rexfoliante.update(rexfoliante_params)
      		redirect_to relation_exfoliantes_path
    	else
      		render 'edit'
    	end
	end
	def destroy
		@rexfoliante = RelationExfoliante.find(params[:id])
		@rexfoliante.destroy
		redirect_to relation_exfoliantes_path
	end
	private
	def rexfoliante_params
		params.require(:relation_exfoliante).permit(:numero_terapia, :exfoliante_id)
	end
end
