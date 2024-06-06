class PersonnageDeMangasPersoPlusController < ApplicationController
  before_action :set__personnage_de_mangas_perso_plu, only: %i[ show edit update destroy ]

  # GET /_personnage_de_mangas_perso_plus or /_personnage_de_mangas_perso_plus.json
  def index
    @_personnage_de_mangas_perso_plus = PersonnageDeMangasPersoPlu.all
  end

  # GET /_personnage_de_mangas_perso_plus/1 or /_personnage_de_mangas_perso_plus/1.json
  def show
  end

  # GET /_personnage_de_mangas_perso_plus/new
  def new
    @_personnage_de_mangas_perso_plu = PersonnageDeMangasPersoPlu.new
  end

  # GET /_personnage_de_mangas_perso_plus/1/edit
  def edit
  end

  # POST /_personnage_de_mangas_perso_plus or /_personnage_de_mangas_perso_plus.json
  def create
    @_personnage_de_mangas_perso_plu = PersonnageDeMangasPersoPlu.new(_personnage_de_mangas_perso_plu_params)

    respond_to do |format|
      if @_personnage_de_mangas_perso_plu.save
        format.html { redirect_to _personnage_de_mangas_perso_plu_url(@_personnage_de_mangas_perso_plu), notice: "Personnage de mangas perso plu was successfully created." }
        format.json { render :show, status: :created, location: @_personnage_de_mangas_perso_plu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_personnage_de_mangas_perso_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_personnage_de_mangas_perso_plus/1 or /_personnage_de_mangas_perso_plus/1.json
  def update
    respond_to do |format|
      if @_personnage_de_mangas_perso_plu.update(_personnage_de_mangas_perso_plu_params)
        format.html { redirect_to _personnage_de_mangas_perso_plu_url(@_personnage_de_mangas_perso_plu), notice: "Personnage de mangas perso plu was successfully updated." }
        format.json { render :show, status: :ok, location: @_personnage_de_mangas_perso_plu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_personnage_de_mangas_perso_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_personnage_de_mangas_perso_plus/1 or /_personnage_de_mangas_perso_plus/1.json
  def destroy
    @_personnage_de_mangas_perso_plu.destroy!

    respond_to do |format|
      format.html { redirect_to _personnage_de_mangas_perso_plus_url, notice: "Personnage de mangas perso plu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__personnage_de_mangas_perso_plu
      @_personnage_de_mangas_perso_plu = PersonnageDeMangasPersoPlu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _personnage_de_mangas_perso_plu_params
      params.require(:_personnage_de_mangas_perso_plu).permit(:name)
    end
end
