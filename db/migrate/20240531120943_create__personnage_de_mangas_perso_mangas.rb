class CreatePersonnageDeMangasPersoMangas < ActiveRecord::Migration[7.1]
  def change
    create_table :_personnage_de_mangas_perso_mangas do |t|
      t.string :name

      t.timestamps
    end
  end
end