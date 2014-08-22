json.array!(@proyectos) do |proyecto|
  json.extract! proyecto, :id, :proyecto, :desc, :comitente, :constructor, :proyectista, :fproyecto, :ubicacion, :expediente, :cond_e_id, :cond_g_id, :zona_id, :tconstr_id, :hlibre, :vanomax, :dretmax
  json.url proyecto_url(proyecto, format: :json)
end
