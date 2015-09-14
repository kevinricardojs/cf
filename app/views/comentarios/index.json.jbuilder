json.array!(@comentarios) do |comentario|
  json.extract! comentario, :id, :correo, :cuerpo
  json.url comentario_url(comentario, format: :json)
end
