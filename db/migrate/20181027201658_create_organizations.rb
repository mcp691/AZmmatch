class CreateOrganizations < ActiveRecord::Migration[5.2]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :website
      t.text :mission
      t.string :memberlink
      t.string :city
      t.text :issues
      t.string :gender
      t.string :race

      t.timestamps
    end
  end
end
