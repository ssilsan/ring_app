class HomeController < ApplicationController
  layout 'application'
  before_action :authenticate_user!, only: :login_check
  def top; end

  def login_check
    @user = current_user
    @msg = 'user created at: ' + @user.created_at.to_s
  end
end
