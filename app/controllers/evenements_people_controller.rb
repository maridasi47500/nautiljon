class EvenementsPeopleController < ApplicationController
  before_action :set_evenements_person, only: %i[ show edit update destroy ]

  # GET /evenements_people or /evenements_people.json
  def index
    @evenements_people = EvenementsPerson.all
  end

  # GET /evenements_people/1 or /evenements_people/1.json
  def show
  end

  # GET /evenements_people/new
  def new
    @evenements_person = EvenementsPerson.new
  end

  # GET /evenements_people/1/edit
  def edit
  end

  # POST /evenements_people or /evenements_people.json
  def create
    @evenements_person = EvenementsPerson.new(evenements_person_params)

    respond_to do |format|
      if @evenements_person.save
        format.html { redirect_to evenements_person_url(@evenements_person), notice: "Evenements person was successfully created." }
        format.json { render :show, status: :created, location: @evenements_person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @evenements_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /evenements_people/1 or /evenements_people/1.json
  def update
    respond_to do |format|
      if @evenements_person.update(evenements_person_params)
        format.html { redirect_to evenements_person_url(@evenements_person), notice: "Evenements person was successfully updated." }
        format.json { render :show, status: :ok, location: @evenements_person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @evenements_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evenements_people/1 or /evenements_people/1.json
  def destroy
    @evenements_person.destroy!

    respond_to do |format|
      format.html { redirect_to evenements_people_url, notice: "Evenements person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evenements_person
      @evenements_person = EvenementsPerson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def evenements_person_params
      params.require(:evenements_person).permit(:name)
    end
end
