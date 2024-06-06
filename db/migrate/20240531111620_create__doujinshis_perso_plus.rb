class CreateDoujinshisPersoPlus < ActiveRecord::Migration[7.1]
  def change
    create_table :_doujinshis_perso_plus do |t|
      t.string :name

      t.timestamps
    end
  end
end