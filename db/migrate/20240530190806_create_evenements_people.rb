class CreateEvenementsPeople < ActiveRecord::Migration[7.1]
  def change
    create_table :evenements_people do |t|
      t.string :name

      t.timestamps
    end
  end
end