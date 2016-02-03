class CreateRelationHigienes < ActiveRecord::Migration
  def change
    create_table :relation_higienes do |t|
      t.integer :numero_terapia
      t.references :higiene, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
