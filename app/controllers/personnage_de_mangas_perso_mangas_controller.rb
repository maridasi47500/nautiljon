class PersonnageDeMangasPersoMangasController < ApplicationController
  before_action :set__personnage_de_mangas_perso_manga, only: %i[ show edit update destroy ]

  # GET /_personnage_de_mangas_perso_mangas or /_personnage_de_mangas_perso_mangas.json
  def index
    @_personnage_de_mangas_perso_mangas = PersonnageDeMangasPersoManga.all
  end

  # GET /_personnage_de_mangas_perso_mangas/1 or /_personnage_de_mangas_perso_mangas/1.json
  def show
  end

  # GET /_personnage_de_mangas_perso_mangas/new
  def new
    @_personnage_de_mangas_perso_manga = PersonnageDeMangasPersoManga.new
  end

  # GET /_personnage_de_mangas_perso_mangas/1/edit
  def edit
  end

  # POST /_personnage_de_mangas_perso_mangas or /_personnage_de_mangas_perso_mangas.json
  def create
    @_personnage_de_mangas_perso_manga = PersonnageDeMangasPersoManga.new(_personnage_de_mangas_perso_manga_params)

    respond_to do |format|
      if @_personnage_de_mangas_perso_manga.save
        format.html { redirect_to personnage_de_mangas_perso_manga_url(@_personnage_de_mangas_perso_manga), notice: "Personnage de mangas perso manga was successfully created." }
        format.json { render :show, status: :created, location: @_personnage_de_mangas_perso_manga }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_personnage_de_mangas_perso_manga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_personnage_de_mangas_perso_mangas/1 or /_personnage_de_mangas_perso_mangas/1.json
  def update
    respond_to do |format|
      if @_personnage_de_mangas_perso_manga.update(_personnage_de_mangas_perso_manga_params)
        format.html { redirect_to personnage_de_mangas_perso_manga_url(@_personnage_de_mangas_perso_manga), notice: "Personnage de mangas perso manga was successfully updated." }
        format.json { render :show, status: :ok, location: @_personnage_de_mangas_perso_manga }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_personnage_de_mangas_perso_manga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_personnage_de_mangas_perso_mangas/1 or /_personnage_de_mangas_perso_mangas/1.json
  def destroy
    @_personnage_de_mangas_perso_manga.destroy!

    respond_to do |format|
      format.html { redirect_to personnage_de_mangas_perso_mangas_url, notice: "Personnage de mangas perso manga was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__personnage_de_mangas_perso_manga
      @_personnage_de_mangas_perso_manga = PersonnageDeMangasPersoManga.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _personnage_de_mangas_perso_manga_params
      params.require(:personnage_de_mangas_perso_manga).permit(:name)
    end
end
