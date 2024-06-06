class MangasSocietePeopleController < ApplicationController
  before_action :set__mangas_societe_person, only: %i[ show edit update destroy ]

  # GET /_mangas_societe_people or /_mangas_societe_people.json
  def index
    @_mangas_societe_people = MangasSocietePerson.all
  end

  # GET /_mangas_societe_people/1 or /_mangas_societe_people/1.json
  def show
  end

  # GET /_mangas_societe_people/new
  def new
    @_mangas_societe_person = MangasSocietePerson.new
  end

  # GET /_mangas_societe_people/1/edit
  def edit
  end

  # POST /_mangas_societe_people or /_mangas_societe_people.json
  def create
    @_mangas_societe_person = MangasSocietePerson.new(_mangas_societe_person_params)

    respond_to do |format|
      if @_mangas_societe_person.save
        format.html { redirect_to mangas_societe_person_url(@_mangas_societe_person), notice: "Mangas societe person was successfully created." }
        format.json { render :show, status: :created, location: @_mangas_societe_person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_mangas_societe_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_mangas_societe_people/1 or /_mangas_societe_people/1.json
  def update
    respond_to do |format|
      if @_mangas_societe_person.update(_mangas_societe_person_params)
        format.html { redirect_to mangas_societe_person_url(@_mangas_societe_person), notice: "Mangas societe person was successfully updated." }
        format.json { render :show, status: :ok, location: @_mangas_societe_person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_mangas_societe_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_mangas_societe_people/1 or /_mangas_societe_people/1.json
  def destroy
    @_mangas_societe_person.destroy!

    respond_to do |format|
      format.html { redirect_to mangas_societe_people_url, notice: "Mangas societe person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__mangas_societe_person
      @_mangas_societe_person = MangasSocietePerson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _mangas_societe_person_params
      params.require(:mangas_societe_person).permit(:name)
    end
end
