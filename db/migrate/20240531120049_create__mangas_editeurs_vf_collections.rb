class CreateMangasEditeursVfCollections < ActiveRecord::Migration[7.1]
  def change
    create_table :_mangas_editeurs_vf_collections do |t|
      t.string :name

      t.timestamps
    end
  end
end