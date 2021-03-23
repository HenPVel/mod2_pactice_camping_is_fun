class RemoveCamperIdFromSignups < ActiveRecord::Migration[6.0]
  def change
    remove_column :signups, :camper_id, :integer
  end
end
