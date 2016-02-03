module TreatmentsHelper
	def next_question
		@index = params[:next]
	end
	def save_value
		@person = Person.find_by('id=?', 18)
		value = params[:valor]
		nombre_preg = params[:nombre_preg]
		@person.update_attribute(nombre_preg.to_sym, value.to_i)
	end
	def calcular_hidratante
		@person = Person.find_by('id=?', 18)
		val_tipo_piel = @person.tipo_piel.to_s
		val_sensibilidad = @person.sensibilidad.to_s
		if @person.tipo_piel == 3 #piel grasa
			val_acne = @person.acne.to_s
			val_rojeces = @person.rojeces.to_s
			val_poros = @person.poros.to_s
			numero = val_tipo_piel + val_sensibilidad + val_acne + val_rojeces + val_poros
			numero = numero.to_i
		elsif @person.tipo_piel == 2 #piel normal
		else #piel seca
			val_factor_nutricion = @person.factor_nutricion.to_s
			numero = val_tipo_piel + val_sensibilidad + val_factor_nutricion
			numero = numero.to_i
		end
		@relation = RelationHidratante.where('numero_terapia=?',numero).take
	end
	def calcular_protector
		@person = Person.find_by('id=?', 18)
		val_fototipo = @person.fototipo.to_s
		val_exposicion = @person.exposicion.to_s
		val_riesgo = @person.riesgo.to_s
		numero = val_fototipo + val_exposicion + val_riesgo
		numero = numero.to_i
		@relation_prot = RelationProtector.where('numero_terapia=?',numero).take
	end
	def calcular_test
		fitzpatrick if params[:nombre_preg] == "fototipo7"
		calcular_exposicion if params[:nombre_preg]== "exposicion2"
		calcular_riesgo if params[:nombre_preg] == "medicacion"
		calcular_nutricion if params[:nombre_preg] == "expuesto_sol"
		sufres_da if params[:nombre_preg] == "sufres_da"
		calcular_nutricion if params[:nombre_preg] == "sufres_da"
		calcular_nutricion if params[:nombre_preg] == "da"
	end
	def sufres_da
		@person.da = 1 if @person.sufres_da == 1
		@person.da = 2 if @person.sufres_da == 2
	end
	def calcular_exposicion
		value = @person.exposicion1.to_i + @person.exposicion2.to_i
		if value <=40
			exposicion = 2
		else
			exposicion = 1
		end
		@person.exposicion = exposicion
		@person.save
	end
	def calcular_nutricion
		value = @person.humedad_y_ta.to_i + @person.estres.to_i + @person.dieta.to_i + @person.lavas.to_i + @person.fumar.to_i + @person.expuesto_sol.to_i
		if value < 41
			factor = 1
		elsif value >42 && value <69
			factor = 2
		else 
			factor = 3
		end
		factor = 3 if @person.da == 1
		@person.factor_nutricion = factor
		@person.save
	end
	def calcular_riesgo
		 if @person.embarazada == 1
		 	riesgo = 1
		 elsif @person.medicacion == 1
		 	riesgo = 1
		 else 
		 	riesgo = 2
		 end
		
		@person.riesgo = riesgo
		@person.save
	end
	def fitzpatrick
		value = @person.fototipo1.to_i + @person.fototipo2.to_i + @person.fototipo3.to_i + @person.fototipo4.to_i + @person.fototipo5.to_i + @person.fototipo6.to_i + @person.fototipo7.to_i
		debugger
		if value <= 7
			fototipo = 1
		elsif value >= 8 && value <= 21
			fototipo = 2
		elsif value >= 22 && value <= 42
			fototipo = 3
		elsif value >= 43 && value <= 68
			fototipo = 4
		elsif value >= 69 && value <= 85
			fototipo = 5
		else
			fototipo = 6
		end
		@person.fototipo = fototipo
		@person.save
	end
end
