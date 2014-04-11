class InitialUsersController < ApplicationController

  respond_to :json

  def create
    i = InitialUser.new
    i.email = params["user"]["email"]
    i.save
    render json: {response: "success"}
  end

end