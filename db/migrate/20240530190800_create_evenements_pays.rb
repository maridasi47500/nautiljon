class CreateEvenementsPays < ActiveRecord::Migration[7.1]
  def change
    create_table :evenements_pays do |t|
      t.string :name

      t.timestamps
    end
  end
end