class CreateJeuxVideosDramas < ActiveRecord::Migration[7.1]
  def change
    create_table :_jeux_videos_dramas do |t|
      t.string :name

      t.timestamps
    end
  end
end