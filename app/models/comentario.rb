class Comentario < ActiveRecord::Base
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	validates :correo, presence: true, format: { with: VALID_EMAIL_REGEX }
	validates :cuerpo, presence: true, length: {minimum: 10}
end
