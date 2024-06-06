class CreateBreves < ActiveRecord::Migration[7.1]
  def change
    create_table :_breves do |t|
      t.string :titre
      t.integer :_breves_cat_id
      t.string :image
      t.text :texte
      t.string :tags
      t.string :source
      t.string :source_url
      t.string :source2
      t.string :source2_url
      t.string :source3
      t.string :source3_url
      t.integer :_breves_actualite_id
      t.integer :_breves_actualite_mini_id
      t.integer :_breves_people_id
      t.integer :_breves_anime_id
      t.integer :_breves_ln_id
      t.integer :_breves_manga_id
      t.integer :_breves_drama_id
      t.integer :_breves_am_id
      t.integer :_breves_litterature_asiatique_id
      t.integer :_breves_livre_jeunesse_id
      t.integer :_breves_magazine_id
      t.integer :_breves_beau_livre_id
      t.integer :_breves_jv_id
      t.integer :_breves_dvd_id
      t.integer :_breves_artbook_id
      t.integer :_breves_photobook_id
      t.integer :_breves_goodies_id
      t.integer :_breves_cinema_id
      t.integer :_breves_evenement_id
      t.integer :_breves_concerts_id
      t.integer :_breves_recette_id
      t.integer :_breves_cd_id
      t.integer :_breves_ost_id
      t.integer :_breves_amv_id
      t.integer :_breves_clip_id
      t.integer :_breves_emission_tv_id
      t.integer :_breves_emission_tv_numero_id
      t.integer :_breves_sondage_id
      t.integer :_breves_quizz_id
      t.integer :_breves_concours_id
      t.integer :_breves_manga_editeur_id
      t.integer :_breves_anime_studio_id
      t.integer :_breves_jv_societe_id
      t.integer :_breves_societe_id
      t.integer :_breves_culture_id
      t.text :comment
      t.string :statut_prop
      t.string :acceptregles

      t.timestamps
    end
  end
end