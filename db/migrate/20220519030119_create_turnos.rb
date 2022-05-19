class CreateTurnos < ActiveRecord::Migration[6.0]
  def change
    create_table :turnos do |t|
      t.string :descripcion
      t.integer :numero_turno
      t.string :direccion_salida
      t.string :destino
      t.integer :numero_personas
      t.string :fecha
      t.string :hora
      t.string :tipo
      t.integer :vacantes_libres

      t.timestamps
    end
  end
end
