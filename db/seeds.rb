# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

(1..3).each do|i|
    User.create(email: "a#{i}@aaa", password: "12341234", password_confirmation: "12341234")
    
    (1..3).each do |p|
     Post.create(user_id: i, title: "#{i}가 쓴 p번째 글", content: "#{i}가 쓴 p번째 글")
    end
end

User.first.add_role 'admin'
User.second.add_role 'manager'
User.third.add_role 'newbie'