class CreateDoujinsGroupes < ActiveRecord::Migration[7.1]
  def change
    create_table :_doujins_groupes do |t|
      t.string :name

      t.timestamps
    end
  end
end