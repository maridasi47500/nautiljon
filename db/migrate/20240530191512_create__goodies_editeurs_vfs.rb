class CreateGoodiesEditeursVfs < ActiveRecord::Migration[7.1]
  def change
    create_table :_goodies_editeurs_vfs do |t|
      t.string :name

      t.timestamps
    end
  end
end