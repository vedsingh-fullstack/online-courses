# frozen_string_literal: true

first_author = Author.create!(first_name: 'Dave', last_name: 'Thomas')
second_author = Author.create!(first_name: 'Robert', last_name: 'Martin')

first_book = Course.create!(title: 'The Pragamatic Programmer',
                            description: 'From Journeyman to Master to become the Pragmatic Programmer',
                            released_on: '1999-10-20', author: first_author)

second_book = Course.create!(title: 'Clean Code',
                             description: 'A Handbook of Agile Software Craftsmanship', released_on: '2008-08-20', author: second_author)

programming_talent = Talent.create!(name: 'Software Development')

architecture_talent = Talent.create!(name: 'Software Architecture')

first_book.course_talents.create!(talent: programming_talent)
second_book.course_talents.create!(talent: architecture_talent)
