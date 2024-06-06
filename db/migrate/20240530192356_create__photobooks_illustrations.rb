class CreatePhotobooksIllustrations < ActiveRecord::Migration[7.1]
  def change
    create_table :_photobooks_illustrations do |t|
      t.string :name

      t.timestamps
    end
  end
end