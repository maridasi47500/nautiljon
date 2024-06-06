class FicheUniversPeopleController < ApplicationController
  before_action :set__fiche_univers_person, only: %i[ show edit update destroy ]

  # GET /_fiche_univers_people or /_fiche_univers_people.json
  def index
    @_fiche_univers_people = FicheUniversPerson.all
  end

  # GET /_fiche_univers_people/1 or /_fiche_univers_people/1.json
  def show
  end

  # GET /_fiche_univers_people/new
  def new
    @_fiche_univers_person = FicheUniversPerson.new
  end

  # GET /_fiche_univers_people/1/edit
  def edit
  end

  # POST /_fiche_univers_people or /_fiche_univers_people.json
  def create
    @_fiche_univers_person = FicheUniversPerson.new(_fiche_univers_person_params)

    respond_to do |format|
      if @_fiche_univers_person.save
        format.html { redirect_to _fiche_univers_person_url(@_fiche_univers_person), notice: "Fiche univers person was successfully created." }
        format.json { render :show, status: :created, location: @_fiche_univers_person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_fiche_univers_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_fiche_univers_people/1 or /_fiche_univers_people/1.json
  def update
    respond_to do |format|
      if @_fiche_univers_person.update(_fiche_univers_person_params)
        format.html { redirect_to _fiche_univers_person_url(@_fiche_univers_person), notice: "Fiche univers person was successfully updated." }
        format.json { render :show, status: :ok, location: @_fiche_univers_person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_fiche_univers_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_fiche_univers_people/1 or /_fiche_univers_people/1.json
  def destroy
    @_fiche_univers_person.destroy!

    respond_to do |format|
      format.html { redirect_to _fiche_univers_people_url, notice: "Fiche univers person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__fiche_univers_person
      @_fiche_univers_person = FicheUniversPerson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _fiche_univers_person_params
      params.require(:_fiche_univers_person).permit(:name)
    end
end
