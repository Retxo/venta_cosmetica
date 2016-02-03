class RelationProtectorsController < ApplicationController
	def index
		@rprotectors = RelationProtector.all
	end
	def new
		@rprotector = RelationProtector.new
	end
	def create
		@rprotector = RelationProtector.new(rprotector_params)
		@rprotector.save
		redirect_to relation_protectors_path
	end
	def edit
		@rprotector = RelationProtector.find(params[:id])
	end
	def update
		@rprotector = RelationProtector.find(params[:id])
		if @rprotector.update(rprotector_params)
      		redirect_to relation_protectors_path
    	else
      		render 'edit'
    	end
	end
	def destroy
		@rprotector = RelationProtector.find(params[:id])
		@rprotector.destroy
		redirect_to relation_protectors_path
	end
	private
	def rprotector_params
		params.require(:relation_protector).permit(:numero_terapia, :protector_id)
	end
end
