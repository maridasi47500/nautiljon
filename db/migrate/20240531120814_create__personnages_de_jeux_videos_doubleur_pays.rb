class CreatePersonnagesDeJeuxVideosDoubleurPays < ActiveRecord::Migration[7.1]
  def change
    create_table :_personnages_de_jeux_videos_doubleur_pays do |t|
      t.string :name

      t.timestamps
    end
  end
end