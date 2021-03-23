class AddCamperToSignups < ActiveRecord::Migration[6.0]
  def change
    add_column :signups, :camper_id, :integer
  end
end
