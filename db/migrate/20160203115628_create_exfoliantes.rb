class CreateExfoliantes < ActiveRecord::Migration
  def change
    create_table :exfoliantes do |t|
      t.string :nombre
      t.string :imagen

      t.timestamps null: false
    end
  end
end
