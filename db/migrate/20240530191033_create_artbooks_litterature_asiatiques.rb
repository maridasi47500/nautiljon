class CreateArtbooksLitteratureAsiatiques < ActiveRecord::Migration[7.1]
  def change
    create_table :artbooks_litterature_asiatiques do |t|
      t.string :name

      t.timestamps
    end
  end
end