class LivresStatutPublicationsController < ApplicationController
  before_action :set__livres_statut_publication, only: %i[ show edit update destroy ]

  # GET /_livres_statut_publications or /_livres_statut_publications.json
  def index
    @_livres_statut_publications = LivresStatutPublication.all
  end

  # GET /_livres_statut_publications/1 or /_livres_statut_publications/1.json
  def show
  end

  # GET /_livres_statut_publications/new
  def new
    @_livres_statut_publication = LivresStatutPublication.new
  end

  # GET /_livres_statut_publications/1/edit
  def edit
  end

  # POST /_livres_statut_publications or /_livres_statut_publications.json
  def create
    @_livres_statut_publication = LivresStatutPublication.new(_livres_statut_publication_params)

    respond_to do |format|
      if @_livres_statut_publication.save
        format.html { redirect_to _livres_statut_publication_url(@_livres_statut_publication), notice: "Livres statut publication was successfully created." }
        format.json { render :show, status: :created, location: @_livres_statut_publication }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_livres_statut_publication.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_livres_statut_publications/1 or /_livres_statut_publications/1.json
  def update
    respond_to do |format|
      if @_livres_statut_publication.update(_livres_statut_publication_params)
        format.html { redirect_to _livres_statut_publication_url(@_livres_statut_publication), notice: "Livres statut publication was successfully updated." }
        format.json { render :show, status: :ok, location: @_livres_statut_publication }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_livres_statut_publication.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_livres_statut_publications/1 or /_livres_statut_publications/1.json
  def destroy
    @_livres_statut_publication.destroy!

    respond_to do |format|
      format.html { redirect_to _livres_statut_publications_url, notice: "Livres statut publication was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__livres_statut_publication
      @_livres_statut_publication = LivresStatutPublication.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _livres_statut_publication_params
      params.require(:_livres_statut_publication).permit(:name)
    end
end
