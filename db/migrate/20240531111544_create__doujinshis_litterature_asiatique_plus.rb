class CreateDoujinshisLitteratureAsiatiquePlus < ActiveRecord::Migration[7.1]
  def change
    create_table :_doujinshis_litterature_asiatique_plus do |t|
      t.string :name

      t.timestamps
    end
  end
end