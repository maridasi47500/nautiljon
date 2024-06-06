class Dvd::BluRaysDramasController < ApplicationController
  before_action :set__dvd_blu_rays_drama, only: %i[ show edit update destroy ]

  # GET /_dvd_blu_rays_dramas or /_dvd_blu_rays_dramas.json
  def index
    @_dvd_blu_rays_dramas = Dvd::BluRaysDrama.all
  end

  # GET /_dvd_blu_rays_dramas/1 or /_dvd_blu_rays_dramas/1.json
  def show
  end

  # GET /_dvd_blu_rays_dramas/new
  def new
    @_dvd_blu_rays_drama = Dvd::BluRaysDrama.new
  end

  # GET /_dvd_blu_rays_dramas/1/edit
  def edit
  end

  # POST /_dvd_blu_rays_dramas or /_dvd_blu_rays_dramas.json
  def create
    @_dvd_blu_rays_drama = Dvd::BluRaysDrama.new(_dvd_blu_rays_drama_params)

    respond_to do |format|
      if @_dvd_blu_rays_drama.save
        format.html { redirect_to dvd_blu_rays_drama_url(@_dvd_blu_rays_drama), notice: "Blu rays drama was successfully created." }
        format.json { render :show, status: :created, location: @_dvd_blu_rays_drama }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dvd_blu_rays_drama.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dvd_blu_rays_dramas/1 or /_dvd_blu_rays_dramas/1.json
  def update
    respond_to do |format|
      if @_dvd_blu_rays_drama.update(_dvd_blu_rays_drama_params)
        format.html { redirect_to dvd_blu_rays_drama_url(@_dvd_blu_rays_drama), notice: "Blu rays drama was successfully updated." }
        format.json { render :show, status: :ok, location: @_dvd_blu_rays_drama }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dvd_blu_rays_drama.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dvd_blu_rays_dramas/1 or /_dvd_blu_rays_dramas/1.json
  def destroy
    @_dvd_blu_rays_drama.destroy!

    respond_to do |format|
      format.html { redirect_to dvd_blu_rays_dramas_url, notice: "Blu rays drama was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dvd_blu_rays_drama
      @_dvd_blu_rays_drama = Dvd::BluRaysDrama.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dvd_blu_rays_drama_params
      params.require(:dvd_blu_rays_drama).permit(:name)
    end
end
