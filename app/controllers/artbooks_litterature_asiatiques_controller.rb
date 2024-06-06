class ArtbooksLitteratureAsiatiquesController < ApplicationController
  before_action :set_artbooks_litterature_asiatique, only: %i[ show edit update destroy ]

  # GET /artbooks_litterature_asiatiques or /artbooks_litterature_asiatiques.json
  def index
    @artbooks_litterature_asiatiques = ArtbooksLitteratureAsiatique.all
  end

  # GET /artbooks_litterature_asiatiques/1 or /artbooks_litterature_asiatiques/1.json
  def show
  end

  # GET /artbooks_litterature_asiatiques/new
  def new
    @artbooks_litterature_asiatique = ArtbooksLitteratureAsiatique.new
  end

  # GET /artbooks_litterature_asiatiques/1/edit
  def edit
  end

  # POST /artbooks_litterature_asiatiques or /artbooks_litterature_asiatiques.json
  def create
    @artbooks_litterature_asiatique = ArtbooksLitteratureAsiatique.new(artbooks_litterature_asiatique_params)

    respond_to do |format|
      if @artbooks_litterature_asiatique.save
        format.html { redirect_to artbooks_litterature_asiatique_url(@artbooks_litterature_asiatique), notice: "Artbooks litterature asiatique was successfully created." }
        format.json { render :show, status: :created, location: @artbooks_litterature_asiatique }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artbooks_litterature_asiatique.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artbooks_litterature_asiatiques/1 or /artbooks_litterature_asiatiques/1.json
  def update
    respond_to do |format|
      if @artbooks_litterature_asiatique.update(artbooks_litterature_asiatique_params)
        format.html { redirect_to artbooks_litterature_asiatique_url(@artbooks_litterature_asiatique), notice: "Artbooks litterature asiatique was successfully updated." }
        format.json { render :show, status: :ok, location: @artbooks_litterature_asiatique }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artbooks_litterature_asiatique.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artbooks_litterature_asiatiques/1 or /artbooks_litterature_asiatiques/1.json
  def destroy
    @artbooks_litterature_asiatique.destroy!

    respond_to do |format|
      format.html { redirect_to artbooks_litterature_asiatiques_url, notice: "Artbooks litterature asiatique was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artbooks_litterature_asiatique
      @artbooks_litterature_asiatique = ArtbooksLitteratureAsiatique.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artbooks_litterature_asiatique_params
      params.require(:artbooks_litterature_asiatique).permit(:name)
    end
end
