class MangasStaffPeopleController < ApplicationController
  before_action :set__mangas_staff_person, only: %i[ show edit update destroy ]

  # GET /_mangas_staff_people or /_mangas_staff_people.json
  def index
    @_mangas_staff_people = MangasStaffPerson.all
  end

  # GET /_mangas_staff_people/1 or /_mangas_staff_people/1.json
  def show
  end

  # GET /_mangas_staff_people/new
  def new
    @_mangas_staff_person = MangasStaffPerson.new
  end

  # GET /_mangas_staff_people/1/edit
  def edit
  end

  # POST /_mangas_staff_people or /_mangas_staff_people.json
  def create
    @_mangas_staff_person = MangasStaffPerson.new(_mangas_staff_person_params)

    respond_to do |format|
      if @_mangas_staff_person.save
        format.html { redirect_to _mangas_staff_person_url(@_mangas_staff_person), notice: "Mangas staff person was successfully created." }
        format.json { render :show, status: :created, location: @_mangas_staff_person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_mangas_staff_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_mangas_staff_people/1 or /_mangas_staff_people/1.json
  def update
    respond_to do |format|
      if @_mangas_staff_person.update(_mangas_staff_person_params)
        format.html { redirect_to _mangas_staff_person_url(@_mangas_staff_person), notice: "Mangas staff person was successfully updated." }
        format.json { render :show, status: :ok, location: @_mangas_staff_person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_mangas_staff_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_mangas_staff_people/1 or /_mangas_staff_people/1.json
  def destroy
    @_mangas_staff_person.destroy!

    respond_to do |format|
      format.html { redirect_to _mangas_staff_people_url, notice: "Mangas staff person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__mangas_staff_person
      @_mangas_staff_person = MangasStaffPerson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _mangas_staff_person_params
      params.require(:_mangas_staff_person).permit(:name)
    end
end
