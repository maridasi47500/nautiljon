class CreateLightNovelsEditeursVfs < ActiveRecord::Migration[7.1]
  def change
    create_table :_light_novels_editeurs_vfs do |t|
      t.string :name

      t.timestamps
    end
  end
end