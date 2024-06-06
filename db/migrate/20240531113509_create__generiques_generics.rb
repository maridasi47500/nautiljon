class CreateGeneriquesGenerics < ActiveRecord::Migration[7.1]
  def change
    create_table :_generiques_generics do |t|
      t.string :name

      t.timestamps
    end
  end
end