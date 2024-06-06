class PersonnageDanimesJvPersosController < ApplicationController
  before_action :set__personnage_danimes_jv_perso, only: %i[ show edit update destroy ]

  # GET /_personnage_danimes_jv_persos or /_personnage_danimes_jv_persos.json
  def index
    @_personnage_danimes_jv_persos = PersonnageDanimesJvPerso.all
  end

  # GET /_personnage_danimes_jv_persos/1 or /_personnage_danimes_jv_persos/1.json
  def show
  end

  # GET /_personnage_danimes_jv_persos/new
  def new
    @_personnage_danimes_jv_perso = PersonnageDanimesJvPerso.new
  end

  # GET /_personnage_danimes_jv_persos/1/edit
  def edit
  end

  # POST /_personnage_danimes_jv_persos or /_personnage_danimes_jv_persos.json
  def create
    @_personnage_danimes_jv_perso = PersonnageDanimesJvPerso.new(_personnage_danimes_jv_perso_params)

    respond_to do |format|
      if @_personnage_danimes_jv_perso.save
        format.html { redirect_to _personnage_danimes_jv_perso_url(@_personnage_danimes_jv_perso), notice: "Personnage danimes jv perso was successfully created." }
        format.json { render :show, status: :created, location: @_personnage_danimes_jv_perso }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_personnage_danimes_jv_perso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_personnage_danimes_jv_persos/1 or /_personnage_danimes_jv_persos/1.json
  def update
    respond_to do |format|
      if @_personnage_danimes_jv_perso.update(_personnage_danimes_jv_perso_params)
        format.html { redirect_to _personnage_danimes_jv_perso_url(@_personnage_danimes_jv_perso), notice: "Personnage danimes jv perso was successfully updated." }
        format.json { render :show, status: :ok, location: @_personnage_danimes_jv_perso }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_personnage_danimes_jv_perso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_personnage_danimes_jv_persos/1 or /_personnage_danimes_jv_persos/1.json
  def destroy
    @_personnage_danimes_jv_perso.destroy!

    respond_to do |format|
      format.html { redirect_to _personnage_danimes_jv_persos_url, notice: "Personnage danimes jv perso was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__personnage_danimes_jv_perso
      @_personnage_danimes_jv_perso = PersonnageDanimesJvPerso.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _personnage_danimes_jv_perso_params
      params.require(:_personnage_danimes_jv_perso).permit(:name)
    end
end
