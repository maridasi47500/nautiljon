class CreateFilmsAsiatiquesEnSallesGenres < ActiveRecord::Migration[7.1]
  def change
    create_table :_films_asiatiques_en_salles_genres do |t|
      t.string :name

      t.timestamps
    end
  end
end