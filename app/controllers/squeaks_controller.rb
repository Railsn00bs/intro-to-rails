class SqueaksController < ApplicationController
  def index
  end

  def create
    Squeak.create!(
      message: params[:squeak][:message],
      user: User.first
    )

    redirect_to action: :index
  end
end
