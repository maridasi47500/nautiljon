class DramasActeursController < ApplicationController
  before_action :set__dramas_acteur, only: %i[ show edit update destroy ]

  # GET /_dramas_acteurs or /_dramas_acteurs.json
  def index
    @_dramas_acteurs = DramasActeur.all
  end

  # GET /_dramas_acteurs/1 or /_dramas_acteurs/1.json
  def show
  end

  # GET /_dramas_acteurs/new
  def new
    @_dramas_acteur = DramasActeur.new
  end

  # GET /_dramas_acteurs/1/edit
  def edit
  end

  # POST /_dramas_acteurs or /_dramas_acteurs.json
  def create
    @_dramas_acteur = DramasActeur.new(_dramas_acteur_params)

    respond_to do |format|
      if @_dramas_acteur.save
        format.html { redirect_to _dramas_acteur_url(@_dramas_acteur), notice: "Dramas acteur was successfully created." }
        format.json { render :show, status: :created, location: @_dramas_acteur }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dramas_acteur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dramas_acteurs/1 or /_dramas_acteurs/1.json
  def update
    respond_to do |format|
      if @_dramas_acteur.update(_dramas_acteur_params)
        format.html { redirect_to _dramas_acteur_url(@_dramas_acteur), notice: "Dramas acteur was successfully updated." }
        format.json { render :show, status: :ok, location: @_dramas_acteur }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dramas_acteur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dramas_acteurs/1 or /_dramas_acteurs/1.json
  def destroy
    @_dramas_acteur.destroy!

    respond_to do |format|
      format.html { redirect_to _dramas_acteurs_url, notice: "Dramas acteur was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dramas_acteur
      @_dramas_acteur = DramasActeur.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dramas_acteur_params
      params.require(:_dramas_acteur).permit(:name)
    end
end
