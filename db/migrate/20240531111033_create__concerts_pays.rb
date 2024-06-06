class CreateConcertsPays < ActiveRecord::Migration[7.1]
  def change
    create_table :_concerts_pays do |t|
      t.string :name

      t.timestamps
    end
  end
end