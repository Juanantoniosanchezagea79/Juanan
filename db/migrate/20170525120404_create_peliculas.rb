class CreatePeliculas < ActiveRecord::Migration[5.0]
  def change
    create_table :peliculas do |t|
      t.string :title
      t.integer :valoration
      t.string :director
      t.integer :year

      t.timestamps
    end
  end
end
