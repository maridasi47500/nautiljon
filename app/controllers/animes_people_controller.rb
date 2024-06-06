class AnimesPeopleController < ApplicationController
  before_action :set_animes_person, only: %i[ show edit update destroy ]

  # GET /animes_people or /animes_people.json
  def index
    @animes_people = AnimesPerson.all
  end

  # GET /animes_people/1 or /animes_people/1.json
  def show
  end

  # GET /animes_people/new
  def new
    @animes_person = AnimesPerson.new
  end

  # GET /animes_people/1/edit
  def edit
  end

  # POST /animes_people or /animes_people.json
  def create
    @animes_person = AnimesPerson.new(animes_person_params)

    respond_to do |format|
      if @animes_person.save
        format.html { redirect_to animes_person_url(@animes_person), notice: "Animes person was successfully created." }
        format.json { render :show, status: :created, location: @animes_person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @animes_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animes_people/1 or /animes_people/1.json
  def update
    respond_to do |format|
      if @animes_person.update(animes_person_params)
        format.html { redirect_to animes_person_url(@animes_person), notice: "Animes person was successfully updated." }
        format.json { render :show, status: :ok, location: @animes_person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @animes_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animes_people/1 or /animes_people/1.json
  def destroy
    @animes_person.destroy!

    respond_to do |format|
      format.html { redirect_to animes_people_url, notice: "Animes person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animes_person
      @animes_person = AnimesPerson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def animes_person_params
      params.require(:animes_person).permit(:name)
    end
end
