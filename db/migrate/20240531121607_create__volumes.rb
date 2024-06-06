class CreateVolumes < ActiveRecord::Migration[7.1]
  def change
    create_table :_volumes do |t|
      t.integer :_volumes_ln_id
      t.string :numero
      t.integer :_volumes_type_id
      t.string :numerique
      t.string :image
      t.string :image_nc
      t.string :image_vo
      t.string :image_vo2
      t.string :date_parution_vo_jj
      t.string :date_parution_vo_mm
      t.string :date_parution_vo_aaaa
      t.string :date_parution_vf_jj
      t.string :date_parution_vf_mm
      t.string :date_parution_vf_aaaa
      t.string :prix
      t.string :prix_vo
      t.string :pages
      t.integer :_volumes_illustrations_id
      t.string :ean
      t.string :relie
      t.string :sous_jaquette
      t.text :resume
      t.text :chapitres
      t.text :infos
      t.string :preview
      t.text :comment
      t.string :statut_prop
      t.string :acceptregles

      t.timestamps
    end
  end
end