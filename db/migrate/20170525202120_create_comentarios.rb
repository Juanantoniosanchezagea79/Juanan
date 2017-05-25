class CreateComentarios < ActiveRecord::Migration[5.0]
  def change
    create_table :comentarios do |t|
      t.string :usuari
      t.integer :pelicula
      t.string :comentari

      t.timestamps
    end
  end
end
