class ThankificationsController < ApplicationController
  before_action :set_thankification, only: [:show, :update, :destroy]

  # GET /thankifications
  def index
    @thankifications = Thankification.all

    render json: @thankifications, include: :gratitudes
  end

  # GET /thankifications/1
  def show
    render json: @thankification
  end

  # POST /thankifications
  def create
    @thankification = Thankification.new(thankification_params)

    if @thankification.save
      render json: @thankification, status: :created, location: @thankification
    else
      render json: @thankification.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /thankifications/1
  def update
    if @thankification.update(thankification_params)
      render json: @thankification
    else
      render json: @thankification.errors, status: :unprocessable_entity
    end
  end

  # DELETE /thankifications/1
  def destroy
    @thankification.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thankification
      @thankification = Thankification.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def thankification_params
      params.require(:thankification).permit(gratitudes_attributes: [:body])
    end
end
