class CreateRelationHidratantes < ActiveRecord::Migration
  def change
    create_table :relation_hidratantes do |t|
      t.integer :numero_terapia
      t.references :hidratante, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
