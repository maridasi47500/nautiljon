class MangasGroupesController < ApplicationController
  before_action :set__mangas_groupe, only: %i[ show edit update destroy ]

  # GET /_mangas_groupes or /_mangas_groupes.json
  def index
    @_mangas_groupes = MangasGroupe.all
  end

  # GET /_mangas_groupes/1 or /_mangas_groupes/1.json
  def show
  end

  # GET /_mangas_groupes/new
  def new
    @_mangas_groupe = MangasGroupe.new
  end

  # GET /_mangas_groupes/1/edit
  def edit
  end

  # POST /_mangas_groupes or /_mangas_groupes.json
  def create
    @_mangas_groupe = MangasGroupe.new(_mangas_groupe_params)

    respond_to do |format|
      if @_mangas_groupe.save
        format.html { redirect_to _mangas_groupe_url(@_mangas_groupe), notice: "Mangas groupe was successfully created." }
        format.json { render :show, status: :created, location: @_mangas_groupe }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_mangas_groupe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_mangas_groupes/1 or /_mangas_groupes/1.json
  def update
    respond_to do |format|
      if @_mangas_groupe.update(_mangas_groupe_params)
        format.html { redirect_to _mangas_groupe_url(@_mangas_groupe), notice: "Mangas groupe was successfully updated." }
        format.json { render :show, status: :ok, location: @_mangas_groupe }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_mangas_groupe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_mangas_groupes/1 or /_mangas_groupes/1.json
  def destroy
    @_mangas_groupe.destroy!

    respond_to do |format|
      format.html { redirect_to _mangas_groupes_url, notice: "Mangas groupe was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__mangas_groupe
      @_mangas_groupe = MangasGroupe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _mangas_groupe_params
      params.require(:_mangas_groupe).permit(:name)
    end
end
