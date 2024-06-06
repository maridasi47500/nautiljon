class PersonnalitesPeopleController < ApplicationController
  before_action :set__personnalites_person, only: %i[ show edit update destroy ]

  # GET /_personnalites_people or /_personnalites_people.json
  def index
    @_personnalites_people = PersonnalitesPerson.all
  end

  # GET /_personnalites_people/1 or /_personnalites_people/1.json
  def show
  end

  # GET /_personnalites_people/new
  def new
    @_personnalites_person = PersonnalitesPerson.new
  end

  # GET /_personnalites_people/1/edit
  def edit
  end

  # POST /_personnalites_people or /_personnalites_people.json
  def create
    @_personnalites_person = PersonnalitesPerson.new(_personnalites_person_params)

    respond_to do |format|
      if @_personnalites_person.save
        format.html { redirect_to personnalites_person_url(@_personnalites_person), notice: "Personnalites person was successfully created." }
        format.json { render :show, status: :created, location: @_personnalites_person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_personnalites_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_personnalites_people/1 or /_personnalites_people/1.json
  def update
    respond_to do |format|
      if @_personnalites_person.update(_personnalites_person_params)
        format.html { redirect_to personnalites_person_url(@_personnalites_person), notice: "Personnalites person was successfully updated." }
        format.json { render :show, status: :ok, location: @_personnalites_person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_personnalites_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_personnalites_people/1 or /_personnalites_people/1.json
  def destroy
    @_personnalites_person.destroy!

    respond_to do |format|
      format.html { redirect_to personnalites_people_url, notice: "Personnalites person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__personnalites_person
      @_personnalites_person = PersonnalitesPerson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _personnalites_person_params
      params.require(:personnalites_person).permit(:name)
    end
end
