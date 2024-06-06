class PetitesAnnoncesSectionsController < ApplicationController
  before_action :set__petites_annonces_section, only: %i[ show edit update destroy ]

  # GET /_petites_annonces_sections or /_petites_annonces_sections.json
  def index
    @_petites_annonces_sections = PetitesAnnoncesSection.all
  end

  # GET /_petites_annonces_sections/1 or /_petites_annonces_sections/1.json
  def show
  end

  # GET /_petites_annonces_sections/new
  def new
    @_petites_annonces_section = PetitesAnnoncesSection.new
  end

  # GET /_petites_annonces_sections/1/edit
  def edit
  end

  # POST /_petites_annonces_sections or /_petites_annonces_sections.json
  def create
    @_petites_annonces_section = PetitesAnnoncesSection.new(_petites_annonces_section_params)

    respond_to do |format|
      if @_petites_annonces_section.save
        format.html { redirect_to _petites_annonces_section_url(@_petites_annonces_section), notice: "Petites annonces section was successfully created." }
        format.json { render :show, status: :created, location: @_petites_annonces_section }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_petites_annonces_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_petites_annonces_sections/1 or /_petites_annonces_sections/1.json
  def update
    respond_to do |format|
      if @_petites_annonces_section.update(_petites_annonces_section_params)
        format.html { redirect_to _petites_annonces_section_url(@_petites_annonces_section), notice: "Petites annonces section was successfully updated." }
        format.json { render :show, status: :ok, location: @_petites_annonces_section }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_petites_annonces_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_petites_annonces_sections/1 or /_petites_annonces_sections/1.json
  def destroy
    @_petites_annonces_section.destroy!

    respond_to do |format|
      format.html { redirect_to _petites_annonces_sections_url, notice: "Petites annonces section was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__petites_annonces_section
      @_petites_annonces_section = PetitesAnnoncesSection.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _petites_annonces_section_params
      params.require(:_petites_annonces_section).permit(:name)
    end
end
