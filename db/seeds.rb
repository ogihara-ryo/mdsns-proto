(1..3).each do |i|
  User.create!(
    name: "User#{i}",
    nickname: "user#{i}",
    avatar_url: 'https://avatars2.githubusercontent.com/u/0?v=4'
  )
end
