class CreatePersonnalitesExFins < ActiveRecord::Migration[7.1]
  def change
    create_table :_personnalites_ex_fins do |t|
      t.string :name

      t.timestamps
    end
  end
end