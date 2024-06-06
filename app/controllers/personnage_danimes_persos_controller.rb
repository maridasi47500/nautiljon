class PersonnageDanimesPersosController < ApplicationController
  before_action :set__personnage_danimes_perso, only: %i[ show edit update destroy ]

  # GET /_personnage_danimes_persos or /_personnage_danimes_persos.json
  def index
    @_personnage_danimes_persos = PersonnageDanimesPerso.all
  end

  # GET /_personnage_danimes_persos/1 or /_personnage_danimes_persos/1.json
  def show
  end

  # GET /_personnage_danimes_persos/new
  def new
    @_personnage_danimes_perso = PersonnageDanimesPerso.new
  end

  # GET /_personnage_danimes_persos/1/edit
  def edit
  end

  # POST /_personnage_danimes_persos or /_personnage_danimes_persos.json
  def create
    @_personnage_danimes_perso = PersonnageDanimesPerso.new(_personnage_danimes_perso_params)

    respond_to do |format|
      if @_personnage_danimes_perso.save
        format.html { redirect_to personnage_danimes_perso_url(@_personnage_danimes_perso), notice: "Personnage danimes perso was successfully created." }
        format.json { render :show, status: :created, location: @_personnage_danimes_perso }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_personnage_danimes_perso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_personnage_danimes_persos/1 or /_personnage_danimes_persos/1.json
  def update
    respond_to do |format|
      if @_personnage_danimes_perso.update(_personnage_danimes_perso_params)
        format.html { redirect_to personnage_danimes_perso_url(@_personnage_danimes_perso), notice: "Personnage danimes perso was successfully updated." }
        format.json { render :show, status: :ok, location: @_personnage_danimes_perso }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_personnage_danimes_perso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_personnage_danimes_persos/1 or /_personnage_danimes_persos/1.json
  def destroy
    @_personnage_danimes_perso.destroy!

    respond_to do |format|
      format.html { redirect_to personnage_danimes_persos_url, notice: "Personnage danimes perso was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__personnage_danimes_perso
      @_personnage_danimes_perso = PersonnageDanimesPerso.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _personnage_danimes_perso_params
      params.require(:personnage_danimes_perso).permit(:name)
    end
end
