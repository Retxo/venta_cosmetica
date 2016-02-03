class CreateHidratantes < ActiveRecord::Migration
  def change
    create_table :hidratantes do |t|
      t.string :nombre
      t.string :imagen

      t.timestamps null: false
    end
  end
end
