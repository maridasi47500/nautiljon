class CreateDoujinshisQuizzs < ActiveRecord::Migration[7.1]
  def change
    create_table :_doujinshis_quizzs do |t|
      t.string :name

      t.timestamps
    end
  end
end