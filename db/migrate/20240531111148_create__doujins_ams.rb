class CreateDoujinsAms < ActiveRecord::Migration[7.1]
  def change
    create_table :_doujins_ams do |t|
      t.string :name

      t.timestamps
    end
  end
end