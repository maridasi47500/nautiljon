class DramasStaffPeopleController < ApplicationController
  before_action :set__dramas_staff_person, only: %i[ show edit update destroy ]

  # GET /_dramas_staff_people or /_dramas_staff_people.json
  def index
    @_dramas_staff_people = DramasStaffPerson.all
  end

  # GET /_dramas_staff_people/1 or /_dramas_staff_people/1.json
  def show
  end

  # GET /_dramas_staff_people/new
  def new
    @_dramas_staff_person = DramasStaffPerson.new
  end

  # GET /_dramas_staff_people/1/edit
  def edit
  end

  # POST /_dramas_staff_people or /_dramas_staff_people.json
  def create
    @_dramas_staff_person = DramasStaffPerson.new(_dramas_staff_person_params)

    respond_to do |format|
      if @_dramas_staff_person.save
        format.html { redirect_to _dramas_staff_person_url(@_dramas_staff_person), notice: "Dramas staff person was successfully created." }
        format.json { render :show, status: :created, location: @_dramas_staff_person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dramas_staff_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dramas_staff_people/1 or /_dramas_staff_people/1.json
  def update
    respond_to do |format|
      if @_dramas_staff_person.update(_dramas_staff_person_params)
        format.html { redirect_to _dramas_staff_person_url(@_dramas_staff_person), notice: "Dramas staff person was successfully updated." }
        format.json { render :show, status: :ok, location: @_dramas_staff_person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dramas_staff_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dramas_staff_people/1 or /_dramas_staff_people/1.json
  def destroy
    @_dramas_staff_person.destroy!

    respond_to do |format|
      format.html { redirect_to _dramas_staff_people_url, notice: "Dramas staff person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dramas_staff_person
      @_dramas_staff_person = DramasStaffPerson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dramas_staff_person_params
      params.require(:_dramas_staff_person).permit(:name)
    end
end
