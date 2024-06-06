class DramasSocietePeopleController < ApplicationController
  before_action :set__dramas_societe_person, only: %i[ show edit update destroy ]

  # GET /_dramas_societe_people or /_dramas_societe_people.json
  def index
    @_dramas_societe_people = DramasSocietePerson.all
  end

  # GET /_dramas_societe_people/1 or /_dramas_societe_people/1.json
  def show
  end

  # GET /_dramas_societe_people/new
  def new
    @_dramas_societe_person = DramasSocietePerson.new
  end

  # GET /_dramas_societe_people/1/edit
  def edit
  end

  # POST /_dramas_societe_people or /_dramas_societe_people.json
  def create
    @_dramas_societe_person = DramasSocietePerson.new(_dramas_societe_person_params)

    respond_to do |format|
      if @_dramas_societe_person.save
        format.html { redirect_to _dramas_societe_person_url(@_dramas_societe_person), notice: "Dramas societe person was successfully created." }
        format.json { render :show, status: :created, location: @_dramas_societe_person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dramas_societe_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dramas_societe_people/1 or /_dramas_societe_people/1.json
  def update
    respond_to do |format|
      if @_dramas_societe_person.update(_dramas_societe_person_params)
        format.html { redirect_to _dramas_societe_person_url(@_dramas_societe_person), notice: "Dramas societe person was successfully updated." }
        format.json { render :show, status: :ok, location: @_dramas_societe_person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dramas_societe_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dramas_societe_people/1 or /_dramas_societe_people/1.json
  def destroy
    @_dramas_societe_person.destroy!

    respond_to do |format|
      format.html { redirect_to _dramas_societe_people_url, notice: "Dramas societe person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dramas_societe_person
      @_dramas_societe_person = DramasSocietePerson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dramas_societe_person_params
      params.require(:_dramas_societe_person).permit(:name)
    end
end
