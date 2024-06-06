class CreateDramasLns < ActiveRecord::Migration[7.1]
  def change
    create_table :_dramas_lns do |t|
      t.string :name

      t.timestamps
    end
  end
end