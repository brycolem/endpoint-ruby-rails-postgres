class ApplicationsController < ApplicationController
  def index
    @application = Application.includes(:notes).all
    render json: @application, include: :notes
  end

  def show
    @application = Application.find(params[:id])
    render json: @application, include: :notes
  end
end
