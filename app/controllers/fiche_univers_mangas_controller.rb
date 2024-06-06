class FicheUniversMangasController < ApplicationController
  before_action :set__fiche_univers_manga, only: %i[ show edit update destroy ]

  # GET /_fiche_univers_mangas or /_fiche_univers_mangas.json
  def index
    @_fiche_univers_mangas = FicheUniversManga.all
  end

  # GET /_fiche_univers_mangas/1 or /_fiche_univers_mangas/1.json
  def show
  end

  # GET /_fiche_univers_mangas/new
  def new
    @_fiche_univers_manga = FicheUniversManga.new
  end

  # GET /_fiche_univers_mangas/1/edit
  def edit
  end

  # POST /_fiche_univers_mangas or /_fiche_univers_mangas.json
  def create
    @_fiche_univers_manga = FicheUniversManga.new(_fiche_univers_manga_params)

    respond_to do |format|
      if @_fiche_univers_manga.save
        format.html { redirect_to fiche_univers_manga_url(@_fiche_univers_manga), notice: "Fiche univers manga was successfully created." }
        format.json { render :show, status: :created, location: @_fiche_univers_manga }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_fiche_univers_manga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_fiche_univers_mangas/1 or /_fiche_univers_mangas/1.json
  def update
    respond_to do |format|
      if @_fiche_univers_manga.update(_fiche_univers_manga_params)
        format.html { redirect_to fiche_univers_manga_url(@_fiche_univers_manga), notice: "Fiche univers manga was successfully updated." }
        format.json { render :show, status: :ok, location: @_fiche_univers_manga }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_fiche_univers_manga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_fiche_univers_mangas/1 or /_fiche_univers_mangas/1.json
  def destroy
    @_fiche_univers_manga.destroy!

    respond_to do |format|
      format.html { redirect_to fiche_univers_mangas_url, notice: "Fiche univers manga was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__fiche_univers_manga
      @_fiche_univers_manga = FicheUniversManga.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _fiche_univers_manga_params
      params.require(:fiche_univers_manga).permit(:name)
    end
end
