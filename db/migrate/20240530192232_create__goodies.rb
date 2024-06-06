class CreateGoodies < ActiveRecord::Migration[7.1]
  def change
    create_table :_goodies do |t|
      t.integer :_goodies_type_id
      t.integer :_goodies_pays_id
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
      t.string :date_reedition_jj
      t.string :date_reedition_mm
      t.string :date_reedition_aaaa
      t.string :prix
      t.string :commerce
      t.string :ean
      t.string :ref
      t.integer :_goodies_matiere_id
      t.string :dimensions_h
      t.string :dimensions_w
      t.string :dimensions_z
      t.string :poids
      t.string :echelle
      t.string :articule
      t.string :site
      t.integer :_goodies_editeurs_vo_id
      t.integer :_goodies_editeurs_vf_id
      t.integer :_goodies_staff_role_id
      t.integer :_goodies_staff_people_id
      t.string :sculpteur
      t.integer :_goodies_societe_role_id
      t.integer :_goodies_societe_people_id
      t.text :resume
      t.text :infos
      t.string :youtube
      t.integer :_goodies_public_averti_id
      t.integer :_goodies_groupes_id
      t.integer :_goodies_anime_id
      t.integer :_goodies_perso_id
      t.integer :_goodies_manga_id
      t.integer :_goodies_perso_manga_id
      t.integer :_goodies_jv_id
      t.integer :_goodies_jv_perso_id
      t.integer :_goodies_ln_id
      t.integer :_goodies_drama_id
      t.integer :_goodies_am_id
      t.integer :_goodies_artbook_id
      t.integer :_goodies_photobook_id
      t.integer :_goodies_doujinshi_id
      t.integer :_goodies_dvd_id
      t.integer :_goodies_cd_id
      t.integer :_goodies_ost_id
      t.integer :_goodies_people_id
      t.integer :_goodies_goodies_id
      t.integer :_goodies_clip_id
      t.integer :_goodies_bonus_id
      t.integer :_goodies_litterature_asiatique_id
      t.integer :_goodies_actualite_id
      t.integer :_goodies_actualite_mini_id
      t.text :comment
      t.string :statut_prop
      t.string :acceptregles

      t.timestamps
    end
  end
end