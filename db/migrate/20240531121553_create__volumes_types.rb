class CreateVolumesTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :_volumes_types do |t|
      t.string :name

      t.timestamps
    end
  end
end