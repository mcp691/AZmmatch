class CreateOrganizations < ActiveRecord::Migration[5.2]
  def change
    create_table :organizations do |t|
      t.references :user_org, foreign_key: true
      t.string :name
      t.string :website
      t.text :mission
      t.string :memberlink
      t.text :other
      t.string :city
      t.text :issues
      t.string :gender
      t.string :skills
      t.string :race
      t.string :ability
      t.string :age
      t.string :religion
      t.string :class_background
      t.string :occupation
      t.string :immigration_status
      t.string :incarceration_status
      t.string :housing_status
      t.string :commitment

      t.timestamps
    end
  end
end
