class CreateLightNovelsEditeursVfCollections < ActiveRecord::Migration[7.1]
  def change
    create_table :_light_novels_editeurs_vf_collections do |t|
      t.string :name

      t.timestamps
    end
  end
end