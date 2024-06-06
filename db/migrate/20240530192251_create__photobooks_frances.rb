class CreatePhotobooksFrances < ActiveRecord::Migration[7.1]
  def change
    create_table :_photobooks_frances do |t|
      t.string :name

      t.timestamps
    end
  end
end