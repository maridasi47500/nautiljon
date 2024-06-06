class CreatePhotobooksEditeursVos < ActiveRecord::Migration[7.1]
  def change
    create_table :_photobooks_editeurs_vos do |t|
      t.string :name

      t.timestamps
    end
  end
end