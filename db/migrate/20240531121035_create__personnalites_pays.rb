class CreatePersonnalitesPays < ActiveRecord::Migration[7.1]
  def change
    create_table :_personnalites_pays do |t|
      t.string :name

      t.timestamps
    end
  end
end