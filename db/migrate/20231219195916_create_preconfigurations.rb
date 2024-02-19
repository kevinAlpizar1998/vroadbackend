class CreatePreconfigurations < ActiveRecord::Migration[7.1]
  def change
    create_table :preconfigurations do |t|
      t.references :category, null: false, foreign_key: true
      t.references :task, null: false, foreign_key: true

      t.timestamps
    end
  end
end
