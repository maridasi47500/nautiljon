class CreateLightNovelsQuizzs < ActiveRecord::Migration[7.1]
  def change
    create_table :_light_novels_quizzs do |t|
      t.string :name

      t.timestamps
    end
  end
end