class CreateAnimesLitteratureAsiatiques < ActiveRecord::Migration[7.1]
  def change
    create_table :animes_litterature_asiatiques do |t|
      t.string :name

      t.timestamps
    end
  end
end