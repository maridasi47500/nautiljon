class CreateDramasActeurs < ActiveRecord::Migration[7.1]
  def change
    create_table :_dramas_acteurs do |t|
      t.string :name

      t.timestamps
    end
  end
end