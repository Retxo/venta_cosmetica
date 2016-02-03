class CreateRelationExfoliantes < ActiveRecord::Migration
  def change
    create_table :relation_exfoliantes do |t|
      t.integer :numero_terapia
      t.references :exfoliante, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
