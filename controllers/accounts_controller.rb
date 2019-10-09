class AccountsController < ApplicationController
  before_action  :login_required

  def show
    @member = current_member
  end

  def edit
    @member = current_member
  end

  def update
    @member = current_member
    @member.assign_attributes(account_params)
    if @member.save
      redirect_to :account, notice: "アカウント情報を更新しました。"
    else
      render "edit"
    end
  end
#ストロングパラメーター
private def account_params
  params.require(:account).permit(
    :age,
    :name,
    :full_name,
    :sex,
    :qiita_account,
    :twitter_account,
    :email
  )
 end
end