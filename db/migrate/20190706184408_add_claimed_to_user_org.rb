class AddClaimedToUserOrg < ActiveRecord::Migration[5.2]
  def change
    add_column :user_orgs, :claimed, :boolean, default: false
  end
end
