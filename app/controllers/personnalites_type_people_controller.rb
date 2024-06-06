class PersonnalitesTypePeopleController < ApplicationController
  before_action :set__personnalites_type_person, only: %i[ show edit update destroy ]

  # GET /_personnalites_type_people or /_personnalites_type_people.json
  def index
    @_personnalites_type_people = PersonnalitesTypePerson.all
  end

  # GET /_personnalites_type_people/1 or /_personnalites_type_people/1.json
  def show
  end

  # GET /_personnalites_type_people/new
  def new
    @_personnalites_type_person = PersonnalitesTypePerson.new
  end

  # GET /_personnalites_type_people/1/edit
  def edit
  end

  # POST /_personnalites_type_people or /_personnalites_type_people.json
  def create
    @_personnalites_type_person = PersonnalitesTypePerson.new(_personnalites_type_person_params)

    respond_to do |format|
      if @_personnalites_type_person.save
        format.html { redirect_to _personnalites_type_person_url(@_personnalites_type_person), notice: "Personnalites type person was successfully created." }
        format.json { render :show, status: :created, location: @_personnalites_type_person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_personnalites_type_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_personnalites_type_people/1 or /_personnalites_type_people/1.json
  def update
    respond_to do |format|
      if @_personnalites_type_person.update(_personnalites_type_person_params)
        format.html { redirect_to _personnalites_type_person_url(@_personnalites_type_person), notice: "Personnalites type person was successfully updated." }
        format.json { render :show, status: :ok, location: @_personnalites_type_person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_personnalites_type_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_personnalites_type_people/1 or /_personnalites_type_people/1.json
  def destroy
    @_personnalites_type_person.destroy!

    respond_to do |format|
      format.html { redirect_to _personnalites_type_people_url, notice: "Personnalites type person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__personnalites_type_person
      @_personnalites_type_person = PersonnalitesTypePerson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _personnalites_type_person_params
      params.require(:_personnalites_type_person).permit(:name)
    end
end
