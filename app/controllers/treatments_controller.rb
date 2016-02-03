class TreatmentsController < ApplicationController
	include TreatmentsHelper
	def index
		calcular_hidratante
		calcular_protector
		@question = Question.find_by('id=?', 16);
	end
	def siguiente
		save_value
		calcular_test
		next_question
		@question = Question.find_by('id=?', @index);
		
		calcular_hidratante
		calcular_protector
		respond_to do |format|
			format.html
			format.js
		end
	end
	def previa	
		calcular_hidratante
		calcular_protector
		@index = params[:prev]
		@question = Question.find_by('id=?', @index)
		respond_to do |format|
			format.html
			format.js
		end
	end
end
