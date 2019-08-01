class Api::V1::TrainingsController < ApplicationController
  protect_from_forgery unless: -> { request.format.json? }

  def index
    render json: Training.all
  end

  def show
    render json: Training.find(params[:id])
  end

  def create
    training = Training.new(
      title: training_params[:title],
      description: training_params[:description],
      date: training_params[:date],
      time: training_params[:time],
      min: training_params[:min],
      max: training_params[:max]
    )

      training.user = current_user
      if training.save
      render json: training
      else
        render json: {error: "Training could not be uploaded"}
    end
  end
end

private

def training_params
  params.require(:training).permit(
    :title,
    :description,
    :date,
    :time,
    :min,
    :max
  )
end
