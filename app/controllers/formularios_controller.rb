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

	def income
		@total_price = 0.0
		@formulario = Formulario.all
		@formulario.each do |f|
			@price = f.item_price
			@count = f.purchase_count
			@total_price = @total_price + (@price * @count)
		end
		render 'income'
	end
end
