class FilmsAsiatiquesSocietePeopleController < ApplicationController
  before_action :set__films_asiatiques_societe_person, only: %i[ show edit update destroy ]

  # GET /_films_asiatiques_societe_people or /_films_asiatiques_societe_people.json
  def index
    @_films_asiatiques_societe_people = FilmsAsiatiquesSocietePerson.all
  end

  # GET /_films_asiatiques_societe_people/1 or /_films_asiatiques_societe_people/1.json
  def show
  end

  # GET /_films_asiatiques_societe_people/new
  def new
    @_films_asiatiques_societe_person = FilmsAsiatiquesSocietePerson.new
  end

  # GET /_films_asiatiques_societe_people/1/edit
  def edit
  end

  # POST /_films_asiatiques_societe_people or /_films_asiatiques_societe_people.json
  def create
    @_films_asiatiques_societe_person = FilmsAsiatiquesSocietePerson.new(_films_asiatiques_societe_person_params)

    respond_to do |format|
      if @_films_asiatiques_societe_person.save
        format.html { redirect_to films_asiatiques_societe_person_url(@_films_asiatiques_societe_person), notice: "Films asiatiques societe person was successfully created." }
        format.json { render :show, status: :created, location: @_films_asiatiques_societe_person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_societe_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_films_asiatiques_societe_people/1 or /_films_asiatiques_societe_people/1.json
  def update
    respond_to do |format|
      if @_films_asiatiques_societe_person.update(_films_asiatiques_societe_person_params)
        format.html { redirect_to films_asiatiques_societe_person_url(@_films_asiatiques_societe_person), notice: "Films asiatiques societe person was successfully updated." }
        format.json { render :show, status: :ok, location: @_films_asiatiques_societe_person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_societe_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_films_asiatiques_societe_people/1 or /_films_asiatiques_societe_people/1.json
  def destroy
    @_films_asiatiques_societe_person.destroy!

    respond_to do |format|
      format.html { redirect_to films_asiatiques_societe_people_url, notice: "Films asiatiques societe person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__films_asiatiques_societe_person
      @_films_asiatiques_societe_person = FilmsAsiatiquesSocietePerson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _films_asiatiques_societe_person_params
      params.require(:films_asiatiques_societe_person).permit(:name)
    end
end
