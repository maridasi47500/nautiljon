class Dvd::BluRaysPeopleController < ApplicationController
  before_action :set__dvd___blu_rays_person, only: %i[ show edit update destroy ]

  # GET /_dvd_/_blu_rays_people or /_dvd_/_blu_rays_people.json
  def index
    @_dvd___blu_rays_people = Dvd::BluRaysPerson.all
  end

  # GET /_dvd_/_blu_rays_people/1 or /_dvd_/_blu_rays_people/1.json
  def show
  end

  # GET /_dvd_/_blu_rays_people/new
  def new
    @_dvd___blu_rays_person = Dvd::BluRaysPerson.new
  end

  # GET /_dvd_/_blu_rays_people/1/edit
  def edit
  end

  # POST /_dvd_/_blu_rays_people or /_dvd_/_blu_rays_people.json
  def create
    @_dvd___blu_rays_person = Dvd::BluRaysPerson.new(_dvd___blu_rays_person_params)

    respond_to do |format|
      if @_dvd___blu_rays_person.save
        format.html { redirect_to _dvd___blu_rays_person_url(@_dvd___blu_rays_person), notice: "Blu rays person was successfully created." }
        format.json { render :show, status: :created, location: @_dvd___blu_rays_person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dvd___blu_rays_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dvd_/_blu_rays_people/1 or /_dvd_/_blu_rays_people/1.json
  def update
    respond_to do |format|
      if @_dvd___blu_rays_person.update(_dvd___blu_rays_person_params)
        format.html { redirect_to _dvd___blu_rays_person_url(@_dvd___blu_rays_person), notice: "Blu rays person was successfully updated." }
        format.json { render :show, status: :ok, location: @_dvd___blu_rays_person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dvd___blu_rays_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dvd_/_blu_rays_people/1 or /_dvd_/_blu_rays_people/1.json
  def destroy
    @_dvd___blu_rays_person.destroy!

    respond_to do |format|
      format.html { redirect_to _dvd___blu_rays_people_url, notice: "Blu rays person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dvd___blu_rays_person
      @_dvd___blu_rays_person = Dvd::BluRaysPerson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dvd___blu_rays_person_params
      params.require(:_dvd___blu_rays_person).permit(:name)
    end
end
