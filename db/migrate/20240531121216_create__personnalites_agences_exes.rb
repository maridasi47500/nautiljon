class CreatePersonnalitesAgencesExes < ActiveRecord::Migration[7.1]
  def change
    create_table :_personnalites_agences_exes do |t|
      t.string :name

      t.timestamps
    end
  end
end