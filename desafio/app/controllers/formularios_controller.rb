class FormulariosController < ApplicationController

	def home
	end

	def index
		@formulario = Formulario.all
	end

	def import
		Formulario.import(params[:file])
		redirect_to formularios_path, notice: "Arquivo importado"
	end
end
