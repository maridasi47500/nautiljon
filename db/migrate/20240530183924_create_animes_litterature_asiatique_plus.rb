class CreateAnimesLitteratureAsiatiquePlus < ActiveRecord::Migration[7.1]
  def change
    create_table :animes_litterature_asiatique_plus do |t|
      t.string :name

      t.timestamps
    end
  end
end