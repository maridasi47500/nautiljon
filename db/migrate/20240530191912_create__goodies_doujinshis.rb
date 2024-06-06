class CreateGoodiesDoujinshis < ActiveRecord::Migration[7.1]
  def change
    create_table :_goodies_doujinshis do |t|
      t.string :name

      t.timestamps
    end
  end
end