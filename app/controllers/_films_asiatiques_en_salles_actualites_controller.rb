class FilmsAsiatiquesEnSallesActualitesController < ApplicationController
  before_action :set__films_asiatiques_en_salles_actualite, only: %i[ show edit update destroy ]

  # GET /_films_asiatiques_en_salles_actualites or /_films_asiatiques_en_salles_actualites.json
  def index
    @_films_asiatiques_en_salles_actualites = FilmsAsiatiquesEnSallesActualite.all
  end

  # GET /_films_asiatiques_en_salles_actualites/1 or /_films_asiatiques_en_salles_actualites/1.json
  def show
  end

  # GET /_films_asiatiques_en_salles_actualites/new
  def new
    @_films_asiatiques_en_salles_actualite = FilmsAsiatiquesEnSallesActualite.new
  end

  # GET /_films_asiatiques_en_salles_actualites/1/edit
  def edit
  end

  # POST /_films_asiatiques_en_salles_actualites or /_films_asiatiques_en_salles_actualites.json
  def create
    @_films_asiatiques_en_salles_actualite = FilmsAsiatiquesEnSallesActualite.new(_films_asiatiques_en_salles_actualite_params)

    respond_to do |format|
      if @_films_asiatiques_en_salles_actualite.save
        format.html { redirect_to _films_asiatiques_en_salles_actualite_url(@_films_asiatiques_en_salles_actualite), notice: "Films asiatiques en salles actualite was successfully created." }
        format.json { render :show, status: :created, location: @_films_asiatiques_en_salles_actualite }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_en_salles_actualite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_films_asiatiques_en_salles_actualites/1 or /_films_asiatiques_en_salles_actualites/1.json
  def update
    respond_to do |format|
      if @_films_asiatiques_en_salles_actualite.update(_films_asiatiques_en_salles_actualite_params)
        format.html { redirect_to _films_asiatiques_en_salles_actualite_url(@_films_asiatiques_en_salles_actualite), notice: "Films asiatiques en salles actualite was successfully updated." }
        format.json { render :show, status: :ok, location: @_films_asiatiques_en_salles_actualite }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_en_salles_actualite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_films_asiatiques_en_salles_actualites/1 or /_films_asiatiques_en_salles_actualites/1.json
  def destroy
    @_films_asiatiques_en_salles_actualite.destroy!

    respond_to do |format|
      format.html { redirect_to _films_asiatiques_en_salles_actualites_url, notice: "Films asiatiques en salles actualite was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__films_asiatiques_en_salles_actualite
      @_films_asiatiques_en_salles_actualite = FilmsAsiatiquesEnSallesActualite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _films_asiatiques_en_salles_actualite_params
      params.require(:_films_asiatiques_en_salles_actualite).permit(:name)
    end
end
