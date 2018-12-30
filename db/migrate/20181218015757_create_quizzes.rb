class CreateQuizzes < ActiveRecord::Migration[5.2]
  def change
    create_table :quizzes do |t|
      t.string :name
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
