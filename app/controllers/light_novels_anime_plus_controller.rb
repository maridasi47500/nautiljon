class LightNovelsAnimePlusController < ApplicationController
  before_action :set__light_novels_anime_plu, only: %i[ show edit update destroy ]

  # GET /_light_novels_anime_plus or /_light_novels_anime_plus.json
  def index
    @_light_novels_anime_plus = LightNovelsAnimePlu.all
  end

  # GET /_light_novels_anime_plus/1 or /_light_novels_anime_plus/1.json
  def show
  end

  # GET /_light_novels_anime_plus/new
  def new
    @_light_novels_anime_plu = LightNovelsAnimePlu.new
  end

  # GET /_light_novels_anime_plus/1/edit
  def edit
  end

  # POST /_light_novels_anime_plus or /_light_novels_anime_plus.json
  def create
    @_light_novels_anime_plu = LightNovelsAnimePlu.new(_light_novels_anime_plu_params)

    respond_to do |format|
      if @_light_novels_anime_plu.save
        format.html { redirect_to light_novels_anime_plu_url(@_light_novels_anime_plu), notice: "Light novels anime plu was successfully created." }
        format.json { render :show, status: :created, location: @_light_novels_anime_plu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_light_novels_anime_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_light_novels_anime_plus/1 or /_light_novels_anime_plus/1.json
  def update
    respond_to do |format|
      if @_light_novels_anime_plu.update(_light_novels_anime_plu_params)
        format.html { redirect_to light_novels_anime_plu_url(@_light_novels_anime_plu), notice: "Light novels anime plu was successfully updated." }
        format.json { render :show, status: :ok, location: @_light_novels_anime_plu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_light_novels_anime_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_light_novels_anime_plus/1 or /_light_novels_anime_plus/1.json
  def destroy
    @_light_novels_anime_plu.destroy!

    respond_to do |format|
      format.html { redirect_to light_novels_anime_plus_url, notice: "Light novels anime plu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__light_novels_anime_plu
      @_light_novels_anime_plu = LightNovelsAnimePlu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _light_novels_anime_plu_params
      params.require(:light_novels_anime_plu).permit(:name)
    end
end
