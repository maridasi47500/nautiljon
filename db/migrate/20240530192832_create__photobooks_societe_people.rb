class CreatePhotobooksSocietePeople < ActiveRecord::Migration[7.1]
  def change
    create_table :_photobooks_societe_people do |t|
      t.string :name

      t.timestamps
    end
  end
end