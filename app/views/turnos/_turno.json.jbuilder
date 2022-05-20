json.extract! turno, :id, :descripcion, :numero_turno, :direccion_salida, :destino, :numero_personas, :fecha_salida, :hora_salida, :tipo, :vacantes_libres, :created_at, :updated_at
json.url turno_url(turno, format: :json)
