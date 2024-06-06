class AnimesSocietePeopleController < ApplicationController
  before_action :set_animes_societe_person, only: %i[ show edit update destroy ]

  # GET /animes_societe_people or /animes_societe_people.json
  def index
    @animes_societe_people = AnimesSocietePerson.all
  end

  # GET /animes_societe_people/1 or /animes_societe_people/1.json
  def show
  end

  # GET /animes_societe_people/new
  def new
    @animes_societe_person = AnimesSocietePerson.new
  end

  # GET /animes_societe_people/1/edit
  def edit
  end

  # POST /animes_societe_people or /animes_societe_people.json
  def create
    @animes_societe_person = AnimesSocietePerson.new(animes_societe_person_params)

    respond_to do |format|
      if @animes_societe_person.save
        format.html { redirect_to animes_societe_person_url(@animes_societe_person), notice: "Animes societe person was successfully created." }
        format.json { render :show, status: :created, location: @animes_societe_person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @animes_societe_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animes_societe_people/1 or /animes_societe_people/1.json
  def update
    respond_to do |format|
      if @animes_societe_person.update(animes_societe_person_params)
        format.html { redirect_to animes_societe_person_url(@animes_societe_person), notice: "Animes societe person was successfully updated." }
        format.json { render :show, status: :ok, location: @animes_societe_person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @animes_societe_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animes_societe_people/1 or /animes_societe_people/1.json
  def destroy
    @animes_societe_person.destroy!

    respond_to do |format|
      format.html { redirect_to animes_societe_people_url, notice: "Animes societe person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animes_societe_person
      @animes_societe_person = AnimesSocietePerson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def animes_societe_person_params
      params.require(:animes_societe_person).permit(:name)
    end
end
