class Dvd::BluRaysFrancesController < ApplicationController
  before_action :set__dvd___blu_rays_france, only: %i[ show edit update destroy ]

  # GET /_dvd_/_blu_rays_frances or /_dvd_/_blu_rays_frances.json
  def index
    @_dvd___blu_rays_frances = Dvd::BluRaysFrance.all
  end

  # GET /_dvd_/_blu_rays_frances/1 or /_dvd_/_blu_rays_frances/1.json
  def show
  end

  # GET /_dvd_/_blu_rays_frances/new
  def new
    @_dvd___blu_rays_france = Dvd::BluRaysFrance.new
  end

  # GET /_dvd_/_blu_rays_frances/1/edit
  def edit
  end

  # POST /_dvd_/_blu_rays_frances or /_dvd_/_blu_rays_frances.json
  def create
    @_dvd___blu_rays_france = Dvd::BluRaysFrance.new(_dvd___blu_rays_france_params)

    respond_to do |format|
      if @_dvd___blu_rays_france.save
        format.html { redirect_to _dvd___blu_rays_france_url(@_dvd___blu_rays_france), notice: "Blu rays france was successfully created." }
        format.json { render :show, status: :created, location: @_dvd___blu_rays_france }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dvd___blu_rays_france.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dvd_/_blu_rays_frances/1 or /_dvd_/_blu_rays_frances/1.json
  def update
    respond_to do |format|
      if @_dvd___blu_rays_france.update(_dvd___blu_rays_france_params)
        format.html { redirect_to _dvd___blu_rays_france_url(@_dvd___blu_rays_france), notice: "Blu rays france was successfully updated." }
        format.json { render :show, status: :ok, location: @_dvd___blu_rays_france }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dvd___blu_rays_france.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dvd_/_blu_rays_frances/1 or /_dvd_/_blu_rays_frances/1.json
  def destroy
    @_dvd___blu_rays_france.destroy!

    respond_to do |format|
      format.html { redirect_to _dvd___blu_rays_frances_url, notice: "Blu rays france was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dvd___blu_rays_france
      @_dvd___blu_rays_france = Dvd::BluRaysFrance.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dvd___blu_rays_france_params
      params.require(:_dvd___blu_rays_france).permit(:name)
    end
end
