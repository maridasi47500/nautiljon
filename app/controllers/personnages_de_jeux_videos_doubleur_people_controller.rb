class PersonnagesDeJeuxVideosDoubleurPeopleController < ApplicationController
  before_action :set__personnages_de_jeux_videos_doubleur_person, only: %i[ show edit update destroy ]

  # GET /_personnages_de_jeux_videos_doubleur_people or /_personnages_de_jeux_videos_doubleur_people.json
  def index
    @_personnages_de_jeux_videos_doubleur_people = PersonnagesDeJeuxVideosDoubleurPerson.all
  end

  # GET /_personnages_de_jeux_videos_doubleur_people/1 or /_personnages_de_jeux_videos_doubleur_people/1.json
  def show
  end

  # GET /_personnages_de_jeux_videos_doubleur_people/new
  def new
    @_personnages_de_jeux_videos_doubleur_person = PersonnagesDeJeuxVideosDoubleurPerson.new
  end

  # GET /_personnages_de_jeux_videos_doubleur_people/1/edit
  def edit
  end

  # POST /_personnages_de_jeux_videos_doubleur_people or /_personnages_de_jeux_videos_doubleur_people.json
  def create
    @_personnages_de_jeux_videos_doubleur_person = PersonnagesDeJeuxVideosDoubleurPerson.new(_personnages_de_jeux_videos_doubleur_person_params)

    respond_to do |format|
      if @_personnages_de_jeux_videos_doubleur_person.save
        format.html { redirect_to personnages_de_jeux_videos_doubleur_person_url(@_personnages_de_jeux_videos_doubleur_person), notice: "Personnages de jeux videos doubleur person was successfully created." }
        format.json { render :show, status: :created, location: @_personnages_de_jeux_videos_doubleur_person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_personnages_de_jeux_videos_doubleur_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_personnages_de_jeux_videos_doubleur_people/1 or /_personnages_de_jeux_videos_doubleur_people/1.json
  def update
    respond_to do |format|
      if @_personnages_de_jeux_videos_doubleur_person.update(_personnages_de_jeux_videos_doubleur_person_params)
        format.html { redirect_to personnages_de_jeux_videos_doubleur_person_url(@_personnages_de_jeux_videos_doubleur_person), notice: "Personnages de jeux videos doubleur person was successfully updated." }
        format.json { render :show, status: :ok, location: @_personnages_de_jeux_videos_doubleur_person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_personnages_de_jeux_videos_doubleur_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_personnages_de_jeux_videos_doubleur_people/1 or /_personnages_de_jeux_videos_doubleur_people/1.json
  def destroy
    @_personnages_de_jeux_videos_doubleur_person.destroy!

    respond_to do |format|
      format.html { redirect_to personnages_de_jeux_videos_doubleur_people_url, notice: "Personnages de jeux videos doubleur person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__personnages_de_jeux_videos_doubleur_person
      @_personnages_de_jeux_videos_doubleur_person = PersonnagesDeJeuxVideosDoubleurPerson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _personnages_de_jeux_videos_doubleur_person_params
      params.require(:personnages_de_jeux_videos_doubleur_person).permit(:name)
    end
end
