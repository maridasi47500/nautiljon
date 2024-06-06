class CreateNumeroDemissionTvs < ActiveRecord::Migration[7.1]
  def change
    create_table :_numero_demission_tvs do |t|
      t.integer :_numero_demission_tvs_id_emission_tv_id
      t.string :titre
      t.string :titre_original
      t.string :date_jj
      t.string :date_mm
      t.string :date_aaaa
      t.integer :_numero_demission_tvs_special_id
      t.string :duree
      t.integer :_numero_demission_tvs_presentateur_id
      t.integer :_numero_demission_tvs_people_id
      t.string :image
      t.text :infos
      t.string :youtube
      t.integer :_numero_demission_tvs_emission_tv_numero_id
      t.integer :_numero_demission_tvs_clip_id
      t.text :comment
      t.string :statut_prop
      t.string :acceptregles

      t.timestamps
    end
  end
end