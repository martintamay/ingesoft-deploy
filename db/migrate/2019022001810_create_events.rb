class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :nombre
      t.string :ubicacion
      t.string :descripcion
      t.boolean :publico
      t.integer :posposiciones
      t.string :codigo

      t.timestamps
    end
  end
end
