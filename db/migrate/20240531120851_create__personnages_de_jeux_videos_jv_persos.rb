class CreatePersonnagesDeJeuxVideosJvPersos < ActiveRecord::Migration[7.1]
  def change
    create_table :_personnages_de_jeux_videos_jv_persos do |t|
      t.string :name

      t.timestamps
    end
  end
end