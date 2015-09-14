class Comentario < ActiveRecord::Base
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	validates :correo, format: { with: VALID_EMAIL_REGEX,message: "no valido" }
	validates_presence_of :correo, message: "puede estar vacio"
	validates :mensaje, length: {minimum: 10, message: "tiene que tener un minimo de carateres de 10"}
	validates_presence_of :mensaje, message: "no puede estar vacio"
end
