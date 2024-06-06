class GoodiesStaffPeopleController < ApplicationController
  before_action :set__goodies_staff_person, only: %i[ show edit update destroy ]

  # GET /_goodies_staff_people or /_goodies_staff_people.json
  def index
    @_goodies_staff_people = GoodiesStaffPerson.all
  end

  # GET /_goodies_staff_people/1 or /_goodies_staff_people/1.json
  def show
  end

  # GET /_goodies_staff_people/new
  def new
    @_goodies_staff_person = GoodiesStaffPerson.new
  end

  # GET /_goodies_staff_people/1/edit
  def edit
  end

  # POST /_goodies_staff_people or /_goodies_staff_people.json
  def create
    @_goodies_staff_person = GoodiesStaffPerson.new(_goodies_staff_person_params)

    respond_to do |format|
      if @_goodies_staff_person.save
        format.html { redirect_to goodies_staff_person_url(@_goodies_staff_person), notice: "Goodies staff person was successfully created." }
        format.json { render :show, status: :created, location: @_goodies_staff_person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_goodies_staff_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_goodies_staff_people/1 or /_goodies_staff_people/1.json
  def update
    respond_to do |format|
      if @_goodies_staff_person.update(_goodies_staff_person_params)
        format.html { redirect_to goodies_staff_person_url(@_goodies_staff_person), notice: "Goodies staff person was successfully updated." }
        format.json { render :show, status: :ok, location: @_goodies_staff_person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_goodies_staff_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_goodies_staff_people/1 or /_goodies_staff_people/1.json
  def destroy
    @_goodies_staff_person.destroy!

    respond_to do |format|
      format.html { redirect_to goodies_staff_people_url, notice: "Goodies staff person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__goodies_staff_person
      @_goodies_staff_person = GoodiesStaffPerson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _goodies_staff_person_params
      params.require(:goodies_staff_person).permit(:name)
    end
end
