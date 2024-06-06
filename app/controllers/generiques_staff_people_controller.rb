class GeneriquesStaffPeopleController < ApplicationController
  before_action :set__generiques_staff_person, only: %i[ show edit update destroy ]

  # GET /_generiques_staff_people or /_generiques_staff_people.json
  def index
    @_generiques_staff_people = GeneriquesStaffPerson.all
  end

  # GET /_generiques_staff_people/1 or /_generiques_staff_people/1.json
  def show
  end

  # GET /_generiques_staff_people/new
  def new
    @_generiques_staff_person = GeneriquesStaffPerson.new
  end

  # GET /_generiques_staff_people/1/edit
  def edit
  end

  # POST /_generiques_staff_people or /_generiques_staff_people.json
  def create
    @_generiques_staff_person = GeneriquesStaffPerson.new(_generiques_staff_person_params)

    respond_to do |format|
      if @_generiques_staff_person.save
        format.html { redirect_to _generiques_staff_person_url(@_generiques_staff_person), notice: "Generiques staff person was successfully created." }
        format.json { render :show, status: :created, location: @_generiques_staff_person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_generiques_staff_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_generiques_staff_people/1 or /_generiques_staff_people/1.json
  def update
    respond_to do |format|
      if @_generiques_staff_person.update(_generiques_staff_person_params)
        format.html { redirect_to _generiques_staff_person_url(@_generiques_staff_person), notice: "Generiques staff person was successfully updated." }
        format.json { render :show, status: :ok, location: @_generiques_staff_person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_generiques_staff_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_generiques_staff_people/1 or /_generiques_staff_people/1.json
  def destroy
    @_generiques_staff_person.destroy!

    respond_to do |format|
      format.html { redirect_to _generiques_staff_people_url, notice: "Generiques staff person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__generiques_staff_person
      @_generiques_staff_person = GeneriquesStaffPerson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _generiques_staff_person_params
      params.require(:_generiques_staff_person).permit(:name)
    end
end
