class CreateBrevesRecettes < ActiveRecord::Migration[7.1]
  def change
    create_table :_breves_recettes do |t|
      t.string :name

      t.timestamps
    end
  end
end