class CreateGeneriques < ActiveRecord::Migration[7.1]
  def change
    create_table :_generiques do |t|
      t.string :titre
      t.string :titre_original
      t.integer :_generiques_id_anime_id
      t.integer :_generiques_type_id
      t.string :number
      t.integer :_generiques_staff_role_id
      t.integer :_generiques_staff_people_id
      t.text :description
      t.string :instrumental
      t.string :date_jj
      t.string :date_mm
      t.string :date_aaaa
      t.string :youtube
      t.text :paroles
      t.text :paroles_trad
      t.string :membre_show
      t.string :episodes
      t.integer :_generiques_generic_id
      t.text :comment
      t.string :statut_prop
      t.string :acceptregles

      t.timestamps
    end
  end
end