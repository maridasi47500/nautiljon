class CreateDoujins < ActiveRecord::Migration[7.1]
  def change
    create_table :_doujins do |t|
      t.string :titre
      t.string :titre_original_latin
      t.string :titre_original
      t.string :titre_alternatif
      t.integer :_doujins_conventions_id
      t.string :ref
      t.string :date_jj
      t.string :date_mm
      t.string :date_aaaa
      t.integer :_doujins_role_id
      t.integer :_doujins_people_id
      t.string :cercle
      t.string :image
      t.text :infos
      t.integer :_doujins_genres_id
      t.integer :_doujins_groupes_id
      t.integer :_doujins_anime_id
      t.integer :_doujins_ln_id
      t.integer :_doujins_drama_id
      t.integer :_doujins_am_id
      t.integer :_doujins_jv_id
      t.integer :_doujins_doujin_id
      t.integer :_doujins_artbook_id
      t.text :comment
      
      t.string :statut_prop
      t.string :acceptregles

      t.timestamps
    end
  end
end