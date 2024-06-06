class CreateFicheUniversPeople < ActiveRecord::Migration[7.1]
  def change
    create_table :_fiche_univers_people do |t|
      t.string :name

      t.timestamps
    end
  end
end