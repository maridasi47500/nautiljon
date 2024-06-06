class CreateDramasJvPlus < ActiveRecord::Migration[7.1]
  def change
    create_table :_dramas_jv_plus do |t|
      t.string :name

      t.timestamps
    end
  end
end