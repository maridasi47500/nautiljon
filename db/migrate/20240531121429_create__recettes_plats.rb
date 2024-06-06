class CreateRecettesPlats < ActiveRecord::Migration[7.1]
  def change
    create_table :_recettes_plats do |t|
      t.string :name

      t.timestamps
    end
  end
end