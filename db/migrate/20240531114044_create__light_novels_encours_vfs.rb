class CreateLightNovelsEncoursVfs < ActiveRecord::Migration[7.1]
  def change
    create_table :_light_novels_encours_vfs do |t|
      t.string :name

      t.timestamps
    end
  end
end