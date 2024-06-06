class CreateGeneriqueDeJeuVideosJvs < ActiveRecord::Migration[7.1]
  def change
    create_table :_generique_de_jeu_videos_jvs do |t|
      t.string :name

      t.timestamps
    end
  end
end