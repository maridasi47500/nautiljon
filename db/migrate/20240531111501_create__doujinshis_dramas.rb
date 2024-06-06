class CreateDoujinshisDramas < ActiveRecord::Migration[7.1]
  def change
    create_table :_doujinshis_dramas do |t|
      t.string :name

      t.timestamps
    end
  end
end