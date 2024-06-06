class CreateTablatures < ActiveRecord::Migration[7.1]
  def change
    create_table :_tablatures do |t|
      t.string :titre
      t.integer :_tablatures_people_id
      t.text :infos
      t.text :comment
      t.string :statut_prop
      t.string :acceptregles

      t.timestamps
    end
  end
end