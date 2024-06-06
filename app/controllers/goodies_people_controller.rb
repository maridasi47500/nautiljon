class GoodiesPeopleController < ApplicationController
  before_action :set__goodies_person, only: %i[ show edit update destroy ]

  # GET /_goodies_people or /_goodies_people.json
  def index
    @_goodies_people = GoodiesPerson.all
  end

  # GET /_goodies_people/1 or /_goodies_people/1.json
  def show
  end

  # GET /_goodies_people/new
  def new
    @_goodies_person = GoodiesPerson.new
  end

  # GET /_goodies_people/1/edit
  def edit
  end

  # POST /_goodies_people or /_goodies_people.json
  def create
    @_goodies_person = GoodiesPerson.new(_goodies_person_params)

    respond_to do |format|
      if @_goodies_person.save
        format.html { redirect_to goodies_person_url(@_goodies_person), notice: "Goodies person was successfully created." }
        format.json { render :show, status: :created, location: @_goodies_person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_goodies_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_goodies_people/1 or /_goodies_people/1.json
  def update
    respond_to do |format|
      if @_goodies_person.update(_goodies_person_params)
        format.html { redirect_to goodies_person_url(@_goodies_person), notice: "Goodies person was successfully updated." }
        format.json { render :show, status: :ok, location: @_goodies_person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_goodies_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_goodies_people/1 or /_goodies_people/1.json
  def destroy
    @_goodies_person.destroy!

    respond_to do |format|
      format.html { redirect_to goodies_people_url, notice: "Goodies person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__goodies_person
      @_goodies_person = GoodiesPerson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _goodies_person_params
      params.require(:goodies_person).permit(:name)
    end
end
