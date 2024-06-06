class Dvd::BluRaysTypeEditionsController < ApplicationController
  before_action :set__dvd___blu_rays_type_edition, only: %i[ show edit update destroy ]

  # GET /_dvd_/_blu_rays_type_editions or /_dvd_/_blu_rays_type_editions.json
  def index
    @_dvd___blu_rays_type_editions = Dvd::BluRaysTypeEdition.all
  end

  # GET /_dvd_/_blu_rays_type_editions/1 or /_dvd_/_blu_rays_type_editions/1.json
  def show
  end

  # GET /_dvd_/_blu_rays_type_editions/new
  def new
    @_dvd___blu_rays_type_edition = Dvd::BluRaysTypeEdition.new
  end

  # GET /_dvd_/_blu_rays_type_editions/1/edit
  def edit
  end

  # POST /_dvd_/_blu_rays_type_editions or /_dvd_/_blu_rays_type_editions.json
  def create
    @_dvd___blu_rays_type_edition = Dvd::BluRaysTypeEdition.new(_dvd___blu_rays_type_edition_params)

    respond_to do |format|
      if @_dvd___blu_rays_type_edition.save
        format.html { redirect_to _dvd___blu_rays_type_edition_url(@_dvd___blu_rays_type_edition), notice: "Blu rays type edition was successfully created." }
        format.json { render :show, status: :created, location: @_dvd___blu_rays_type_edition }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dvd___blu_rays_type_edition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dvd_/_blu_rays_type_editions/1 or /_dvd_/_blu_rays_type_editions/1.json
  def update
    respond_to do |format|
      if @_dvd___blu_rays_type_edition.update(_dvd___blu_rays_type_edition_params)
        format.html { redirect_to _dvd___blu_rays_type_edition_url(@_dvd___blu_rays_type_edition), notice: "Blu rays type edition was successfully updated." }
        format.json { render :show, status: :ok, location: @_dvd___blu_rays_type_edition }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dvd___blu_rays_type_edition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dvd_/_blu_rays_type_editions/1 or /_dvd_/_blu_rays_type_editions/1.json
  def destroy
    @_dvd___blu_rays_type_edition.destroy!

    respond_to do |format|
      format.html { redirect_to _dvd___blu_rays_type_editions_url, notice: "Blu rays type edition was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dvd___blu_rays_type_edition
      @_dvd___blu_rays_type_edition = Dvd::BluRaysTypeEdition.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dvd___blu_rays_type_edition_params
      params.require(:_dvd___blu_rays_type_edition).permit(:name)
    end
end
