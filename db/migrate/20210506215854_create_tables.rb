class CreateTables < ActiveRecord::Migration[6.1]
  def change
    create_table :tables do |t|
      t.integer :table__num
      t.belongs_to :server, null: false, foreign_key: true

      t.timestamps
    end
  end
end
