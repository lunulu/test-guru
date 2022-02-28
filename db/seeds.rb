# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

@user1 = User.create(name: 'Ruslan', age: 22, email: 'fairus200599@gmail.com')
@user2 = User.create(name: 'Almighty', age: 42, email: 'dont@need.it')

@backend = Category.create(title: 'Backend')
@frontend = Category.create(title: 'Frontend')

@test1 = @backend.tests.create(title: 'Ruby', level: 0)
@test2 = @backend.tests.create(title: 'Rails', level: 2)
@test3 = @frontend.tests.create(title: 'JavaScript', level: 1)
@test4 = @frontend.tests.create(title: 'HTML', level: 0)
@test5 = @frontend.tests.create(title: 'CSS', level: 1)

@question1 = @test1.questions.create(body: 'Что вернет 2.superclass в версии Ruby 3.0?')
@question2 = @test2.questions.create(body: 'Команда для отката миграций назад и обратно')
@question3 = @test3.questions.create(body: 'Чему равно значение выражения 4 - "5" + 0xf - "1e1"?')
@question4 = @test4.questions.create(body: 'Каким является следующий адрес ссылки: pages/page2.html')
@question5 = @test5.questions.create(body: 'Какое свойство CSS определяет размер текста')

@answer11 = @question1.answers.create(body: 'Fixnum')
@answer12 = @question1.answers.create(body: 'Integer', correct: true)
@answer21 = @question2.answers.create(body: 'rails db:rollback')
@answer22 = @question2.answers.create(body: 'rails db:migrate:redo', correct: true)
@answer31 = @question3.answers.create(body: 'Строке')
@answer32 = @question3.answers.create(body: 'Цифре', correct: true)
@answer41 = @question4.answers.create(body: 'Абсолютным')
@answer42 = @question4.answers.create(body: 'Относительным', correct: true)
@answer51 = @question5.answers.create(body: 'text-size')
@answer52 = @question5.answers.create(body: 'font-size', correct: true)

@user1.user_tests_histories.create(test: @test1, completed: true)
@user1.user_tests_histories.create(test: @test3, completed: false)
@user2.user_tests_histories.create(test: @test2, completed: true)
