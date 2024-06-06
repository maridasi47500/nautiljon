class JeuxVideosStaffPeopleController < ApplicationController
  before_action :set__jeux_videos_staff_person, only: %i[ show edit update destroy ]

  # GET /_jeux_videos_staff_people or /_jeux_videos_staff_people.json
  def index
    @_jeux_videos_staff_people = JeuxVideosStaffPerson.all
  end

  # GET /_jeux_videos_staff_people/1 or /_jeux_videos_staff_people/1.json
  def show
  end

  # GET /_jeux_videos_staff_people/new
  def new
    @_jeux_videos_staff_person = JeuxVideosStaffPerson.new
  end

  # GET /_jeux_videos_staff_people/1/edit
  def edit
  end

  # POST /_jeux_videos_staff_people or /_jeux_videos_staff_people.json
  def create
    @_jeux_videos_staff_person = JeuxVideosStaffPerson.new(_jeux_videos_staff_person_params)

    respond_to do |format|
      if @_jeux_videos_staff_person.save
        format.html { redirect_to jeux_videos_staff_person_url(@_jeux_videos_staff_person), notice: "Jeux videos staff person was successfully created." }
        format.json { render :show, status: :created, location: @_jeux_videos_staff_person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_staff_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_jeux_videos_staff_people/1 or /_jeux_videos_staff_people/1.json
  def update
    respond_to do |format|
      if @_jeux_videos_staff_person.update(_jeux_videos_staff_person_params)
        format.html { redirect_to jeux_videos_staff_person_url(@_jeux_videos_staff_person), notice: "Jeux videos staff person was successfully updated." }
        format.json { render :show, status: :ok, location: @_jeux_videos_staff_person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_staff_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_jeux_videos_staff_people/1 or /_jeux_videos_staff_people/1.json
  def destroy
    @_jeux_videos_staff_person.destroy!

    respond_to do |format|
      format.html { redirect_to jeux_videos_staff_people_url, notice: "Jeux videos staff person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__jeux_videos_staff_person
      @_jeux_videos_staff_person = JeuxVideosStaffPerson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _jeux_videos_staff_person_params
      params.require(:jeux_videos_staff_person).permit(:name)
    end
end
