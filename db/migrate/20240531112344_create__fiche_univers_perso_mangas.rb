class CreateFicheUniversPersoMangas < ActiveRecord::Migration[7.1]
  def change
    create_table :_fiche_univers_perso_mangas do |t|
      t.string :name

      t.timestamps
    end
  end
end