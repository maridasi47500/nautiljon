class FilmsAsiatiquesActeursController < ApplicationController
  before_action :set__films_asiatiques_acteur, only: %i[ show edit update destroy ]

  # GET /_films_asiatiques_acteurs or /_films_asiatiques_acteurs.json
  def index
    @_films_asiatiques_acteurs = FilmsAsiatiquesActeur.all
  end

  # GET /_films_asiatiques_acteurs/1 or /_films_asiatiques_acteurs/1.json
  def show
  end

  # GET /_films_asiatiques_acteurs/new
  def new
    @_films_asiatiques_acteur = FilmsAsiatiquesActeur.new
  end

  # GET /_films_asiatiques_acteurs/1/edit
  def edit
  end

  # POST /_films_asiatiques_acteurs or /_films_asiatiques_acteurs.json
  def create
    @_films_asiatiques_acteur = FilmsAsiatiquesActeur.new(_films_asiatiques_acteur_params)

    respond_to do |format|
      if @_films_asiatiques_acteur.save
        format.html { redirect_to films_asiatiques_acteur_url(@_films_asiatiques_acteur), notice: "Films asiatiques acteur was successfully created." }
        format.json { render :show, status: :created, location: @_films_asiatiques_acteur }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_acteur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_films_asiatiques_acteurs/1 or /_films_asiatiques_acteurs/1.json
  def update
    respond_to do |format|
      if @_films_asiatiques_acteur.update(_films_asiatiques_acteur_params)
        format.html { redirect_to films_asiatiques_acteur_url(@_films_asiatiques_acteur), notice: "Films asiatiques acteur was successfully updated." }
        format.json { render :show, status: :ok, location: @_films_asiatiques_acteur }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_acteur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_films_asiatiques_acteurs/1 or /_films_asiatiques_acteurs/1.json
  def destroy
    @_films_asiatiques_acteur.destroy!

    respond_to do |format|
      format.html { redirect_to films_asiatiques_acteurs_url, notice: "Films asiatiques acteur was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__films_asiatiques_acteur
      @_films_asiatiques_acteur = FilmsAsiatiquesActeur.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _films_asiatiques_acteur_params
      params.require(:films_asiatiques_acteur).permit(:name)
    end
end
