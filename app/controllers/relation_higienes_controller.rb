class RelationHigienesController < ApplicationController
	def index
		@rhigienes = RelationHigiene.all
	end
	def new
		@rhigiene = RelationHigiene.new
	end
	def create
		@rhigiene = RelationHigiene.new(rhigiene_params)
		@rhigiene.save
		redirect_to relation_higienes_path
	end
	def edit
		@rhigiene = RelationHigiene.find(params[:id])
	end
	def update
		@rhigiene = RelationHigiene.find(params[:id])
		if @rhigiene.update(rhigiene_params)
      		redirect_to relation_higienes_path
    	else
      		render 'edit'
    	end
	end
	def destroy
		@rhigiene = RelationHigiene.find(params[:id])
		@rhigiene.destroy
		redirect_to relation_higienes_path
	end
	private
	def rhigiene_params
		params.require(:relation_higiene).permit(:numero_terapia, :higiene_id)
	end
end
