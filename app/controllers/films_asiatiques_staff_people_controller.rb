class FilmsAsiatiquesStaffPeopleController < ApplicationController
  before_action :set__films_asiatiques_staff_person, only: %i[ show edit update destroy ]

  # GET /_films_asiatiques_staff_people or /_films_asiatiques_staff_people.json
  def index
    @_films_asiatiques_staff_people = FilmsAsiatiquesStaffPerson.all
  end

  # GET /_films_asiatiques_staff_people/1 or /_films_asiatiques_staff_people/1.json
  def show
  end

  # GET /_films_asiatiques_staff_people/new
  def new
    @_films_asiatiques_staff_person = FilmsAsiatiquesStaffPerson.new
  end

  # GET /_films_asiatiques_staff_people/1/edit
  def edit
  end

  # POST /_films_asiatiques_staff_people or /_films_asiatiques_staff_people.json
  def create
    @_films_asiatiques_staff_person = FilmsAsiatiquesStaffPerson.new(_films_asiatiques_staff_person_params)

    respond_to do |format|
      if @_films_asiatiques_staff_person.save
        format.html { redirect_to _films_asiatiques_staff_person_url(@_films_asiatiques_staff_person), notice: "Films asiatiques staff person was successfully created." }
        format.json { render :show, status: :created, location: @_films_asiatiques_staff_person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_staff_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_films_asiatiques_staff_people/1 or /_films_asiatiques_staff_people/1.json
  def update
    respond_to do |format|
      if @_films_asiatiques_staff_person.update(_films_asiatiques_staff_person_params)
        format.html { redirect_to _films_asiatiques_staff_person_url(@_films_asiatiques_staff_person), notice: "Films asiatiques staff person was successfully updated." }
        format.json { render :show, status: :ok, location: @_films_asiatiques_staff_person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_staff_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_films_asiatiques_staff_people/1 or /_films_asiatiques_staff_people/1.json
  def destroy
    @_films_asiatiques_staff_person.destroy!

    respond_to do |format|
      format.html { redirect_to _films_asiatiques_staff_people_url, notice: "Films asiatiques staff person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__films_asiatiques_staff_person
      @_films_asiatiques_staff_person = FilmsAsiatiquesStaffPerson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _films_asiatiques_staff_person_params
      params.require(:_films_asiatiques_staff_person).permit(:name)
    end
end
