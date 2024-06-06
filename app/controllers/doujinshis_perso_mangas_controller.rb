class DoujinshisPersoMangasController < ApplicationController
  before_action :set__doujinshis_perso_manga, only: %i[ show edit update destroy ]

  # GET /_doujinshis_perso_mangas or /_doujinshis_perso_mangas.json
  def index
    @_doujinshis_perso_mangas = DoujinshisPersoManga.all
  end

  # GET /_doujinshis_perso_mangas/1 or /_doujinshis_perso_mangas/1.json
  def show
  end

  # GET /_doujinshis_perso_mangas/new
  def new
    @_doujinshis_perso_manga = DoujinshisPersoManga.new
  end

  # GET /_doujinshis_perso_mangas/1/edit
  def edit
  end

  # POST /_doujinshis_perso_mangas or /_doujinshis_perso_mangas.json
  def create
    @_doujinshis_perso_manga = DoujinshisPersoManga.new(_doujinshis_perso_manga_params)

    respond_to do |format|
      if @_doujinshis_perso_manga.save
        format.html { redirect_to doujinshis_perso_manga_url(@_doujinshis_perso_manga), notice: "Doujinshis perso manga was successfully created." }
        format.json { render :show, status: :created, location: @_doujinshis_perso_manga }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_perso_manga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_doujinshis_perso_mangas/1 or /_doujinshis_perso_mangas/1.json
  def update
    respond_to do |format|
      if @_doujinshis_perso_manga.update(_doujinshis_perso_manga_params)
        format.html { redirect_to doujinshis_perso_manga_url(@_doujinshis_perso_manga), notice: "Doujinshis perso manga was successfully updated." }
        format.json { render :show, status: :ok, location: @_doujinshis_perso_manga }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_perso_manga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_doujinshis_perso_mangas/1 or /_doujinshis_perso_mangas/1.json
  def destroy
    @_doujinshis_perso_manga.destroy!

    respond_to do |format|
      format.html { redirect_to doujinshis_perso_mangas_url, notice: "Doujinshis perso manga was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__doujinshis_perso_manga
      @_doujinshis_perso_manga = DoujinshisPersoManga.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _doujinshis_perso_manga_params
      params.require(:doujinshis_perso_manga).permit(:name)
    end
end
