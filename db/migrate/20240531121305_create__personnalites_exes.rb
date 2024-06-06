class CreatePersonnalitesExes < ActiveRecord::Migration[7.1]
  def change
    create_table :_personnalites_exes do |t|
      t.string :name

      t.timestamps
    end
  end
end