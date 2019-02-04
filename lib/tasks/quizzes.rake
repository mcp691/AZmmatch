namespace :quizzes do
  # Deletes all the quizzes to avoid bloating the database
  desc "Delete all quizzes every day"
  task delete_old_quizzes: :environment do
    Quiz.destroy_all
 end

end
