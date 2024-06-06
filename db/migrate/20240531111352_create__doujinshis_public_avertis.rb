class CreateDoujinshisPublicAvertis < ActiveRecord::Migration[7.1]
  def change
    create_table :_doujinshis_public_avertis do |t|
      t.string :name

      t.timestamps
    end
  end
end