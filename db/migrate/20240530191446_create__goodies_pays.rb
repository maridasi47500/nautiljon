class CreateGoodiesPays < ActiveRecord::Migration[7.1]
  def change
    create_table :_goodies_pays do |t|
      t.string :name

      t.timestamps
    end
  end
end