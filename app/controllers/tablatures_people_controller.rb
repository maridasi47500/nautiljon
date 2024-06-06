class TablaturesPeopleController < ApplicationController
  before_action :set__tablatures_person, only: %i[ show edit update destroy ]

  # GET /_tablatures_people or /_tablatures_people.json
  def index
    @_tablatures_people = TablaturesPerson.all
  end

  # GET /_tablatures_people/1 or /_tablatures_people/1.json
  def show
  end

  # GET /_tablatures_people/new
  def new
    @_tablatures_person = TablaturesPerson.new
  end

  # GET /_tablatures_people/1/edit
  def edit
  end

  # POST /_tablatures_people or /_tablatures_people.json
  def create
    @_tablatures_person = TablaturesPerson.new(_tablatures_person_params)

    respond_to do |format|
      if @_tablatures_person.save
        format.html { redirect_to tablatures_person_url(@_tablatures_person), notice: "Tablatures person was successfully created." }
        format.json { render :show, status: :created, location: @_tablatures_person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_tablatures_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_tablatures_people/1 or /_tablatures_people/1.json
  def update
    respond_to do |format|
      if @_tablatures_person.update(_tablatures_person_params)
        format.html { redirect_to tablatures_person_url(@_tablatures_person), notice: "Tablatures person was successfully updated." }
        format.json { render :show, status: :ok, location: @_tablatures_person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_tablatures_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_tablatures_people/1 or /_tablatures_people/1.json
  def destroy
    @_tablatures_person.destroy!

    respond_to do |format|
      format.html { redirect_to tablatures_people_url, notice: "Tablatures person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__tablatures_person
      @_tablatures_person = TablaturesPerson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _tablatures_person_params
      params.require(:tablatures_person).permit(:name)
    end
end
