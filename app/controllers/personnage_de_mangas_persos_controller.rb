class PersonnageDeMangasPersosController < ApplicationController
  before_action :set__personnage_de_mangas_perso, only: %i[ show edit update destroy ]

  # GET /_personnage_de_mangas_persos or /_personnage_de_mangas_persos.json
  def index
    @_personnage_de_mangas_persos = PersonnageDeMangasPerso.all
  end

  # GET /_personnage_de_mangas_persos/1 or /_personnage_de_mangas_persos/1.json
  def show
  end

  # GET /_personnage_de_mangas_persos/new
  def new
    @_personnage_de_mangas_perso = PersonnageDeMangasPerso.new
  end

  # GET /_personnage_de_mangas_persos/1/edit
  def edit
  end

  # POST /_personnage_de_mangas_persos or /_personnage_de_mangas_persos.json
  def create
    @_personnage_de_mangas_perso = PersonnageDeMangasPerso.new(_personnage_de_mangas_perso_params)

    respond_to do |format|
      if @_personnage_de_mangas_perso.save
        format.html { redirect_to personnage_de_mangas_perso_url(@_personnage_de_mangas_perso), notice: "Personnage de mangas perso was successfully created." }
        format.json { render :show, status: :created, location: @_personnage_de_mangas_perso }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_personnage_de_mangas_perso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_personnage_de_mangas_persos/1 or /_personnage_de_mangas_persos/1.json
  def update
    respond_to do |format|
      if @_personnage_de_mangas_perso.update(_personnage_de_mangas_perso_params)
        format.html { redirect_to personnage_de_mangas_perso_url(@_personnage_de_mangas_perso), notice: "Personnage de mangas perso was successfully updated." }
        format.json { render :show, status: :ok, location: @_personnage_de_mangas_perso }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_personnage_de_mangas_perso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_personnage_de_mangas_persos/1 or /_personnage_de_mangas_persos/1.json
  def destroy
    @_personnage_de_mangas_perso.destroy!

    respond_to do |format|
      format.html { redirect_to personnage_de_mangas_persos_url, notice: "Personnage de mangas perso was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__personnage_de_mangas_perso
      @_personnage_de_mangas_perso = PersonnageDeMangasPerso.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _personnage_de_mangas_perso_params
      params.require(:personnage_de_mangas_perso).permit(:name)
    end
end
