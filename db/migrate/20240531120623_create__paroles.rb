class CreateParoles < ActiveRecord::Migration[7.1]
  def change
    create_table :_paroles do |t|
      t.string :titre
      t.string :titre_original
      t.string :titre_alternatif
      t.string :titre_original_latin
      t.integer :_paroles_staff_role_id
      t.integer :_paroles_staff_people_id
      t.text :paroles
      t.text :paroles_trad
      t.string :membre_show
      t.string :source
      t.text :description
      t.string :instrumental
      t.integer :_paroles_parole_id
      t.text :comment
      t.string :statut_prop
      t.string :acceptregles

      t.timestamps
    end
  end
end