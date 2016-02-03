class CreateRelationProtectors < ActiveRecord::Migration
  def change
    create_table :relation_protectors do |t|
      t.integer :numero_terapia
      t.references :protector, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
