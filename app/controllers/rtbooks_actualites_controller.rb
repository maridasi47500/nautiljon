class ArtbooksActualitesController < ApplicationController
  before_action :set_artbooks_actualite, only: %i[ show edit update destroy ]

  # GET /artbooks_actualites or /artbooks_actualites.json
  def index
    @artbooks_actualites = ArtbooksActualite.all
  end

  # GET /artbooks_actualites/1 or /artbooks_actualites/1.json
  def show
  end

  # GET /artbooks_actualites/new
  def new
    @artbooks_actualite = ArtbooksActualite.new
  end

  # GET /artbooks_actualites/1/edit
  def edit
  end

  # POST /artbooks_actualites or /artbooks_actualites.json
  def create
    @artbooks_actualite = ArtbooksActualite.new(artbooks_actualite_params)

    respond_to do |format|
      if @artbooks_actualite.save
        format.html { redirect_to artbooks_actualite_url(@artbooks_actualite), notice: "Artbooks actualite was successfully created." }
        format.json { render :show, status: :created, location: @artbooks_actualite }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artbooks_actualite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artbooks_actualites/1 or /artbooks_actualites/1.json
  def update
    respond_to do |format|
      if @artbooks_actualite.update(artbooks_actualite_params)
        format.html { redirect_to artbooks_actualite_url(@artbooks_actualite), notice: "Artbooks actualite was successfully updated." }
        format.json { render :show, status: :ok, location: @artbooks_actualite }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artbooks_actualite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artbooks_actualites/1 or /artbooks_actualites/1.json
  def destroy
    @artbooks_actualite.destroy!

    respond_to do |format|
      format.html { redirect_to artbooks_actualites_url, notice: "Artbooks actualite was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artbooks_actualite
      @artbooks_actualite = ArtbooksActualite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artbooks_actualite_params
      params.require(:artbooks_actualite).permit(:name)
    end
end
