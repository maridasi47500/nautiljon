class FilmsAsiatiquesActualitesController < ApplicationController
  before_action :set__films_asiatiques_actualite, only: %i[ show edit update destroy ]

  # GET /_films_asiatiques_actualites or /_films_asiatiques_actualites.json
  def index
    @_films_asiatiques_actualites = FilmsAsiatiquesActualite.all
  end

  # GET /_films_asiatiques_actualites/1 or /_films_asiatiques_actualites/1.json
  def show
  end

  # GET /_films_asiatiques_actualites/new
  def new
    @_films_asiatiques_actualite = FilmsAsiatiquesActualite.new
  end

  # GET /_films_asiatiques_actualites/1/edit
  def edit
  end

  # POST /_films_asiatiques_actualites or /_films_asiatiques_actualites.json
  def create
    @_films_asiatiques_actualite = FilmsAsiatiquesActualite.new(_films_asiatiques_actualite_params)

    respond_to do |format|
      if @_films_asiatiques_actualite.save
        format.html { redirect_to films_asiatiques_actualite_url(@_films_asiatiques_actualite), notice: "Films asiatiques actualite was successfully created." }
        format.json { render :show, status: :created, location: @_films_asiatiques_actualite }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_actualite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_films_asiatiques_actualites/1 or /_films_asiatiques_actualites/1.json
  def update
    respond_to do |format|
      if @_films_asiatiques_actualite.update(_films_asiatiques_actualite_params)
        format.html { redirect_to films_asiatiques_actualite_url(@_films_asiatiques_actualite), notice: "Films asiatiques actualite was successfully updated." }
        format.json { render :show, status: :ok, location: @_films_asiatiques_actualite }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_actualite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_films_asiatiques_actualites/1 or /_films_asiatiques_actualites/1.json
  def destroy
    @_films_asiatiques_actualite.destroy!

    respond_to do |format|
      format.html { redirect_to films_asiatiques_actualites_url, notice: "Films asiatiques actualite was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__films_asiatiques_actualite
      @_films_asiatiques_actualite = FilmsAsiatiquesActualite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _films_asiatiques_actualite_params
      params.require(:films_asiatiques_actualite).permit(:name)
    end
end
