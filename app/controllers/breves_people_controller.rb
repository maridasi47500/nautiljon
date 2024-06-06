class BrevesPeopleController < ApplicationController
  before_action :set__breves_person, only: %i[ show edit update destroy ]

  # GET /_breves_people or /_breves_people.json
  def index
    @_breves_people = BrevesPerson.all
  end

  # GET /_breves_people/1 or /_breves_people/1.json
  def show
  end

  # GET /_breves_people/new
  def new
    @_breves_person = BrevesPerson.new
  end

  # GET /_breves_people/1/edit
  def edit
  end

  # POST /_breves_people or /_breves_people.json
  def create
    @_breves_person = BrevesPerson.new(_breves_person_params)

    respond_to do |format|
      if @_breves_person.save
        format.html { redirect_to _breves_person_url(@_breves_person), notice: "Breves person was successfully created." }
        format.json { render :show, status: :created, location: @_breves_person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_breves_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_breves_people/1 or /_breves_people/1.json
  def update
    respond_to do |format|
      if @_breves_person.update(_breves_person_params)
        format.html { redirect_to _breves_person_url(@_breves_person), notice: "Breves person was successfully updated." }
        format.json { render :show, status: :ok, location: @_breves_person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_breves_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_breves_people/1 or /_breves_people/1.json
  def destroy
    @_breves_person.destroy!

    respond_to do |format|
      format.html { redirect_to _breves_people_url, notice: "Breves person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__breves_person
      @_breves_person = BrevesPerson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _breves_person_params
      params.require(:_breves_person).permit(:name)
    end
end
