class LivresGroupesController < ApplicationController
  before_action :set__livres_groupe, only: %i[ show edit update destroy ]

  # GET /_livres_groupes or /_livres_groupes.json
  def index
    @_livres_groupes = LivresGroupe.all
  end

  # GET /_livres_groupes/1 or /_livres_groupes/1.json
  def show
  end

  # GET /_livres_groupes/new
  def new
    @_livres_groupe = LivresGroupe.new
  end

  # GET /_livres_groupes/1/edit
  def edit
  end

  # POST /_livres_groupes or /_livres_groupes.json
  def create
    @_livres_groupe = LivresGroupe.new(_livres_groupe_params)

    respond_to do |format|
      if @_livres_groupe.save
        format.html { redirect_to livres_groupe_url(@_livres_groupe), notice: "Livres groupe was successfully created." }
        format.json { render :show, status: :created, location: @_livres_groupe }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_livres_groupe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_livres_groupes/1 or /_livres_groupes/1.json
  def update
    respond_to do |format|
      if @_livres_groupe.update(_livres_groupe_params)
        format.html { redirect_to livres_groupe_url(@_livres_groupe), notice: "Livres groupe was successfully updated." }
        format.json { render :show, status: :ok, location: @_livres_groupe }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_livres_groupe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_livres_groupes/1 or /_livres_groupes/1.json
  def destroy
    @_livres_groupe.destroy!

    respond_to do |format|
      format.html { redirect_to livres_groupes_url, notice: "Livres groupe was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__livres_groupe
      @_livres_groupe = LivresGroupe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _livres_groupe_params
      params.require(:livres_groupe).permit(:name)
    end
end
