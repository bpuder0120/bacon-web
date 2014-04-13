class Api::UsersController < ApplicationController

  skip_before_action :verify_authenticity_token
  before_action :cors_preflight_check, :restrict_access
  after_action :cors_set_access_control_headers
  respond_to :json

  def show
  end

  def create
    #wait for meeting tomorrow 
  end

  def update
  end

  def destroy
  end

  def transactions
  end

end