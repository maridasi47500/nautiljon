class CreateAmvs < ActiveRecord::Migration[7.1]
  def change
    create_table :amvs do |t|
      t.string :titre
      t.string :image
      t.integer :amvs_makers_id
      t.string :youtube
      t.string :lien
      t.text :song
      t.string :date_jj
      t.string :date_mm
      t.string :date_aaaa
      t.string :duree
      t.integer :amvs_type_id
      t.text :description
      t.integer :amvs_conventions_id
      t.integer :amvs_groupes_id
      t.integer :amvs_anime_id
      t.integer :amvs_jv_id
      t.integer :amvs_amv_id
      t.string :autre
      t.text :comment
      t.string :statut_prop
      t.string :acceptregles

      t.timestamps
    end
  end
end