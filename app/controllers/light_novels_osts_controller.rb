class LightNovelsOstsController < ApplicationController
  before_action :set__light_novels_ost, only: %i[ show edit update destroy ]

  # GET /_light_novels_osts or /_light_novels_osts.json
  def index
    @_light_novels_osts = LightNovelsOst.all
  end

  # GET /_light_novels_osts/1 or /_light_novels_osts/1.json
  def show
  end

  # GET /_light_novels_osts/new
  def new
    @_light_novels_ost = LightNovelsOst.new
  end

  # GET /_light_novels_osts/1/edit
  def edit
  end

  # POST /_light_novels_osts or /_light_novels_osts.json
  def create
    @_light_novels_ost = LightNovelsOst.new(_light_novels_ost_params)

    respond_to do |format|
      if @_light_novels_ost.save
        format.html { redirect_to light_novels_ost_url(@_light_novels_ost), notice: "Light novels ost was successfully created." }
        format.json { render :show, status: :created, location: @_light_novels_ost }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_light_novels_ost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_light_novels_osts/1 or /_light_novels_osts/1.json
  def update
    respond_to do |format|
      if @_light_novels_ost.update(_light_novels_ost_params)
        format.html { redirect_to light_novels_ost_url(@_light_novels_ost), notice: "Light novels ost was successfully updated." }
        format.json { render :show, status: :ok, location: @_light_novels_ost }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_light_novels_ost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_light_novels_osts/1 or /_light_novels_osts/1.json
  def destroy
    @_light_novels_ost.destroy!

    respond_to do |format|
      format.html { redirect_to light_novels_osts_url, notice: "Light novels ost was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__light_novels_ost
      @_light_novels_ost = LightNovelsOst.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _light_novels_ost_params
      params.require(:light_novels_ost).permit(:name)
    end
end
