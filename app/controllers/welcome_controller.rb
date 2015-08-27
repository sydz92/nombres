class WelcomeController < ApplicationController
	def index
		@msj = String.new('Bienvenido!')
	end

	def nombre
		@name = params[:name]
		a = User.new
		a.name = @name
		a.save
		@saludo = a.saludar
	end

	def recuperar
		@users = User.all
		@params = params.slice(:sort, :name)
		#usrs = User.all
		#usrs.each{|a| a.destroy}
	end

	def actualizar
		@uname = params[:id]
		user = User.find_by(id: @uname)
		user.name = "#{user.name}(Actulizado)"
		user.save
		@users = User.all
		render "recuperar"
	end
end