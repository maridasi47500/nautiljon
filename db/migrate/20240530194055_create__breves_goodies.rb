class CreateBrevesGoodies < ActiveRecord::Migration[7.1]
  def change
    create_table :_breves_goodies do |t|
      t.string :name

      t.timestamps
    end
  end
end