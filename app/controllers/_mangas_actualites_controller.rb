class MangasActualitesController < ApplicationController
  before_action :set__mangas_actualite, only: %i[ show edit update destroy ]

  # GET /_mangas_actualites or /_mangas_actualites.json
  def index
    @_mangas_actualites = MangasActualite.all
  end

  # GET /_mangas_actualites/1 or /_mangas_actualites/1.json
  def show
  end

  # GET /_mangas_actualites/new
  def new
    @_mangas_actualite = MangasActualite.new
  end

  # GET /_mangas_actualites/1/edit
  def edit
  end

  # POST /_mangas_actualites or /_mangas_actualites.json
  def create
    @_mangas_actualite = MangasActualite.new(_mangas_actualite_params)

    respond_to do |format|
      if @_mangas_actualite.save
        format.html { redirect_to _mangas_actualite_url(@_mangas_actualite), notice: "Mangas actualite was successfully created." }
        format.json { render :show, status: :created, location: @_mangas_actualite }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_mangas_actualite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_mangas_actualites/1 or /_mangas_actualites/1.json
  def update
    respond_to do |format|
      if @_mangas_actualite.update(_mangas_actualite_params)
        format.html { redirect_to _mangas_actualite_url(@_mangas_actualite), notice: "Mangas actualite was successfully updated." }
        format.json { render :show, status: :ok, location: @_mangas_actualite }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_mangas_actualite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_mangas_actualites/1 or /_mangas_actualites/1.json
  def destroy
    @_mangas_actualite.destroy!

    respond_to do |format|
      format.html { redirect_to _mangas_actualites_url, notice: "Mangas actualite was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__mangas_actualite
      @_mangas_actualite = MangasActualite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _mangas_actualite_params
      params.require(:_mangas_actualite).permit(:name)
    end
end
