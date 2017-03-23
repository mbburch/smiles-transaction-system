class CreateTransfers < ActiveRecord::Migration[5.0]
  def change
    create_table :transfers do |t|
      t.integer :smile_count
      t.references :humen, foreign_key: true

      t.timestamps
    end
  end
end
