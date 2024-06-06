class LightNovelsEncoursVfsController < ApplicationController
  before_action :set__light_novels_encours_vf, only: %i[ show edit update destroy ]

  # GET /_light_novels_encours_vfs or /_light_novels_encours_vfs.json
  def index
    @_light_novels_encours_vfs = LightNovelsEncoursVf.all
  end

  # GET /_light_novels_encours_vfs/1 or /_light_novels_encours_vfs/1.json
  def show
  end

  # GET /_light_novels_encours_vfs/new
  def new
    @_light_novels_encours_vf = LightNovelsEncoursVf.new
  end

  # GET /_light_novels_encours_vfs/1/edit
  def edit
  end

  # POST /_light_novels_encours_vfs or /_light_novels_encours_vfs.json
  def create
    @_light_novels_encours_vf = LightNovelsEncoursVf.new(_light_novels_encours_vf_params)

    respond_to do |format|
      if @_light_novels_encours_vf.save
        format.html { redirect_to light_novels_encours_vf_url(@_light_novels_encours_vf), notice: "Light novels encours vf was successfully created." }
        format.json { render :show, status: :created, location: @_light_novels_encours_vf }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_light_novels_encours_vf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_light_novels_encours_vfs/1 or /_light_novels_encours_vfs/1.json
  def update
    respond_to do |format|
      if @_light_novels_encours_vf.update(_light_novels_encours_vf_params)
        format.html { redirect_to light_novels_encours_vf_url(@_light_novels_encours_vf), notice: "Light novels encours vf was successfully updated." }
        format.json { render :show, status: :ok, location: @_light_novels_encours_vf }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_light_novels_encours_vf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_light_novels_encours_vfs/1 or /_light_novels_encours_vfs/1.json
  def destroy
    @_light_novels_encours_vf.destroy!

    respond_to do |format|
      format.html { redirect_to light_novels_encours_vfs_url, notice: "Light novels encours vf was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__light_novels_encours_vf
      @_light_novels_encours_vf = LightNovelsEncoursVf.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _light_novels_encours_vf_params
      params.require(:light_novels_encours_vf).permit(:name)
    end
end
