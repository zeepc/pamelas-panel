# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(first_name:'David', last_name: 'Patlut', email: 'david@mail.com', password: '123123', age: 44, degree: 'Masters', role: 'Instructor')
User.create(first_name:'Sherlock', last_name: 'Holmes', email: 'sherlock@mail.com', password: '123123', age: 40, degree: 'PhD', role: 'Instructor')
User.create(first_name:'Zee', last_name: 'Perez Canals', email: 'zee@mail.com', password: '123123', age: 18, degree: 'Masters', role: 'Administrator')
User.create(first_name:'Ian', last_name: 'Vee', email: 'ian@mail.com', password: '123123', age: 20, degree: 'Masters', role: 'Student')
User.create(first_name:'Kay', last_name: 'Mok', email: 'kay@mail.com', password: '123123', age: 21, degree: 'Masters', role: 'Student')


Course.create(name: 'SEI', total_hrs: 940)
Course.create(name: 'Intro to Algorithms', total_hrs: 440)

Cohort.create(name: 'SEI-Patlut', start:'2018-01-22', end: '2018-07-01', course_id: 1)
Cohort.create(name: 'IA-Holmes', start:'2018-01-22', end: '2018-05-01', course_id: 2)

Student.create(user_id: 4, cohort_id: 1, grade: 'A')
Student.create(user_id: 5, cohort_id: 2, grade: 'A')

Instructor.create(user_id: 1, cohort_id:1)
Instructor.create(user_id: 2, cohort_id:2)


Administrator.create(user_id:3)

