# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Log in
#email: teacher@example.com
#password: adminadmin


User.create(name: 'teacher', email: 'teacher@example.com', password: 'adminadmin', password: 'adminadmin')

Test.create(name: 'Ruby On Rails #1', description: 'The first test.')
Test.create(name: 'Ruby On Rails #2', description: 'The second test.')
Test.create(name: 'Ruby On Rails #3', description: 'The third test.')


Question.create(name: 'What do you now about will-paginate?', test_id: '1')
Question.create(name: 'What do you now about devise?', test_id: '1')
Question.create(name: 'Ruby its object-oriented programming language?', test_id: '2')
Question.create(name: 'How to create directory?', test_id: '2')
Question.create(name: 'How to remove directory?', test_id: '3')
Question.create(name: 'What this ls command do?', test_id: '3')

Answer.create(name: 'I dont know', correct: false, question_id: '1' )
Answer.create(name: 'Will-paginate can divide per page', correct: true, question_id: '1' )
Answer.create(name: 'Yes', correct: true, question_id: '3')
Answer.create(name: 'No', correct: false, question_id: '3')
Answer.create(name: 'mkdir', correct: false, question_id: '5')
Answer.create(name: 'rmdir', correct: true, question_id: '5')
Answer.create(name: 'mkdir', correct: true, question_id: '4')
Answer.create(name: 'rmdir', correct: false, question_id: '4')
Answer.create(name: 'shows all files, directories that you have in directory', correct: true, question_id: '6')
Answer.create(name: 'nothing', correct: false, question_id: '6')
Answer.create(name: 'That gem make you to make authorization', correct: true, question_id: '2')
Answer.create(name: 'nothing', correct: false, question_id: '2')




