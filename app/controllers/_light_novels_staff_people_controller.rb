class LightNovelsStaffPeopleController < ApplicationController
  before_action :set__light_novels_staff_person, only: %i[ show edit update destroy ]

  # GET /_light_novels_staff_people or /_light_novels_staff_people.json
  def index
    @_light_novels_staff_people = LightNovelsStaffPerson.all
  end

  # GET /_light_novels_staff_people/1 or /_light_novels_staff_people/1.json
  def show
  end

  # GET /_light_novels_staff_people/new
  def new
    @_light_novels_staff_person = LightNovelsStaffPerson.new
  end

  # GET /_light_novels_staff_people/1/edit
  def edit
  end

  # POST /_light_novels_staff_people or /_light_novels_staff_people.json
  def create
    @_light_novels_staff_person = LightNovelsStaffPerson.new(_light_novels_staff_person_params)

    respond_to do |format|
      if @_light_novels_staff_person.save
        format.html { redirect_to _light_novels_staff_person_url(@_light_novels_staff_person), notice: "Light novels staff person was successfully created." }
        format.json { render :show, status: :created, location: @_light_novels_staff_person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_light_novels_staff_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_light_novels_staff_people/1 or /_light_novels_staff_people/1.json
  def update
    respond_to do |format|
      if @_light_novels_staff_person.update(_light_novels_staff_person_params)
        format.html { redirect_to _light_novels_staff_person_url(@_light_novels_staff_person), notice: "Light novels staff person was successfully updated." }
        format.json { render :show, status: :ok, location: @_light_novels_staff_person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_light_novels_staff_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_light_novels_staff_people/1 or /_light_novels_staff_people/1.json
  def destroy
    @_light_novels_staff_person.destroy!

    respond_to do |format|
      format.html { redirect_to _light_novels_staff_people_url, notice: "Light novels staff person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__light_novels_staff_person
      @_light_novels_staff_person = LightNovelsStaffPerson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _light_novels_staff_person_params
      params.require(:_light_novels_staff_person).permit(:name)
    end
end
