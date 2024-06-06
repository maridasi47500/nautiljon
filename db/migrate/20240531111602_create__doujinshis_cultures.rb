class CreateDoujinshisCultures < ActiveRecord::Migration[7.1]
  def change
    create_table :_doujinshis_cultures do |t|
      t.string :name

      t.timestamps
    end
  end
end