class CreateEntities < ActiveRecord::Migration[6.1]
  def change
    create_table :entities do |t|
      t.references :sentence
      t.string :text
      t.string :entity_type

      t.timestamps
    end
  end
end
