# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(name: 'Ruslan', age: 22, email: 'fairus200599@gmail.com')
User.create(name: 'Almighty', age: 42, email: 'dont@need.it')

@backend = Category.create(title: 'Backend')
@frontend = Category.create(title: 'Frontend')

@test1 = @backend.tests.create(title: 'Ruby', level: 0)
@test2 = @backend.tests.create(title: 'Rails', level: 2)
@test3 = @frontend.tests.create(title: 'JavaScript', level: 1)
@test4 = @frontend.tests.create(title: 'HTML', level: 0)
@test5 = @frontend.tests.create(title: 'CSS', level: 1)

Question.create([{ body: 'Что вернет 2.superclass в версии Ruby 3.0?', test_id: 1 },
                 { body: 'Команда для отката миграций назад и обратно', test_id: 2 },
                 { body: 'Чему равно значение выражения 4 - "5" + 0xf - "1e1"?', test_id: 3 },
                 { body: 'Каким является следующий адрес ссылки: pages/page2.html', test_id: 4 },
                 { body: 'Какое свойство CSS определяет размер текста', test_id: 5 }])

Answer.create([{ body: 'Fixnum', question_id: 1 },
               { body: 'Integer', question_id: 1, correct: true },
               { body: 'rails db:rollback', question_id: 2 },
               { body: 'rails db:migrate:redo', question_id: 2, correct: true },
               { body: 'Строке', question_id: 3 },
               { body: 'Цифре', question_id: 3, correct: true },
               { body: 'Абсолютным', question_id: 4 },
               { body: 'Относительным', question_id: 4, correct: true },
               { body: 'text-size', question_id: 5 },
               { body: 'font-size', question_id: 5, correct: true }])
