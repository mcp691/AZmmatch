class AddClaimedToOrganizations < ActiveRecord::Migration[5.2]
  def change
    add_column :organizations, :claimed, :boolean, default: false
  end
end
