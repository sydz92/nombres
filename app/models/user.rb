class User < ActiveRecord::Base
	def saludar
		"Hola, mi nombre es #{name}."
	end
end