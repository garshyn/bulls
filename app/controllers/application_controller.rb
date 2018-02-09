class ApplicationController < ActionController::Base
  include Clearance::Controller
  protect_from_forgery with: :exception

  before_action :login
private

  def login
    unless signed_in?
      user = User.create email: "user#{User.last.id}@example.com", password: '123'
      sign_in(user)
    end
  end
end
