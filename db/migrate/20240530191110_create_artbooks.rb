class CreateArtbooks < ActiveRecord::Migration[7.1]
  def change
    create_table :artbooks do |t|
      t.integer :artbooks_france_id
      t.integer :artbooks_pays_id
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
      t.string :nb_pages
      t.integer :artbooks_illustrations_id
      t.integer :artbooks_type_id
      t.string :crossover
      t.integer :artbooks_editeurs_vo_id
      t.integer :artbooks_editeurs_vf_id
      t.integer :artbooks_role_id
      t.integer :artbooks_people_id
      t.integer :artbooks_societe_role_id
      t.integer :artbooks_societe_people_id
      t.text :resume
      t.text :infos
      t.integer :artbooks_public_averti_id
      t.integer :artbooks_groupes_id
      t.integer :artbooks_anime_id
      t.integer :artbooks_manga_id
      t.integer :artbooks_ln_id
      t.integer :artbooks_doujinshi_id
      t.integer :artbooks_jv_id
      t.integer :artbooks_drama_id
      t.integer :artbooks_am_id
      t.integer :artbooks_litterature_asiatique_id
      t.integer :artbooks_artbook_id
      t.integer :artbooks_goodies_id
      t.integer :artbooks_doujin_id
      t.integer :artbooks_actualite_id
      t.integer :artbooks_actualite_mini_id
      t.integer :artbooks_culture_id
      t.text :comment
      t.string :statut_prop
      t.string :acceptregles

      t.timestamps
    end
  end
end