class CreatePhotobooksGoodies < ActiveRecord::Migration[7.1]
  def change
    create_table :_photobooks_goodies do |t|
      t.string :name

      t.timestamps
    end
  end
end