class CreateFicheUnivers < ActiveRecord::Migration[7.1]
  def change
    create_table :_fiche_univers do |t|
      t.string :nom
      t.string :nom_alternatif
      t.string :nom_suite
      t.string :nom_original
      t.string :image
      t.integer :_fiche_univers_cat_id
      t.text :description
      t.integer :_fiche_univers_groupes_id
      t.integer :_fiche_univers_univers_id
      t.integer :_fiche_univers_anime_id
      t.integer :_fiche_univers_perso_id
      t.integer :_fiche_univers_manga_id
      t.integer :_fiche_univers_perso_manga_id
      t.integer :_fiche_univers_ln_id
      t.integer :_fiche_univers_doujinshi_id
      t.integer :_fiche_univers_jv_id
      t.integer :_fiche_univers_jv_perso_id
      t.integer :_fiche_univers_drama_id
      t.integer :_fiche_univers_am_id
      t.integer :_fiche_univers_litterature_asiatique_id
      t.integer :_fiche_univers_people_id
      t.integer :_fiche_univers_actualite_id
      t.integer :_fiche_univers_actualite_mini_id
      t.integer :_fiche_univers_culture_id
      t.text :comment
      t.string :statut_prop
      t.string :acceptregles

      t.timestamps
    end
  end
end