class DoujinshisPeopleController < ApplicationController
  before_action :set__doujinshis_person, only: %i[ show edit update destroy ]

  # GET /_doujinshis_people or /_doujinshis_people.json
  def index
    @_doujinshis_people = DoujinshisPerson.all
  end

  # GET /_doujinshis_people/1 or /_doujinshis_people/1.json
  def show
  end

  # GET /_doujinshis_people/new
  def new
    @_doujinshis_person = DoujinshisPerson.new
  end

  # GET /_doujinshis_people/1/edit
  def edit
  end

  # POST /_doujinshis_people or /_doujinshis_people.json
  def create
    @_doujinshis_person = DoujinshisPerson.new(_doujinshis_person_params)

    respond_to do |format|
      if @_doujinshis_person.save
        format.html { redirect_to doujinshis_person_url(@_doujinshis_person), notice: "Doujinshis person was successfully created." }
        format.json { render :show, status: :created, location: @_doujinshis_person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_doujinshis_people/1 or /_doujinshis_people/1.json
  def update
    respond_to do |format|
      if @_doujinshis_person.update(_doujinshis_person_params)
        format.html { redirect_to doujinshis_person_url(@_doujinshis_person), notice: "Doujinshis person was successfully updated." }
        format.json { render :show, status: :ok, location: @_doujinshis_person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_doujinshis_people/1 or /_doujinshis_people/1.json
  def destroy
    @_doujinshis_person.destroy!

    respond_to do |format|
      format.html { redirect_to doujinshis_people_url, notice: "Doujinshis person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__doujinshis_person
      @_doujinshis_person = DoujinshisPerson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _doujinshis_person_params
      params.require(:doujinshis_person).permit(:name)
    end
end
