class SqueaksController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def create
    Squeak.create!(
      message: params[:squeak][:message],
      user: current_user
    )

    redirect_to action: :index
  end
end
