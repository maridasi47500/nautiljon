class CreateDoujinshisOrigines < ActiveRecord::Migration[7.1]
  def change
    create_table :_doujinshis_origines do |t|
      t.string :name

      t.timestamps
    end
  end
end