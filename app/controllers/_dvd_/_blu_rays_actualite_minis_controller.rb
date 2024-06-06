class Dvd::BluRaysActualiteMinisController < ApplicationController
  before_action :set__dvd___blu_rays_actualite_mini, only: %i[ show edit update destroy ]

  # GET /_dvd_/_blu_rays_actualite_minis or /_dvd_/_blu_rays_actualite_minis.json
  def index
    @_dvd___blu_rays_actualite_minis = Dvd::BluRaysActualiteMini.all
  end

  # GET /_dvd_/_blu_rays_actualite_minis/1 or /_dvd_/_blu_rays_actualite_minis/1.json
  def show
  end

  # GET /_dvd_/_blu_rays_actualite_minis/new
  def new
    @_dvd___blu_rays_actualite_mini = Dvd::BluRaysActualiteMini.new
  end

  # GET /_dvd_/_blu_rays_actualite_minis/1/edit
  def edit
  end

  # POST /_dvd_/_blu_rays_actualite_minis or /_dvd_/_blu_rays_actualite_minis.json
  def create
    @_dvd___blu_rays_actualite_mini = Dvd::BluRaysActualiteMini.new(_dvd___blu_rays_actualite_mini_params)

    respond_to do |format|
      if @_dvd___blu_rays_actualite_mini.save
        format.html { redirect_to _dvd___blu_rays_actualite_mini_url(@_dvd___blu_rays_actualite_mini), notice: "Blu rays actualite mini was successfully created." }
        format.json { render :show, status: :created, location: @_dvd___blu_rays_actualite_mini }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dvd___blu_rays_actualite_mini.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dvd_/_blu_rays_actualite_minis/1 or /_dvd_/_blu_rays_actualite_minis/1.json
  def update
    respond_to do |format|
      if @_dvd___blu_rays_actualite_mini.update(_dvd___blu_rays_actualite_mini_params)
        format.html { redirect_to _dvd___blu_rays_actualite_mini_url(@_dvd___blu_rays_actualite_mini), notice: "Blu rays actualite mini was successfully updated." }
        format.json { render :show, status: :ok, location: @_dvd___blu_rays_actualite_mini }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dvd___blu_rays_actualite_mini.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dvd_/_blu_rays_actualite_minis/1 or /_dvd_/_blu_rays_actualite_minis/1.json
  def destroy
    @_dvd___blu_rays_actualite_mini.destroy!

    respond_to do |format|
      format.html { redirect_to _dvd___blu_rays_actualite_minis_url, notice: "Blu rays actualite mini was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dvd___blu_rays_actualite_mini
      @_dvd___blu_rays_actualite_mini = Dvd::BluRaysActualiteMini.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dvd___blu_rays_actualite_mini_params
      params.require(:_dvd___blu_rays_actualite_mini).permit(:name)
    end
end
