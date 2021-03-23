class RemoveColumnFromSignups < ActiveRecord::Migration[6.0]
  def change
    remove_index :signups, :activity_id
    remove_column :signups, :activity_id, :string
  end
end
