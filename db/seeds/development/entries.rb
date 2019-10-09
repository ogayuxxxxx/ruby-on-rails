body =
  "こんにちは、初めましてruby on railsのポートフォリオです。"


  %w(Yuusuke Kenta Yuuichiro).each do |name|
     member = Member.find_by(name: name)
     0.upto(4) do |idx|
        Entry.create(
            author: member,
            title: "ポートフォリオ#{idx}",
            body: body,
            posted_at: 10.days.ago.advance(days: idx),
            status: %w(draft member_only public)[idx % 3]
        )
     end
    end