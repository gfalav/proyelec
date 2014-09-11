json.array!(@puntos) do |punto|
  json.extract! punto, :id, :punto, :proyecto_id, :secuencia, :latitud, :longitud, :distancia, :angulo
  json.url punto_url(punto, format: :json)
end
