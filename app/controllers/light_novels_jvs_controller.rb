class LightNovelsJvsController < ApplicationController
  before_action :set__light_novels_jv, only: %i[ show edit update destroy ]

  # GET /_light_novels_jvs or /_light_novels_jvs.json
  def index
    @_light_novels_jvs = LightNovelsJv.all
  end

  # GET /_light_novels_jvs/1 or /_light_novels_jvs/1.json
  def show
  end

  # GET /_light_novels_jvs/new
  def new
    @_light_novels_jv = LightNovelsJv.new
  end

  # GET /_light_novels_jvs/1/edit
  def edit
  end

  # POST /_light_novels_jvs or /_light_novels_jvs.json
  def create
    @_light_novels_jv = LightNovelsJv.new(_light_novels_jv_params)

    respond_to do |format|
      if @_light_novels_jv.save
        format.html { redirect_to light_novels_jv_url(@_light_novels_jv), notice: "Light novels jv was successfully created." }
        format.json { render :show, status: :created, location: @_light_novels_jv }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_light_novels_jv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_light_novels_jvs/1 or /_light_novels_jvs/1.json
  def update
    respond_to do |format|
      if @_light_novels_jv.update(_light_novels_jv_params)
        format.html { redirect_to light_novels_jv_url(@_light_novels_jv), notice: "Light novels jv was successfully updated." }
        format.json { render :show, status: :ok, location: @_light_novels_jv }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_light_novels_jv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_light_novels_jvs/1 or /_light_novels_jvs/1.json
  def destroy
    @_light_novels_jv.destroy!

    respond_to do |format|
      format.html { redirect_to light_novels_jvs_url, notice: "Light novels jv was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__light_novels_jv
      @_light_novels_jv = LightNovelsJv.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _light_novels_jv_params
      params.require(:light_novels_jv).permit(:name)
    end
end
