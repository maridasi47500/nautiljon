class FilmsAsiatiquesGroupesController < ApplicationController
  before_action :set__films_asiatiques_groupe, only: %i[ show edit update destroy ]

  # GET /_films_asiatiques_groupes or /_films_asiatiques_groupes.json
  def index
    @_films_asiatiques_groupes = FilmsAsiatiquesGroupe.all
  end

  # GET /_films_asiatiques_groupes/1 or /_films_asiatiques_groupes/1.json
  def show
  end

  # GET /_films_asiatiques_groupes/new
  def new
    @_films_asiatiques_groupe = FilmsAsiatiquesGroupe.new
  end

  # GET /_films_asiatiques_groupes/1/edit
  def edit
  end

  # POST /_films_asiatiques_groupes or /_films_asiatiques_groupes.json
  def create
    @_films_asiatiques_groupe = FilmsAsiatiquesGroupe.new(_films_asiatiques_groupe_params)

    respond_to do |format|
      if @_films_asiatiques_groupe.save
        format.html { redirect_to films_asiatiques_groupe_url(@_films_asiatiques_groupe), notice: "Films asiatiques groupe was successfully created." }
        format.json { render :show, status: :created, location: @_films_asiatiques_groupe }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_groupe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_films_asiatiques_groupes/1 or /_films_asiatiques_groupes/1.json
  def update
    respond_to do |format|
      if @_films_asiatiques_groupe.update(_films_asiatiques_groupe_params)
        format.html { redirect_to films_asiatiques_groupe_url(@_films_asiatiques_groupe), notice: "Films asiatiques groupe was successfully updated." }
        format.json { render :show, status: :ok, location: @_films_asiatiques_groupe }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_groupe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_films_asiatiques_groupes/1 or /_films_asiatiques_groupes/1.json
  def destroy
    @_films_asiatiques_groupe.destroy!

    respond_to do |format|
      format.html { redirect_to films_asiatiques_groupes_url, notice: "Films asiatiques groupe was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__films_asiatiques_groupe
      @_films_asiatiques_groupe = FilmsAsiatiquesGroupe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _films_asiatiques_groupe_params
      params.require(:films_asiatiques_groupe).permit(:name)
    end
end
