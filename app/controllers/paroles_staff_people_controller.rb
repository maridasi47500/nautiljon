class ParolesStaffPeopleController < ApplicationController
  before_action :set__paroles_staff_person, only: %i[ show edit update destroy ]

  # GET /_paroles_staff_people or /_paroles_staff_people.json
  def index
    @_paroles_staff_people = ParolesStaffPerson.all
  end

  # GET /_paroles_staff_people/1 or /_paroles_staff_people/1.json
  def show
  end

  # GET /_paroles_staff_people/new
  def new
    @_paroles_staff_person = ParolesStaffPerson.new
  end

  # GET /_paroles_staff_people/1/edit
  def edit
  end

  # POST /_paroles_staff_people or /_paroles_staff_people.json
  def create
    @_paroles_staff_person = ParolesStaffPerson.new(_paroles_staff_person_params)

    respond_to do |format|
      if @_paroles_staff_person.save
        format.html { redirect_to paroles_staff_person_url(@_paroles_staff_person), notice: "Paroles staff person was successfully created." }
        format.json { render :show, status: :created, location: @_paroles_staff_person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_paroles_staff_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_paroles_staff_people/1 or /_paroles_staff_people/1.json
  def update
    respond_to do |format|
      if @_paroles_staff_person.update(_paroles_staff_person_params)
        format.html { redirect_to paroles_staff_person_url(@_paroles_staff_person), notice: "Paroles staff person was successfully updated." }
        format.json { render :show, status: :ok, location: @_paroles_staff_person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_paroles_staff_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_paroles_staff_people/1 or /_paroles_staff_people/1.json
  def destroy
    @_paroles_staff_person.destroy!

    respond_to do |format|
      format.html { redirect_to paroles_staff_people_url, notice: "Paroles staff person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__paroles_staff_person
      @_paroles_staff_person = ParolesStaffPerson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _paroles_staff_person_params
      params.require(:paroles_staff_person).permit(:name)
    end
end
