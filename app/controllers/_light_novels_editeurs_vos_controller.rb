class LightNovelsEditeursVosController < ApplicationController
  before_action :set__light_novels_editeurs_vo, only: %i[ show edit update destroy ]

  # GET /_light_novels_editeurs_vos or /_light_novels_editeurs_vos.json
  def index
    @_light_novels_editeurs_vos = LightNovelsEditeursVo.all
  end

  # GET /_light_novels_editeurs_vos/1 or /_light_novels_editeurs_vos/1.json
  def show
  end

  # GET /_light_novels_editeurs_vos/new
  def new
    @_light_novels_editeurs_vo = LightNovelsEditeursVo.new
  end

  # GET /_light_novels_editeurs_vos/1/edit
  def edit
  end

  # POST /_light_novels_editeurs_vos or /_light_novels_editeurs_vos.json
  def create
    @_light_novels_editeurs_vo = LightNovelsEditeursVo.new(_light_novels_editeurs_vo_params)

    respond_to do |format|
      if @_light_novels_editeurs_vo.save
        format.html { redirect_to _light_novels_editeurs_vo_url(@_light_novels_editeurs_vo), notice: "Light novels editeurs vo was successfully created." }
        format.json { render :show, status: :created, location: @_light_novels_editeurs_vo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_light_novels_editeurs_vo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_light_novels_editeurs_vos/1 or /_light_novels_editeurs_vos/1.json
  def update
    respond_to do |format|
      if @_light_novels_editeurs_vo.update(_light_novels_editeurs_vo_params)
        format.html { redirect_to _light_novels_editeurs_vo_url(@_light_novels_editeurs_vo), notice: "Light novels editeurs vo was successfully updated." }
        format.json { render :show, status: :ok, location: @_light_novels_editeurs_vo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_light_novels_editeurs_vo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_light_novels_editeurs_vos/1 or /_light_novels_editeurs_vos/1.json
  def destroy
    @_light_novels_editeurs_vo.destroy!

    respond_to do |format|
      format.html { redirect_to _light_novels_editeurs_vos_url, notice: "Light novels editeurs vo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__light_novels_editeurs_vo
      @_light_novels_editeurs_vo = LightNovelsEditeursVo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _light_novels_editeurs_vo_params
      params.require(:_light_novels_editeurs_vo).permit(:name)
    end
end
