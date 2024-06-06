class CreateFilmsAsiatiquesEnSalles < ActiveRecord::Migration[7.1]
  def change
    create_table :_films_asiatiques_en_salles do |t|
      t.string :titre
      t.string :titre_original
      t.integer :_films_asiatiques_en_salles_pays_id
      t.integer :_films_asiatiques_en_salles_langue_id
      t.string :image
      t.string :annee
      t.integer :_films_asiatiques_en_salles_pays_origine_id
      t.string :duree
      t.string :age
      t.integer :_films_asiatiques_en_salles_genres_id
      t.string :youtube
      t.string :site
      t.string :site2
      t.integer :_films_asiatiques_en_salles_staff_role_id
      t.integer :_films_asiatiques_en_salles_staff_people_id
      t.integer :_films_asiatiques_en_salles_type_id
      t.integer :_films_asiatiques_en_salles_acteurs_id
      t.integer :_films_asiatiques_en_salles_anime_id
      t.integer :_films_asiatiques_en_salles_am_id
      t.integer :_films_asiatiques_en_salles_drama_id
      t.integer :_films_asiatiques_en_salles_actualite_id
      t.integer :_films_asiatiques_en_salles_actualite_mini_id
      t.text :synopsis
      t.text :recompense
      t.text :comment
      t.string :acceptregles

      t.timestamps
    end
  end
end