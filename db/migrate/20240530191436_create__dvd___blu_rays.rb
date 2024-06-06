class CreateDvdBluRays < ActiveRecord::Migration[7.1]
  def change
    create_table :_dvd___blu_rays do |t|
      t.string :type
      t.integer :_dvd_blu_rays_france_id
      t.integer :_dvd_blu_rays_pays_id
      t.string :titre
      t.string :titre_alternatif
      t.string :titre_original
      t.string :image
      t.string :date_parution_jj
      t.string :date_parution_mm
      t.string :date_parution_aaaa
      t.string :prix
      t.string :ean
      t.string :ref
      t.integer :_dvd_blu_rays_format_id
      t.integer :_dvd_blu_rays_type_edition_id
      t.integer :_dvd_blu_rays_editeurs_id
      t.string :audiodescription
      t.string :duree
      t.string :nb_disque
      t.text :resume
      t.text :episodes
      t.text :infos
      t.string :youtube
      t.integer :_dvd_blu_rays_public_averti_id
      t.integer :_dvd_blu_rays_groupes_id
      t.integer :_dvd_blu_rays_anime_id
      t.integer :_dvd_blu_rays_drama_id
      t.integer :_dvd_blu_rays_am_id
      t.integer :_dvd_blu_rays_litterature_asiatique_id
      t.integer :_dvd_blu_rays_jv_id
      t.integer :_dvd_blu_rays_people_id
      t.integer :_dvd_blu_rays_emission_tv_id
      t.integer :_dvd_blu_rays_actualite_id
      t.integer :_dvd_blu_rays_actualite_mini_id
      t.text :comment
      t.string :statut_prop
      t.string :acceptregles

      t.timestamps
    end
  end
end