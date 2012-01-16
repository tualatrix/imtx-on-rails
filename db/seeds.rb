# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'date'

Post.delete_all

Post.create(title: 'Hello World',
            content: 'This is your first post',
            post_type: 'post',
            date: DateTime.new(2012,1,13,12))

Post.create(title: 'Hello Rails',
            content: 'This is your second post',
            post_type: 'post',
            date: DateTime.new(2012,1,14,12))
