class ArtbooksSocietePeopleController < ApplicationController
  before_action :set_artbooks_societe_person, only: %i[ show edit update destroy ]

  # GET /artbooks_societe_people or /artbooks_societe_people.json
  def index
    @artbooks_societe_people = ArtbooksSocietePerson.all
  end

  # GET /artbooks_societe_people/1 or /artbooks_societe_people/1.json
  def show
  end

  # GET /artbooks_societe_people/new
  def new
    @artbooks_societe_person = ArtbooksSocietePerson.new
  end

  # GET /artbooks_societe_people/1/edit
  def edit
  end

  # POST /artbooks_societe_people or /artbooks_societe_people.json
  def create
    @artbooks_societe_person = ArtbooksSocietePerson.new(artbooks_societe_person_params)

    respond_to do |format|
      if @artbooks_societe_person.save
        format.html { redirect_to artbooks_societe_person_url(@artbooks_societe_person), notice: "Artbooks societe person was successfully created." }
        format.json { render :show, status: :created, location: @artbooks_societe_person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artbooks_societe_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artbooks_societe_people/1 or /artbooks_societe_people/1.json
  def update
    respond_to do |format|
      if @artbooks_societe_person.update(artbooks_societe_person_params)
        format.html { redirect_to artbooks_societe_person_url(@artbooks_societe_person), notice: "Artbooks societe person was successfully updated." }
        format.json { render :show, status: :ok, location: @artbooks_societe_person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artbooks_societe_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artbooks_societe_people/1 or /artbooks_societe_people/1.json
  def destroy
    @artbooks_societe_person.destroy!

    respond_to do |format|
      format.html { redirect_to artbooks_societe_people_url, notice: "Artbooks societe person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artbooks_societe_person
      @artbooks_societe_person = ArtbooksSocietePerson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artbooks_societe_person_params
      params.require(:artbooks_societe_person).permit(:name)
    end
end
