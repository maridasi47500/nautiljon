class GeneriqueDeJeuVideosStaffPeopleController < ApplicationController
  before_action :set__generique_de_jeu_videos_staff_person, only: %i[ show edit update destroy ]

  # GET /_generique_de_jeu_videos_staff_people or /_generique_de_jeu_videos_staff_people.json
  def index
    @_generique_de_jeu_videos_staff_people = GeneriqueDeJeuVideosStaffPerson.all
  end

  # GET /_generique_de_jeu_videos_staff_people/1 or /_generique_de_jeu_videos_staff_people/1.json
  def show
  end

  # GET /_generique_de_jeu_videos_staff_people/new
  def new
    @_generique_de_jeu_videos_staff_person = GeneriqueDeJeuVideosStaffPerson.new
  end

  # GET /_generique_de_jeu_videos_staff_people/1/edit
  def edit
  end

  # POST /_generique_de_jeu_videos_staff_people or /_generique_de_jeu_videos_staff_people.json
  def create
    @_generique_de_jeu_videos_staff_person = GeneriqueDeJeuVideosStaffPerson.new(_generique_de_jeu_videos_staff_person_params)

    respond_to do |format|
      if @_generique_de_jeu_videos_staff_person.save
        format.html { redirect_to _generique_de_jeu_videos_staff_person_url(@_generique_de_jeu_videos_staff_person), notice: "Generique de jeu videos staff person was successfully created." }
        format.json { render :show, status: :created, location: @_generique_de_jeu_videos_staff_person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_generique_de_jeu_videos_staff_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_generique_de_jeu_videos_staff_people/1 or /_generique_de_jeu_videos_staff_people/1.json
  def update
    respond_to do |format|
      if @_generique_de_jeu_videos_staff_person.update(_generique_de_jeu_videos_staff_person_params)
        format.html { redirect_to _generique_de_jeu_videos_staff_person_url(@_generique_de_jeu_videos_staff_person), notice: "Generique de jeu videos staff person was successfully updated." }
        format.json { render :show, status: :ok, location: @_generique_de_jeu_videos_staff_person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_generique_de_jeu_videos_staff_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_generique_de_jeu_videos_staff_people/1 or /_generique_de_jeu_videos_staff_people/1.json
  def destroy
    @_generique_de_jeu_videos_staff_person.destroy!

    respond_to do |format|
      format.html { redirect_to _generique_de_jeu_videos_staff_people_url, notice: "Generique de jeu videos staff person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__generique_de_jeu_videos_staff_person
      @_generique_de_jeu_videos_staff_person = GeneriqueDeJeuVideosStaffPerson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _generique_de_jeu_videos_staff_person_params
      params.require(:_generique_de_jeu_videos_staff_person).permit(:name)
    end
end
