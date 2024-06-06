class CreateFilmsAsiatiquesEditeursVfs < ActiveRecord::Migration[7.1]
  def change
    create_table :_films_asiatiques_editeurs_vfs do |t|
      t.string :name

      t.timestamps
    end
  end
end