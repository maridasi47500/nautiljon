class CreateLightNovelsActualiteMinis < ActiveRecord::Migration[7.1]
  def change
    create_table :_light_novels_actualite_minis do |t|
      t.string :name

      t.timestamps
    end
  end
end