class MangasPeopleController < ApplicationController
  before_action :set__mangas_person, only: %i[ show edit update destroy ]

  # GET /_mangas_people or /_mangas_people.json
  def index
    @_mangas_people = MangasPerson.all
  end

  # GET /_mangas_people/1 or /_mangas_people/1.json
  def show
  end

  # GET /_mangas_people/new
  def new
    @_mangas_person = MangasPerson.new
  end

  # GET /_mangas_people/1/edit
  def edit
  end

  # POST /_mangas_people or /_mangas_people.json
  def create
    @_mangas_person = MangasPerson.new(_mangas_person_params)

    respond_to do |format|
      if @_mangas_person.save
        format.html { redirect_to mangas_person_url(@_mangas_person), notice: "Mangas person was successfully created." }
        format.json { render :show, status: :created, location: @_mangas_person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_mangas_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_mangas_people/1 or /_mangas_people/1.json
  def update
    respond_to do |format|
      if @_mangas_person.update(_mangas_person_params)
        format.html { redirect_to mangas_person_url(@_mangas_person), notice: "Mangas person was successfully updated." }
        format.json { render :show, status: :ok, location: @_mangas_person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_mangas_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_mangas_people/1 or /_mangas_people/1.json
  def destroy
    @_mangas_person.destroy!

    respond_to do |format|
      format.html { redirect_to mangas_people_url, notice: "Mangas person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__mangas_person
      @_mangas_person = MangasPerson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _mangas_person_params
      params.require(:mangas_person).permit(:name)
    end
end
