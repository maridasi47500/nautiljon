class CreateDoujinsJvs < ActiveRecord::Migration[7.1]
  def change
    create_table :_doujins_jvs do |t|
      t.string :name

      t.timestamps
    end
  end
end