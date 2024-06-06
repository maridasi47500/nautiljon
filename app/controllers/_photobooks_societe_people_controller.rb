class PhotobooksSocietePeopleController < ApplicationController
  before_action :set__photobooks_societe_person, only: %i[ show edit update destroy ]

  # GET /_photobooks_societe_people or /_photobooks_societe_people.json
  def index
    @_photobooks_societe_people = PhotobooksSocietePerson.all
  end

  # GET /_photobooks_societe_people/1 or /_photobooks_societe_people/1.json
  def show
  end

  # GET /_photobooks_societe_people/new
  def new
    @_photobooks_societe_person = PhotobooksSocietePerson.new
  end

  # GET /_photobooks_societe_people/1/edit
  def edit
  end

  # POST /_photobooks_societe_people or /_photobooks_societe_people.json
  def create
    @_photobooks_societe_person = PhotobooksSocietePerson.new(_photobooks_societe_person_params)

    respond_to do |format|
      if @_photobooks_societe_person.save
        format.html { redirect_to _photobooks_societe_person_url(@_photobooks_societe_person), notice: "Photobooks societe person was successfully created." }
        format.json { render :show, status: :created, location: @_photobooks_societe_person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_photobooks_societe_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_photobooks_societe_people/1 or /_photobooks_societe_people/1.json
  def update
    respond_to do |format|
      if @_photobooks_societe_person.update(_photobooks_societe_person_params)
        format.html { redirect_to _photobooks_societe_person_url(@_photobooks_societe_person), notice: "Photobooks societe person was successfully updated." }
        format.json { render :show, status: :ok, location: @_photobooks_societe_person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_photobooks_societe_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_photobooks_societe_people/1 or /_photobooks_societe_people/1.json
  def destroy
    @_photobooks_societe_person.destroy!

    respond_to do |format|
      format.html { redirect_to _photobooks_societe_people_url, notice: "Photobooks societe person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__photobooks_societe_person
      @_photobooks_societe_person = PhotobooksSocietePerson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _photobooks_societe_person_params
      params.require(:_photobooks_societe_person).permit(:name)
    end
end
