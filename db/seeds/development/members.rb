names = %w(Yuusuke Yuuichiro Kenta Yukihiro Youichi)
fnames = ["緒方", "湊", "勝又", "松本", "高橋"]
gnames = ["雄介", "雄一郎", "健太", "幸弘", "洋一"]
ages   = [28, 33, 35, 45, 65]
langeges = []
0.upto(4) do |idx|
 Member.create(
     name:  names[idx],
     full_name: "#{fnames[idx]} #{gnames[idx]}",
     email:  "#{names[idx]}@example.com",
     twitter_account: "#{names[idx]}@exmaple.t",
     qiita_account:  "#{names[idx]}@example.q",
     age:    ages[idx],
     sex:    [1,1,1,1,1][idx],
     langege:    langeges[idx],
     administrator: (idx == 0),
     password:  "engenaal",
     password_confirmation: "engenaal"
 )
 end

 0.upto(29) do |idx|
  Member.create(
      name: "John#{idx + 1}",
      full_name: "John Doe#{idx + 1}",
      email: "John#{idx + 1}@example.com",
      twitter_account: "John#{idx + 1}@example.t",
      qiita_account: "John#{idx + 1}@example.q",
      age: idx + 10,
      sex: 1,
      administrator: false,
      password: "password",
      password_confirmation: "password"
  )
 end