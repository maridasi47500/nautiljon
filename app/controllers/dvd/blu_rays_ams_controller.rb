class Dvd::BluRaysAmsController < ApplicationController
  before_action :set__dvd_blu_rays_am, only: %i[ show edit update destroy ]

  # GET /_dvd_blu_rays_ams or /_dvd_blu_rays_ams.json
  def index
    @_dvd_blu_rays_ams = Dvd::BluRaysAm.all
  end

  # GET /_dvd_blu_rays_ams/1 or /_dvd_blu_rays_ams/1.json
  def show
  end

  # GET /_dvd_blu_rays_ams/new
  def new
    @_dvd_blu_rays_am = Dvd::BluRaysAm.new
  end

  # GET /_dvd_blu_rays_ams/1/edit
  def edit
  end

  # POST /_dvd_blu_rays_ams or /_dvd_blu_rays_ams.json
  def create
    @_dvd_blu_rays_am = Dvd::BluRaysAm.new(_dvd_blu_rays_am_params)

    respond_to do |format|
      if @_dvd_blu_rays_am.save
        format.html { redirect_to dvd_blu_rays_am_url(@_dvd_blu_rays_am), notice: "Blu rays am was successfully created." }
        format.json { render :show, status: :created, location: @_dvd_blu_rays_am }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dvd_blu_rays_am.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dvd_blu_rays_ams/1 or /_dvd_blu_rays_ams/1.json
  def update
    respond_to do |format|
      if @_dvd_blu_rays_am.update(_dvd_blu_rays_am_params)
        format.html { redirect_to dvd_blu_rays_am_url(@_dvd_blu_rays_am), notice: "Blu rays am was successfully updated." }
        format.json { render :show, status: :ok, location: @_dvd_blu_rays_am }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dvd_blu_rays_am.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dvd_blu_rays_ams/1 or /_dvd_blu_rays_ams/1.json
  def destroy
    @_dvd_blu_rays_am.destroy!

    respond_to do |format|
      format.html { redirect_to dvd_blu_rays_ams_url, notice: "Blu rays am was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dvd_blu_rays_am
      @_dvd_blu_rays_am = Dvd::BluRaysAm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dvd_blu_rays_am_params
      params.require(:dvd_blu_rays_am).permit(:name)
    end
end
