class InitialUsersController < ApplicationController

  respond_to :json

  def create
    i = InitialUser.new
    i.email = params["user"]["email"]
    InitialUserMailer.signup(i).deliver if i.save
    render json: {response: "success"}
  end

end