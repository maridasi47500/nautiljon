class DoujinshisStaffPeopleController < ApplicationController
  before_action :set__doujinshis_staff_person, only: %i[ show edit update destroy ]

  # GET /_doujinshis_staff_people or /_doujinshis_staff_people.json
  def index
    @_doujinshis_staff_people = DoujinshisStaffPerson.all
  end

  # GET /_doujinshis_staff_people/1 or /_doujinshis_staff_people/1.json
  def show
  end

  # GET /_doujinshis_staff_people/new
  def new
    @_doujinshis_staff_person = DoujinshisStaffPerson.new
  end

  # GET /_doujinshis_staff_people/1/edit
  def edit
  end

  # POST /_doujinshis_staff_people or /_doujinshis_staff_people.json
  def create
    @_doujinshis_staff_person = DoujinshisStaffPerson.new(_doujinshis_staff_person_params)

    respond_to do |format|
      if @_doujinshis_staff_person.save
        format.html { redirect_to doujinshis_staff_person_url(@_doujinshis_staff_person), notice: "Doujinshis staff person was successfully created." }
        format.json { render :show, status: :created, location: @_doujinshis_staff_person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_staff_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_doujinshis_staff_people/1 or /_doujinshis_staff_people/1.json
  def update
    respond_to do |format|
      if @_doujinshis_staff_person.update(_doujinshis_staff_person_params)
        format.html { redirect_to doujinshis_staff_person_url(@_doujinshis_staff_person), notice: "Doujinshis staff person was successfully updated." }
        format.json { render :show, status: :ok, location: @_doujinshis_staff_person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_staff_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_doujinshis_staff_people/1 or /_doujinshis_staff_people/1.json
  def destroy
    @_doujinshis_staff_person.destroy!

    respond_to do |format|
      format.html { redirect_to doujinshis_staff_people_url, notice: "Doujinshis staff person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__doujinshis_staff_person
      @_doujinshis_staff_person = DoujinshisStaffPerson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _doujinshis_staff_person_params
      params.require(:doujinshis_staff_person).permit(:name)
    end
end
