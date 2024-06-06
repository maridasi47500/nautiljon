class PersonnageDanimesDoubleurPeopleController < ApplicationController
  before_action :set__personnage_danimes_doubleur_person, only: %i[ show edit update destroy ]

  # GET /_personnage_danimes_doubleur_people or /_personnage_danimes_doubleur_people.json
  def index
    @_personnage_danimes_doubleur_people = PersonnageDanimesDoubleurPerson.all
  end

  # GET /_personnage_danimes_doubleur_people/1 or /_personnage_danimes_doubleur_people/1.json
  def show
  end

  # GET /_personnage_danimes_doubleur_people/new
  def new
    @_personnage_danimes_doubleur_person = PersonnageDanimesDoubleurPerson.new
  end

  # GET /_personnage_danimes_doubleur_people/1/edit
  def edit
  end

  # POST /_personnage_danimes_doubleur_people or /_personnage_danimes_doubleur_people.json
  def create
    @_personnage_danimes_doubleur_person = PersonnageDanimesDoubleurPerson.new(_personnage_danimes_doubleur_person_params)

    respond_to do |format|
      if @_personnage_danimes_doubleur_person.save
        format.html { redirect_to _personnage_danimes_doubleur_person_url(@_personnage_danimes_doubleur_person), notice: "Personnage danimes doubleur person was successfully created." }
        format.json { render :show, status: :created, location: @_personnage_danimes_doubleur_person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_personnage_danimes_doubleur_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_personnage_danimes_doubleur_people/1 or /_personnage_danimes_doubleur_people/1.json
  def update
    respond_to do |format|
      if @_personnage_danimes_doubleur_person.update(_personnage_danimes_doubleur_person_params)
        format.html { redirect_to _personnage_danimes_doubleur_person_url(@_personnage_danimes_doubleur_person), notice: "Personnage danimes doubleur person was successfully updated." }
        format.json { render :show, status: :ok, location: @_personnage_danimes_doubleur_person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_personnage_danimes_doubleur_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_personnage_danimes_doubleur_people/1 or /_personnage_danimes_doubleur_people/1.json
  def destroy
    @_personnage_danimes_doubleur_person.destroy!

    respond_to do |format|
      format.html { redirect_to _personnage_danimes_doubleur_people_url, notice: "Personnage danimes doubleur person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__personnage_danimes_doubleur_person
      @_personnage_danimes_doubleur_person = PersonnageDanimesDoubleurPerson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _personnage_danimes_doubleur_person_params
      params.require(:_personnage_danimes_doubleur_person).permit(:name)
    end
end
