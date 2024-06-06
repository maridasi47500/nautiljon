class CreateFicheUniversPersos < ActiveRecord::Migration[7.1]
  def change
    create_table :_fiche_univers_persos do |t|
      t.string :name

      t.timestamps
    end
  end
end