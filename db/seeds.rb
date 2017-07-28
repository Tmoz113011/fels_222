User.create! name: "Example User", emails: "tmoz113011@gmail.com",
 password: "123456", password_confirmation: "123456", is_admin: true

40.times do |user|
  user_id = user+1
  name  = Faker::Name.name
  email = "user-#{user+1}@gmail.com"
  password = "password"
  User.create! name: name, emails: email, password: password,
    password_confirmation: password
  10.times do |i|
    activity_type  = Faker::Lorem.sentence(4)
    Activity.create! activity_type: activity_type, user_id: user_id
  end
end

10.times do |category|
  name = "Category #{category+1}"
  Category.create! name:  name
end

5.times do |category|
  category_id = category+1;
  20.times do |i|
    content = "question #{i+1} #{category_id}"
    word = Word.create!(category_id: category_id, content: content)
    content_answer1 = "content 1"
    Answer.create!(word_id:  word.id, content: content_answer1, is_correct: true)
    content_answer2 = "content 2"
    Answer.create!(word_id:  word.id, content: content_answer2, is_correct: false)
    content_answer3 = "content 3"
    Answer.create!(word_id:  word.id, content: content_answer3, is_correct: false)
    content_answer4 = "content 4"
  end
end
