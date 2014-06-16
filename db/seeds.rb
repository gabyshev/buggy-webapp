# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(email: 'admin@test.com',
  encrypted_password: '$2a$10$/oNGNwmfJ9O45PH5C/yRLemw8b5z5PoskFh6Ftt74VTX4zl6RzZWG',
  role: 'admin')
User.create(email: 'moderator@test.com',
  encrypted_password: '$2a$10$/oNGNwmfJ9O45PH5C/yRLemw8b5z5PoskFh6Ftt74VTX4zl6RzZWG',
  role: 'moderator')
User.create(email: 'user1@test.com',
  encrypted_password: '$2a$10$/oNGNwmfJ9O45PH5C/yRLemw8b5z5PoskFh6Ftt74VTX4zl6RzZWG',
  role: 'author')
User.create(email: 'user2@test.com',
  encrypted_password: '$2a$10$/oNGNwmfJ9O45PH5C/yRLemw8b5z5PoskFh6Ftt74VTX4zl6RzZWG',
  role: 'author')
