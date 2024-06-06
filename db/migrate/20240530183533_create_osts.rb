class CreateOsts < ActiveRecord::Migration[7.1]
  def change
    create_table :osts do |t|
      t.string :titre
      t.string :titre_original_latin
      t.string :titre_original
      t.string :titre_us
      t.string :titre_alternatif
      t.integer :osts_type_id
      t.integer :osts_plateforme_id
      t.string :ref
      t.string :date_jj
      t.string :date_mm
      t.string :date_aaaa
      t.string :prix
      t.integer :osts_monnaie_id
      t.string :bonus_cd
      t.integer :osts_role_id
      t.integer :osts_people_id
      t.string :image
      t.string :sametracklist
      t.integer :osts_labels_id
      t.integer :osts_distributeurs_id
      t.text :infos
      t.integer :osts_groupes_id
      t.integer :osts_anime_id
      t.integer :osts_ln_id
      t.integer :osts_drama_id
      t.integer :osts_am_id
      t.integer :osts_jv_id
      t.integer :osts_ost_id
      t.integer :osts_emission_tv_id
      t.text :comment
      t.string :statut_prop
      t.string :acceptregles

      t.timestamps
    end
  end
end