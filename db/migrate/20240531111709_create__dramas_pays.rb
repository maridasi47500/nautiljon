class CreateDramasPays < ActiveRecord::Migration[7.1]
  def change
    create_table :_dramas_pays do |t|
      t.string :name

      t.timestamps
    end
  end
end