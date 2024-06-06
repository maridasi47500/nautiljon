class LightNovelsLitteratureAsiatiquePlusController < ApplicationController
  before_action :set__light_novels_litterature_asiatique_plu, only: %i[ show edit update destroy ]

  # GET /_light_novels_litterature_asiatique_plus or /_light_novels_litterature_asiatique_plus.json
  def index
    @_light_novels_litterature_asiatique_plus = LightNovelsLitteratureAsiatiquePlu.all
  end

  # GET /_light_novels_litterature_asiatique_plus/1 or /_light_novels_litterature_asiatique_plus/1.json
  def show
  end

  # GET /_light_novels_litterature_asiatique_plus/new
  def new
    @_light_novels_litterature_asiatique_plu = LightNovelsLitteratureAsiatiquePlu.new
  end

  # GET /_light_novels_litterature_asiatique_plus/1/edit
  def edit
  end

  # POST /_light_novels_litterature_asiatique_plus or /_light_novels_litterature_asiatique_plus.json
  def create
    @_light_novels_litterature_asiatique_plu = LightNovelsLitteratureAsiatiquePlu.new(_light_novels_litterature_asiatique_plu_params)

    respond_to do |format|
      if @_light_novels_litterature_asiatique_plu.save
        format.html { redirect_to _light_novels_litterature_asiatique_plu_url(@_light_novels_litterature_asiatique_plu), notice: "Light novels litterature asiatique plu was successfully created." }
        format.json { render :show, status: :created, location: @_light_novels_litterature_asiatique_plu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_light_novels_litterature_asiatique_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_light_novels_litterature_asiatique_plus/1 or /_light_novels_litterature_asiatique_plus/1.json
  def update
    respond_to do |format|
      if @_light_novels_litterature_asiatique_plu.update(_light_novels_litterature_asiatique_plu_params)
        format.html { redirect_to _light_novels_litterature_asiatique_plu_url(@_light_novels_litterature_asiatique_plu), notice: "Light novels litterature asiatique plu was successfully updated." }
        format.json { render :show, status: :ok, location: @_light_novels_litterature_asiatique_plu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_light_novels_litterature_asiatique_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_light_novels_litterature_asiatique_plus/1 or /_light_novels_litterature_asiatique_plus/1.json
  def destroy
    @_light_novels_litterature_asiatique_plu.destroy!

    respond_to do |format|
      format.html { redirect_to _light_novels_litterature_asiatique_plus_url, notice: "Light novels litterature asiatique plu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__light_novels_litterature_asiatique_plu
      @_light_novels_litterature_asiatique_plu = LightNovelsLitteratureAsiatiquePlu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _light_novels_litterature_asiatique_plu_params
      params.require(:_light_novels_litterature_asiatique_plu).permit(:name)
    end
end
