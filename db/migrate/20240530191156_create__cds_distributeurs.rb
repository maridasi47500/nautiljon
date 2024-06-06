class CreateCdsDistributeurs < ActiveRecord::Migration[7.1]
  def change
    create_table :_cds_distributeurs do |t|
      t.string :name

      t.timestamps
    end
  end
end