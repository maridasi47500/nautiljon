class LightNovelsAmsController < ApplicationController
  before_action :set__light_novels_am, only: %i[ show edit update destroy ]

  # GET /_light_novels_ams or /_light_novels_ams.json
  def index
    @_light_novels_ams = LightNovelsAm.all
  end

  # GET /_light_novels_ams/1 or /_light_novels_ams/1.json
  def show
  end

  # GET /_light_novels_ams/new
  def new
    @_light_novels_am = LightNovelsAm.new
  end

  # GET /_light_novels_ams/1/edit
  def edit
  end

  # POST /_light_novels_ams or /_light_novels_ams.json
  def create
    @_light_novels_am = LightNovelsAm.new(_light_novels_am_params)

    respond_to do |format|
      if @_light_novels_am.save
        format.html { redirect_to _light_novels_am_url(@_light_novels_am), notice: "Light novels am was successfully created." }
        format.json { render :show, status: :created, location: @_light_novels_am }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_light_novels_am.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_light_novels_ams/1 or /_light_novels_ams/1.json
  def update
    respond_to do |format|
      if @_light_novels_am.update(_light_novels_am_params)
        format.html { redirect_to _light_novels_am_url(@_light_novels_am), notice: "Light novels am was successfully updated." }
        format.json { render :show, status: :ok, location: @_light_novels_am }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_light_novels_am.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_light_novels_ams/1 or /_light_novels_ams/1.json
  def destroy
    @_light_novels_am.destroy!

    respond_to do |format|
      format.html { redirect_to _light_novels_ams_url, notice: "Light novels am was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__light_novels_am
      @_light_novels_am = LightNovelsAm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _light_novels_am_params
      params.require(:_light_novels_am).permit(:name)
    end
end
