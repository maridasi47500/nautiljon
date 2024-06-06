class CreatePersonnalitesAgencesFins < ActiveRecord::Migration[7.1]
  def change
    create_table :_personnalites_agences_fins do |t|
      t.string :name

      t.timestamps
    end
  end
end