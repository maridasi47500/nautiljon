class FilmsAsiatiquesActualiteMinisController < ApplicationController
  before_action :set__films_asiatiques_actualite_mini, only: %i[ show edit update destroy ]

  # GET /_films_asiatiques_actualite_minis or /_films_asiatiques_actualite_minis.json
  def index
    @_films_asiatiques_actualite_minis = FilmsAsiatiquesActualiteMini.all
  end

  # GET /_films_asiatiques_actualite_minis/1 or /_films_asiatiques_actualite_minis/1.json
  def show
  end

  # GET /_films_asiatiques_actualite_minis/new
  def new
    @_films_asiatiques_actualite_mini = FilmsAsiatiquesActualiteMini.new
  end

  # GET /_films_asiatiques_actualite_minis/1/edit
  def edit
  end

  # POST /_films_asiatiques_actualite_minis or /_films_asiatiques_actualite_minis.json
  def create
    @_films_asiatiques_actualite_mini = FilmsAsiatiquesActualiteMini.new(_films_asiatiques_actualite_mini_params)

    respond_to do |format|
      if @_films_asiatiques_actualite_mini.save
        format.html { redirect_to _films_asiatiques_actualite_mini_url(@_films_asiatiques_actualite_mini), notice: "Films asiatiques actualite mini was successfully created." }
        format.json { render :show, status: :created, location: @_films_asiatiques_actualite_mini }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_actualite_mini.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_films_asiatiques_actualite_minis/1 or /_films_asiatiques_actualite_minis/1.json
  def update
    respond_to do |format|
      if @_films_asiatiques_actualite_mini.update(_films_asiatiques_actualite_mini_params)
        format.html { redirect_to _films_asiatiques_actualite_mini_url(@_films_asiatiques_actualite_mini), notice: "Films asiatiques actualite mini was successfully updated." }
        format.json { render :show, status: :ok, location: @_films_asiatiques_actualite_mini }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_actualite_mini.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_films_asiatiques_actualite_minis/1 or /_films_asiatiques_actualite_minis/1.json
  def destroy
    @_films_asiatiques_actualite_mini.destroy!

    respond_to do |format|
      format.html { redirect_to _films_asiatiques_actualite_minis_url, notice: "Films asiatiques actualite mini was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__films_asiatiques_actualite_mini
      @_films_asiatiques_actualite_mini = FilmsAsiatiquesActualiteMini.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _films_asiatiques_actualite_mini_params
      params.require(:_films_asiatiques_actualite_mini).permit(:name)
    end
end
