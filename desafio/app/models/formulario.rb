class Formulario < ApplicationRecord

	require 'csv'
	
	def self.import(file)

		CSV.foreach(file.path, headers: true, :col_sep => "\t") do |row|
			Formulario.create! row.to_hash
		end
	end
end
