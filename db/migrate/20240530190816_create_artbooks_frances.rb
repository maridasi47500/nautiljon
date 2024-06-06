class CreateArtbooksFrances < ActiveRecord::Migration[7.1]
  def change
    create_table :artbooks_frances do |t|
      t.string :name

      t.timestamps
    end
  end
end