class LivresPeopleController < ApplicationController
  before_action :set__livres_person, only: %i[ show edit update destroy ]

  # GET /_livres_people or /_livres_people.json
  def index
    @_livres_people = LivresPerson.all
  end

  # GET /_livres_people/1 or /_livres_people/1.json
  def show
  end

  # GET /_livres_people/new
  def new
    @_livres_person = LivresPerson.new
  end

  # GET /_livres_people/1/edit
  def edit
  end

  # POST /_livres_people or /_livres_people.json
  def create
    @_livres_person = LivresPerson.new(_livres_person_params)

    respond_to do |format|
      if @_livres_person.save
        format.html { redirect_to livres_person_url(@_livres_person), notice: "Livres person was successfully created." }
        format.json { render :show, status: :created, location: @_livres_person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_livres_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_livres_people/1 or /_livres_people/1.json
  def update
    respond_to do |format|
      if @_livres_person.update(_livres_person_params)
        format.html { redirect_to livres_person_url(@_livres_person), notice: "Livres person was successfully updated." }
        format.json { render :show, status: :ok, location: @_livres_person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_livres_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_livres_people/1 or /_livres_people/1.json
  def destroy
    @_livres_person.destroy!

    respond_to do |format|
      format.html { redirect_to livres_people_url, notice: "Livres person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__livres_person
      @_livres_person = LivresPerson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _livres_person_params
      params.require(:livres_person).permit(:name)
    end
end
