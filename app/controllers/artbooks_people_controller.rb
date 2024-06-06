class ArtbooksPeopleController < ApplicationController
  before_action :set_artbooks_person, only: %i[ show edit update destroy ]

  # GET /artbooks_people or /artbooks_people.json
  def index
    @artbooks_people = ArtbooksPerson.all
  end

  # GET /artbooks_people/1 or /artbooks_people/1.json
  def show
  end

  # GET /artbooks_people/new
  def new
    @artbooks_person = ArtbooksPerson.new
  end

  # GET /artbooks_people/1/edit
  def edit
  end

  # POST /artbooks_people or /artbooks_people.json
  def create
    @artbooks_person = ArtbooksPerson.new(artbooks_person_params)

    respond_to do |format|
      if @artbooks_person.save
        format.html { redirect_to artbooks_person_url(@artbooks_person), notice: "Artbooks person was successfully created." }
        format.json { render :show, status: :created, location: @artbooks_person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artbooks_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artbooks_people/1 or /artbooks_people/1.json
  def update
    respond_to do |format|
      if @artbooks_person.update(artbooks_person_params)
        format.html { redirect_to artbooks_person_url(@artbooks_person), notice: "Artbooks person was successfully updated." }
        format.json { render :show, status: :ok, location: @artbooks_person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artbooks_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artbooks_people/1 or /artbooks_people/1.json
  def destroy
    @artbooks_person.destroy!

    respond_to do |format|
      format.html { redirect_to artbooks_people_url, notice: "Artbooks person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artbooks_person
      @artbooks_person = ArtbooksPerson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artbooks_person_params
      params.require(:artbooks_person).permit(:name)
    end
end
