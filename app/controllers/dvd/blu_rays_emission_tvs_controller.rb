class Dvd::BluRaysEmissionTvsController < ApplicationController
  before_action :set__dvd_blu_rays_emission_tv, only: %i[ show edit update destroy ]

  # GET /_dvd_blu_rays_emission_tvs or /_dvd_blu_rays_emission_tvs.json
  def index
    @_dvd_blu_rays_emission_tvs = Dvd::BluRaysEmissionTv.all
  end

  # GET /_dvd_blu_rays_emission_tvs/1 or /_dvd_blu_rays_emission_tvs/1.json
  def show
  end

  # GET /_dvd_blu_rays_emission_tvs/new
  def new
    @_dvd_blu_rays_emission_tv = Dvd::BluRaysEmissionTv.new
  end

  # GET /_dvd_blu_rays_emission_tvs/1/edit
  def edit
  end

  # POST /_dvd_blu_rays_emission_tvs or /_dvd_blu_rays_emission_tvs.json
  def create
    @_dvd_blu_rays_emission_tv = Dvd::BluRaysEmissionTv.new(_dvd_blu_rays_emission_tv_params)

    respond_to do |format|
      if @_dvd_blu_rays_emission_tv.save
        format.html { redirect_to dvd_blu_rays_emission_tv_url(@_dvd_blu_rays_emission_tv), notice: "Blu rays emission tv was successfully created." }
        format.json { render :show, status: :created, location: @_dvd_blu_rays_emission_tv }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dvd_blu_rays_emission_tv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dvd_blu_rays_emission_tvs/1 or /_dvd_blu_rays_emission_tvs/1.json
  def update
    respond_to do |format|
      if @_dvd_blu_rays_emission_tv.update(_dvd_blu_rays_emission_tv_params)
        format.html { redirect_to dvd_blu_rays_emission_tv_url(@_dvd_blu_rays_emission_tv), notice: "Blu rays emission tv was successfully updated." }
        format.json { render :show, status: :ok, location: @_dvd_blu_rays_emission_tv }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dvd_blu_rays_emission_tv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dvd_blu_rays_emission_tvs/1 or /_dvd_blu_rays_emission_tvs/1.json
  def destroy
    @_dvd_blu_rays_emission_tv.destroy!

    respond_to do |format|
      format.html { redirect_to dvd_blu_rays_emission_tvs_url, notice: "Blu rays emission tv was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dvd_blu_rays_emission_tv
      @_dvd_blu_rays_emission_tv = Dvd::BluRaysEmissionTv.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dvd_blu_rays_emission_tv_params
      params.require(:dvd_blu_rays_emission_tv).permit(:name)
    end
end
