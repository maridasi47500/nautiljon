class LivresStaffPeopleController < ApplicationController
  before_action :set__livres_staff_person, only: %i[ show edit update destroy ]

  # GET /_livres_staff_people or /_livres_staff_people.json
  def index
    @_livres_staff_people = LivresStaffPerson.all
  end

  # GET /_livres_staff_people/1 or /_livres_staff_people/1.json
  def show
  end

  # GET /_livres_staff_people/new
  def new
    @_livres_staff_person = LivresStaffPerson.new
  end

  # GET /_livres_staff_people/1/edit
  def edit
  end

  # POST /_livres_staff_people or /_livres_staff_people.json
  def create
    @_livres_staff_person = LivresStaffPerson.new(_livres_staff_person_params)

    respond_to do |format|
      if @_livres_staff_person.save
        format.html { redirect_to _livres_staff_person_url(@_livres_staff_person), notice: "Livres staff person was successfully created." }
        format.json { render :show, status: :created, location: @_livres_staff_person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_livres_staff_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_livres_staff_people/1 or /_livres_staff_people/1.json
  def update
    respond_to do |format|
      if @_livres_staff_person.update(_livres_staff_person_params)
        format.html { redirect_to _livres_staff_person_url(@_livres_staff_person), notice: "Livres staff person was successfully updated." }
        format.json { render :show, status: :ok, location: @_livres_staff_person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_livres_staff_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_livres_staff_people/1 or /_livres_staff_people/1.json
  def destroy
    @_livres_staff_person.destroy!

    respond_to do |format|
      format.html { redirect_to _livres_staff_people_url, notice: "Livres staff person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__livres_staff_person
      @_livres_staff_person = LivresStaffPerson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _livres_staff_person_params
      params.require(:_livres_staff_person).permit(:name)
    end
end
