class Comentario < ActiveRecord::Base
	validates :correo, presence: true
	validates :cuerpo, presence: true
end
