class CreateHumen < ActiveRecord::Migration[5.0]
  def change
    create_table :humen do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.integer :smile_count

      t.timestamps
    end
  end
end
