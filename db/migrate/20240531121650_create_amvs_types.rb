class CreateAmvsTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :amvs_types do |t|
      t.string :name

      t.timestamps
    end
  end
end