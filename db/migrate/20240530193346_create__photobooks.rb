class CreatePhotobooks < ActiveRecord::Migration[7.1]
  def change
    create_table :_photobooks do |t|
      t.integer :_photobooks_france_id
      t.integer :_photobooks_pays_id
      t.string :titre
      t.string :titre_alternatif
      t.string :titre_original_latin
      t.string :titre_original
      t.string :image
      t.string :image_vo
      t.string :date_parution_vo_jj
      t.string :date_parution_vo_mm
      t.string :date_parution_vo_aaaa
      t.string :date_parution_vf_jj
      t.string :date_parution_vf_mm
      t.string :date_parution_vf_aaaa
      t.string :prix
      t.string :ean
      t.string :ref
      t.integer :_photobooks_disponibilite_id
      t.string :nb_pages
      t.string :site
      t.integer :_photobooks_illustrations_id
      t.integer :_photobooks_type_id
      t.integer :_photobooks_editeurs_vo_id
      t.integer :_photobooks_editeurs_vf_id
      t.integer :_photobooks_role_id
      t.integer :_photobooks_people_id
      t.integer :_photobooks_societe_role_id
      t.integer :_photobooks_societe_people_id
      t.text :resume
      t.text :infos
      t.integer :_photobooks_public_averti_id
      t.integer :_photobooks_groupes_id
      t.integer :_photobooks_drama_id
      t.integer :_photobooks_am_id
      t.integer :_photobooks_cd_id
      t.integer :_photobooks_photobook_id
      t.integer :_photobooks_anime_id
      t.integer :_photobooks_bonus_id
      t.integer :_photobooks_actualite_id
      t.integer :_photobooks_actualite_mini_id
      t.integer :_photobooks_goodies_id
      t.text :comment
      t.string :statut_prop
      t.string :acceptregles

      t.timestamps
    end
  end
end