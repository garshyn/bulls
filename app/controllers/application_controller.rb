class ApplicationController < ActionController::Base
  include Clearance::Controller
  protect_from_forgery with: :exception

  before_action :login
private

  def login
    sign_in(User.first) unless signed_in?
  end
end
