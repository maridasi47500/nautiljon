class CreateParolesParoles < ActiveRecord::Migration[7.1]
  def change
    create_table :_paroles_paroles do |t|
      t.string :name

      t.timestamps
    end
  end
end