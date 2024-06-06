class CreateBrevesJvSocietes < ActiveRecord::Migration[7.1]
  def change
    create_table :_breves_jv_societes do |t|
      t.string :name

      t.timestamps
    end
  end
end