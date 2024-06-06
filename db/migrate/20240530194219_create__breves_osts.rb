class CreateBrevesOsts < ActiveRecord::Migration[7.1]
  def change
    create_table :_breves_osts do |t|
      t.string :name

      t.timestamps
    end
  end
end