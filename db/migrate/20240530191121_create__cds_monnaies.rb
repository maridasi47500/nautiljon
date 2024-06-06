class CreateCdsMonnaies < ActiveRecord::Migration[7.1]
  def change
    create_table :_cds_monnaies do |t|
      t.string :name

      t.timestamps
    end
  end
end