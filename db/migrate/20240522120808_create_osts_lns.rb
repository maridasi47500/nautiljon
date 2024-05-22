class CreateOstsLns < ActiveRecord::Migration[7.1]
  def change
    create_table :osts_lns do |t|
      t.string :name

      t.timestamps
    end
  end
end
