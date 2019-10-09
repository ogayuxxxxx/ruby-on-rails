class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :name, null:false                            #ユーザー名
      t.string :full_name                                   #本名
      t.string :twitter_account                             #twitterアカウント 
      t.string :email                                       #メールアドレス
      t.string :qiita_account                               #キータアカウント
      t.integer :age                                        #年齢
      t.integer :sex, null: false,  default: 1              #性別(1:男,2女)
      t.boolean :administrator, null: false, default: false #管理人フラグ
      t.string  :langege                                    #得意な言語
      t.timestamps
    end
  end
end
