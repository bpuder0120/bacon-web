class Api::TransactionsController < ApplicationController

  skip_before_action :verify_authenticity_token
  before_action :cors_preflight_check, :restrict_access
  after_action :cors_set_access_control_headers
  respond_to :json

  def show
  end

  def index
  end

  def create
  end

  def update
  end

  def destroy
  end

end