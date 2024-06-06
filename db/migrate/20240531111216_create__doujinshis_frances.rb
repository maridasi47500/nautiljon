class CreateDoujinshisFrances < ActiveRecord::Migration[7.1]
  def change
    create_table :_doujinshis_frances do |t|
      t.string :name

      t.timestamps
    end
  end
end