class Dvd::BluRaysJvsController < ApplicationController
  before_action :set__dvd_blu_rays_jv, only: %i[ show edit update destroy ]

  # GET /_dvd_blu_rays_jvs or /_dvd_blu_rays_jvs.json
  def index
    @_dvd_blu_rays_jvs = Dvd::BluRaysJv.all
  end

  # GET /_dvd_blu_rays_jvs/1 or /_dvd_blu_rays_jvs/1.json
  def show
  end

  # GET /_dvd_blu_rays_jvs/new
  def new
    @_dvd_blu_rays_jv = Dvd::BluRaysJv.new
  end

  # GET /_dvd_blu_rays_jvs/1/edit
  def edit
  end

  # POST /_dvd_blu_rays_jvs or /_dvd_blu_rays_jvs.json
  def create
    @_dvd_blu_rays_jv = Dvd::BluRaysJv.new(_dvd_blu_rays_jv_params)

    respond_to do |format|
      if @_dvd_blu_rays_jv.save
        format.html { redirect_to dvd_blu_rays_jv_url(@_dvd_blu_rays_jv), notice: "Blu rays jv was successfully created." }
        format.json { render :show, status: :created, location: @_dvd_blu_rays_jv }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dvd_blu_rays_jv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dvd_blu_rays_jvs/1 or /_dvd_blu_rays_jvs/1.json
  def update
    respond_to do |format|
      if @_dvd_blu_rays_jv.update(_dvd_blu_rays_jv_params)
        format.html { redirect_to dvd_blu_rays_jv_url(@_dvd_blu_rays_jv), notice: "Blu rays jv was successfully updated." }
        format.json { render :show, status: :ok, location: @_dvd_blu_rays_jv }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dvd_blu_rays_jv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dvd_blu_rays_jvs/1 or /_dvd_blu_rays_jvs/1.json
  def destroy
    @_dvd_blu_rays_jv.destroy!

    respond_to do |format|
      format.html { redirect_to dvd_blu_rays_jvs_url, notice: "Blu rays jv was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dvd_blu_rays_jv
      @_dvd_blu_rays_jv = Dvd::BluRaysJv.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dvd_blu_rays_jv_params
      params.require(:dvd_blu_rays_jv).permit(:name)
    end
end
