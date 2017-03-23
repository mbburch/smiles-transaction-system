class ChangeDefaultSmileCountForHumans < ActiveRecord::Migration[5.0]
  def change
    change_column :humans, :smile_count, :integer, default: 0
  end
end
