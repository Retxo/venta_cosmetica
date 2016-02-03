class QuestionsController < ApplicationController
	def index
		@questions = Question.all
	end
	def new
		@question = Question.new
	end
	def create
		@question = Question.new(question_params)
		@question.save
		redirect_to questions_path
	end
	def edit
		@question = Question.find(params[:id])
	end
	def update
		@question = Question.find(params[:id])
		if @question.update(question_params)
      		redirect_to questions_path
    	else
      		render 'edit'
    	end
	end
	def destroy
		@question = Question.find(params[:id])
		@question.destroy
		redirect_to questions_path
	end
	private
	def question_params
		params.require(:question).permit(:pregunta, :respuesta1, :valor1, :next1, :respuesta2, :valor2, :next2, 
			:respuesta3, :valor3, :next3, :respuesta4, :valor4, :next4, :respuesta5, :valor5, :next5,
			:respuesta6, :valor6, :next6, :prev, :nombre_preg)
	end
end

