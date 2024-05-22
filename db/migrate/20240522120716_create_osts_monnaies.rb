class CreateOstsMonnaies < ActiveRecord::Migration[7.1]
  def change
    create_table :osts_monnaies do |t|
      t.string :name

      t.timestamps
    end
  end
end
