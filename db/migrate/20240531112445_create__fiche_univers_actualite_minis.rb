class CreateFicheUniversActualiteMinis < ActiveRecord::Migration[7.1]
  def change
    create_table :_fiche_univers_actualite_minis do |t|
      t.string :name

      t.timestamps
    end
  end
end