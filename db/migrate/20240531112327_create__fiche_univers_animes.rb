class CreateFicheUniversAnimes < ActiveRecord::Migration[7.1]
  def change
    create_table :_fiche_univers_animes do |t|
      t.string :name

      t.timestamps
    end
  end
end