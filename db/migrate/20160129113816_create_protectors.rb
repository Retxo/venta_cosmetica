class CreateProtectors < ActiveRecord::Migration
  def change
    create_table :protectors do |t|
      t.string :nombre
      t.string :imagen

      t.timestamps null: false
    end
  end
end
