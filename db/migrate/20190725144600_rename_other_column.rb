class RenameOtherColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :organizations, :other, :summary
  end
end
