body = 
"プログラミングで使う英単語まとめ。?\n\n"





0.upto(4) do |idx|
  Article.create(
      title: "駆け出しエンジニアのためのQiita注目記事#{idx}",
      body: body,
      released_at: 8.days.ago.advance(days: idx),
      expired_at: 2.days.ago.advance(days: idx),
      member_only: (idx % 3 == 0)
  )
  end

  0.upto(29) do |idx|
    Article.create(
      title: "Article#{idx+10}",
      body: "blah, blah, blah...",
      released_at: 100.days.ago.advance(days: idx),
      expired_at: nil,
      member_only: false
    )
  end