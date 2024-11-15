# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:

task_titles = [
  "Clean the house",
  "Go to the gym",
  "Meditate/Journal",
  "Cook meals for the following days",
  "Practise guitar for atleast 1 hour",
  "Get groceries from the store",
  "Go and buy clothes",
  "Track calories/workout in app",
]
task_titles.each do |task_title|
  Task.find_or_create_by!(title: task_title)
end
