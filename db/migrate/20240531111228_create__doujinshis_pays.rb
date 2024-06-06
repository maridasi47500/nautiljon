class CreateDoujinshisPays < ActiveRecord::Migration[7.1]
  def change
    create_table :_doujinshis_pays do |t|
      t.string :name

      t.timestamps
    end
  end
end