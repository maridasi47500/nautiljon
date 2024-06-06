class OstsPeopleController < ApplicationController
  before_action :set_osts_person, only: %i[ show edit update destroy ]

  # GET /osts_people or /osts_people.json
  def index
    @osts_people = OstsPerson.all
  end

  # GET /osts_people/1 or /osts_people/1.json
  def show
  end

  # GET /osts_people/new
  def new
    @osts_person = OstsPerson.new
  end

  # GET /osts_people/1/edit
  def edit
  end

  # POST /osts_people or /osts_people.json
  def create
    @osts_person = OstsPerson.new(osts_person_params)

    respond_to do |format|
      if @osts_person.save
        format.html { redirect_to osts_person_url(@osts_person), notice: "Osts person was successfully created." }
        format.json { render :show, status: :created, location: @osts_person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @osts_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /osts_people/1 or /osts_people/1.json
  def update
    respond_to do |format|
      if @osts_person.update(osts_person_params)
        format.html { redirect_to osts_person_url(@osts_person), notice: "Osts person was successfully updated." }
        format.json { render :show, status: :ok, location: @osts_person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @osts_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /osts_people/1 or /osts_people/1.json
  def destroy
    @osts_person.destroy!

    respond_to do |format|
      format.html { redirect_to osts_people_url, notice: "Osts person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_osts_person
      @osts_person = OstsPerson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def osts_person_params
      params.require(:osts_person).permit(:name)
    end
end
