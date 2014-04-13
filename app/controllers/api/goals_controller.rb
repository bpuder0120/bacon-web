class Api::GoalsController < ApplicationController

  skip_before_action :verify_authenticity_token
  before_action :cors_preflight_check, :restrict_access
  after_action :cors_set_access_control_headers
  respond_to :json

  def show  
  end

  def index
  end

  def create
    goal = Goal.new(
      name: params["name"],
      amount: params["amount"].to_i,
      image_url: params["image_url"],
      due_date: params["due_date"].to_datetime,
      user_id: params["user_id"].to_i
    )

    if goal.save
      render json: {
        response: "success",
        name: goal.name, 
        amount: goal.amount,
        image_url: goal.image_url,
        due_date: goal.due_date,
        user_id: goal.user_id
      }

    else
      render json: {
        response: "invalid"
      }
    end
  end

  def update
  end

  def destroy
  end

end