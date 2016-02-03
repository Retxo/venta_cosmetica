class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :nombre
      t.integer :edad
      t.integer :tipo_piel
      t.integer :sensibilidad
      t.integer :poros
      t.integer :rojeces
      t.integer :acne

      t.timestamps null: false
    end
  end
end
