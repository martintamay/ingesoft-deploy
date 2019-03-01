json.extract! event, :id, :nombre, :ubicacion, :descripcion, :publico, :posposiciones, :codigo, :created_at, :updated_at
json.url event_url(event, format: :json)
