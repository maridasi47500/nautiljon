class AnimesStaffPeopleController < ApplicationController
  before_action :set_animes_staff_person, only: %i[ show edit update destroy ]

  # GET /animes_staff_people or /animes_staff_people.json
  def index
    @animes_staff_people = AnimesStaffPerson.all
  end

  # GET /animes_staff_people/1 or /animes_staff_people/1.json
  def show
  end

  # GET /animes_staff_people/new
  def new
    @animes_staff_person = AnimesStaffPerson.new
  end

  # GET /animes_staff_people/1/edit
  def edit
  end

  # POST /animes_staff_people or /animes_staff_people.json
  def create
    @animes_staff_person = AnimesStaffPerson.new(animes_staff_person_params)

    respond_to do |format|
      if @animes_staff_person.save
        format.html { redirect_to animes_staff_person_url(@animes_staff_person), notice: "Animes staff person was successfully created." }
        format.json { render :show, status: :created, location: @animes_staff_person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @animes_staff_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animes_staff_people/1 or /animes_staff_people/1.json
  def update
    respond_to do |format|
      if @animes_staff_person.update(animes_staff_person_params)
        format.html { redirect_to animes_staff_person_url(@animes_staff_person), notice: "Animes staff person was successfully updated." }
        format.json { render :show, status: :ok, location: @animes_staff_person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @animes_staff_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animes_staff_people/1 or /animes_staff_people/1.json
  def destroy
    @animes_staff_person.destroy!

    respond_to do |format|
      format.html { redirect_to animes_staff_people_url, notice: "Animes staff person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animes_staff_person
      @animes_staff_person = AnimesStaffPerson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def animes_staff_person_params
      params.require(:animes_staff_person).permit(:name)
    end
end
