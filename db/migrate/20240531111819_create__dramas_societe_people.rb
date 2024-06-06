class CreateDramasSocietePeople < ActiveRecord::Migration[7.1]
  def change
    create_table :_dramas_societe_people do |t|
      t.string :name

      t.timestamps
    end
  end
end