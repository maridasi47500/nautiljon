class FilmsAsiatiquesEnSallesController < ApplicationController
  before_action :set__films_asiatiques_en_salle, only: %i[ show edit update destroy ]

  def agenda
    @_films_asiatiques_en_salles = FilmsAsiatiquesEnSalle.all
  end

 # GET /_films_asiatiques_en_salles or /_films_asiatiques_en_salles.json
  def index
    @_films_asiatiques_en_salles = FilmsAsiatiquesEnSalle.all
  end

  # GET /_films_asiatiques_en_salles/1 or /_films_asiatiques_en_salles/1.json
  def show
  end

  # GET /_films_asiatiques_en_salles/new
  def new
    @_films_asiatiques_en_salle = FilmsAsiatiquesEnSalle.new
  end

  # GET /_films_asiatiques_en_salles/1/edit
  def edit
  end

  # POST /_films_asiatiques_en_salles or /_films_asiatiques_en_salles.json
  def create
    @_films_asiatiques_en_salle = FilmsAsiatiquesEnSalle.new(_films_asiatiques_en_salle_params)

    respond_to do |format|
      if @_films_asiatiques_en_salle.save
        format.html { redirect_to films_asiatiques_en_salle_url(@_films_asiatiques_en_salle), notice: "Films asiatiques en salle was successfully created." }
        format.json { render :show, status: :created, location: @_films_asiatiques_en_salle }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_en_salle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_films_asiatiques_en_salles/1 or /_films_asiatiques_en_salles/1.json
  def update
    respond_to do |format|
      if @_films_asiatiques_en_salle.update(_films_asiatiques_en_salle_params)
        format.html { redirect_to films_asiatiques_en_salle_url(@_films_asiatiques_en_salle), notice: "Films asiatiques en salle was successfully updated." }
        format.json { render :show, status: :ok, location: @_films_asiatiques_en_salle }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_en_salle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_films_asiatiques_en_salles/1 or /_films_asiatiques_en_salles/1.json
  def destroy
    @_films_asiatiques_en_salle.destroy!

    respond_to do |format|
      format.html { redirect_to films_asiatiques_en_salles_url, notice: "Films asiatiques en salle was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__films_asiatiques_en_salle
      @_films_asiatiques_en_salle = FilmsAsiatiquesEnSalle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _films_asiatiques_en_salle_params
      params.require(:films_asiatiques_en_salle).permit(:titre, :titre_original, :_films_asiatiques_en_salles_pays_id, :_films_asiatiques_en_salles_langue_id, :_films_asiatiques_en_salles_pays_id, :_films_asiatiques_en_salles_langue_id, :image, :annee, :_films_asiatiques_en_salles_pays_origine_id, :_films_asiatiques_en_salles_pays_origine_id, :duree, :age, :_films_asiatiques_en_salles_genres_id, :_films_asiatiques_en_salles_genres_id, :youtube, :site, :site2, :_films_asiatiques_en_salles_staff_role_id, :_films_asiatiques_en_salles_staff_people_id, :_films_asiatiques_en_salles_staff_role_id, :_films_asiatiques_en_salles_staff_people_id, :_films_asiatiques_en_salles_type_id, :_films_asiatiques_en_salles_acteurs_id, :_films_asiatiques_en_salles_type_id, :_films_asiatiques_en_salles_acteurs_id, :_films_asiatiques_en_salles_anime_id, :_films_asiatiques_en_salles_am_id, :_films_asiatiques_en_salles_drama_id, :_films_asiatiques_en_salles_actualite_id, :_films_asiatiques_en_salles_actualite_mini_id, :synopsis, :recompense, :comment, :acceptregles)
    end
end
