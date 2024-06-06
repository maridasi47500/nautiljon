class Dvd::BluRaysPublicAvertisController < ApplicationController
  before_action :set__dvd_blu_rays_public_averti, only: %i[ show edit update destroy ]

  # GET /_dvd_blu_rays_public_avertis or /_dvd_blu_rays_public_avertis.json
  def index
    @_dvd_blu_rays_public_avertis = Dvd::BluRaysPublicAverti.all
  end

  # GET /_dvd_blu_rays_public_avertis/1 or /_dvd_blu_rays_public_avertis/1.json
  def show
  end

  # GET /_dvd_blu_rays_public_avertis/new
  def new
    @_dvd_blu_rays_public_averti = Dvd::BluRaysPublicAverti.new
  end

  # GET /_dvd_blu_rays_public_avertis/1/edit
  def edit
  end

  # POST /_dvd_blu_rays_public_avertis or /_dvd_blu_rays_public_avertis.json
  def create
    @_dvd_blu_rays_public_averti = Dvd::BluRaysPublicAverti.new(_dvd_blu_rays_public_averti_params)

    respond_to do |format|
      if @_dvd_blu_rays_public_averti.save
        format.html { redirect_to dvd_blu_rays_public_averti_url(@_dvd_blu_rays_public_averti), notice: "Blu rays public averti was successfully created." }
        format.json { render :show, status: :created, location: @_dvd_blu_rays_public_averti }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dvd_blu_rays_public_averti.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dvd_blu_rays_public_avertis/1 or /_dvd_blu_rays_public_avertis/1.json
  def update
    respond_to do |format|
      if @_dvd_blu_rays_public_averti.update(_dvd_blu_rays_public_averti_params)
        format.html { redirect_to dvd_blu_rays_public_averti_url(@_dvd_blu_rays_public_averti), notice: "Blu rays public averti was successfully updated." }
        format.json { render :show, status: :ok, location: @_dvd_blu_rays_public_averti }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dvd_blu_rays_public_averti.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dvd_blu_rays_public_avertis/1 or /_dvd_blu_rays_public_avertis/1.json
  def destroy
    @_dvd_blu_rays_public_averti.destroy!

    respond_to do |format|
      format.html { redirect_to dvd_blu_rays_public_avertis_url, notice: "Blu rays public averti was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dvd_blu_rays_public_averti
      @_dvd_blu_rays_public_averti = Dvd::BluRaysPublicAverti.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dvd_blu_rays_public_averti_params
      params.require(:dvd_blu_rays_public_averti).permit(:name)
    end
end
