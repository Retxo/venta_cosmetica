class PeopleController < ApplicationController
	def index
		@people = Person.all
	end
	def new
		@person = Person.new
	end
	def create
		@person = Person.new(person_params)
		@person.save
		redirect_to people_path
	end
	def edit
		@person = Person.find(params[:id])
	end
	def update
		@person = Person.find(params[:id])
		if @person.update(person_params)
      		redirect_to people_path
    	else
      		render 'edit'
    	end
	end
	def destroy
		@person = Person.find(params[:id])
		@person.destroy
		redirect_to people_path
	end
	private
	def person_params
		params.require(:person).permit(:nombre, :edad, :tipo_piel, :sensibilidad, :riesgo, :exposicion, :medicacion, :embarazada,
		 	:acne, :rojeces, :poros, :da, :sufres_da, :humedad_y_ta, :exposicion1, :exposicion2, :fototipo1, :fototipo2, :fototipo3,
		 	:fototipo4, :fototipo5, :fototipo6, :fototipo7, :fototipo, :estres, :dieta, :lavas, :fumar, :expuesto_sol, :antiacne,
		 	:factor_nutricion)
	end
end
