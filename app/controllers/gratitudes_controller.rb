class GratitudesController < ApplicationController
  before_action :set_gratitude, only: [:show, :update, :destroy]

  # GET /gratitudes
  def index
    @gratitudes = Gratitude.all

    render json: @gratitudes
  end

  # GET /gratitudes/1
  def show
    render json: @gratitude
  end

  # POST /gratitudes
  def create
    @gratitude = Gratitude.new(gratitude_params)

    if @gratitude.save
      render json: @gratitude, status: :created, location: @gratitude
    else
      render json: @gratitude.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /gratitudes/1
  def update
    if @gratitude.update(gratitude_params)
      render json: @gratitude
    else
      render json: @gratitude.errors, status: :unprocessable_entity
    end
  end

  # DELETE /gratitudes/1
  def destroy
    @gratitude.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gratitude
      @gratitude = Gratitude.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def gratitude_params
      params.require(:gratitude).permit(:body, :thankification_id)
    end
end
