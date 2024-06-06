class CreateCds < ActiveRecord::Migration[7.1]
  def change
    create_table :_cds do |t|
      t.string :titre
      t.string :titre_original
      t.string :titre_original_latin
      t.integer :_cds_type_id
      t.string :ref
      t.string :date_jj
      t.string :date_mm
      t.string :date_aaaa
      t.string :prix
      t.integer :_cds_monnaie_id
      t.integer :_cds_role_id
      t.integer :_cds_people_id
      t.string :image
      t.string :sametracklist
      t.integer :_cds_labels_id
      t.integer :_cds_distributeurs_id
      t.text :infos
      t.integer :_cds_groupes_id
      t.integer :_cds_cd_id
      t.integer :_cds_anime_id
      t.integer :_cds_ln_id
      t.integer :_cds_drama_id
      t.integer :_cds_am_id
      t.integer :_cds_jv_id
      t.integer :_cds_emission_tv_id
      t.integer :_cds_bonus_id
      t.integer :_cds_manga_id
      t.text :comment
      t.string :statut_prop
      t.string :acceptregles

      t.timestamps
    end
  end
end