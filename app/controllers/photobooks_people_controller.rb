class PhotobooksPeopleController < ApplicationController
  before_action :set__photobooks_person, only: %i[ show edit update destroy ]

  # GET /_photobooks_people or /_photobooks_people.json
  def index
    @_photobooks_people = PhotobooksPerson.all
  end

  # GET /_photobooks_people/1 or /_photobooks_people/1.json
  def show
  end

  # GET /_photobooks_people/new
  def new
    @_photobooks_person = PhotobooksPerson.new
  end

  # GET /_photobooks_people/1/edit
  def edit
  end

  # POST /_photobooks_people or /_photobooks_people.json
  def create
    @_photobooks_person = PhotobooksPerson.new(_photobooks_person_params)

    respond_to do |format|
      if @_photobooks_person.save
        format.html { redirect_to photobooks_person_url(@_photobooks_person), notice: "Photobooks person was successfully created." }
        format.json { render :show, status: :created, location: @_photobooks_person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_photobooks_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_photobooks_people/1 or /_photobooks_people/1.json
  def update
    respond_to do |format|
      if @_photobooks_person.update(_photobooks_person_params)
        format.html { redirect_to photobooks_person_url(@_photobooks_person), notice: "Photobooks person was successfully updated." }
        format.json { render :show, status: :ok, location: @_photobooks_person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_photobooks_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_photobooks_people/1 or /_photobooks_people/1.json
  def destroy
    @_photobooks_person.destroy!

    respond_to do |format|
      format.html { redirect_to photobooks_people_url, notice: "Photobooks person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__photobooks_person
      @_photobooks_person = PhotobooksPerson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _photobooks_person_params
      params.require(:photobooks_person).permit(:name)
    end
end
