class CreateFicheUniversGroupes < ActiveRecord::Migration[7.1]
  def change
    create_table :_fiche_univers_groupes do |t|
      t.string :name

      t.timestamps
    end
  end
end