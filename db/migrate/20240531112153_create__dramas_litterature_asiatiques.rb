class CreateDramasLitteratureAsiatiques < ActiveRecord::Migration[7.1]
  def change
    create_table :_dramas_litterature_asiatiques do |t|
      t.string :name

      t.timestamps
    end
  end
end