# creacion de los metodos:



class Alimento
	attr_reader :nombre, :proteinas, :glucidos, :lipidos
	def initialize nombre, proteinas, glucidos, lipidos
		@nombre, @proteinas, @glucidos, @lipidos = nombre, proteinas, glucidos, lipidos
	end

	def get_nombre
		@nombre
	end

	def get_proteinas
		@proteinas
	end

	def get_glucidos
		@glucidos
	end

	def get_lipidos
		@lipidos
	end

	def get_energetico
		@aux = (@glucidos * 4) + (@lipidos * 9) + (@proteinas * 4)
		@aux
	end

	def to_s
		"#{nombre}, #{proteinas}, #{glucidos}, #{lipidos}"
	end
end

