class DoujinsPeopleController < ApplicationController
  before_action :set__doujins_person, only: %i[ show edit update destroy ]

  # GET /_doujins_people or /_doujins_people.json
  def index
    @_doujins_people = DoujinsPerson.all
  end

  # GET /_doujins_people/1 or /_doujins_people/1.json
  def show
  end

  # GET /_doujins_people/new
  def new
    @_doujins_person = DoujinsPerson.new
  end

  # GET /_doujins_people/1/edit
  def edit
  end

  # POST /_doujins_people or /_doujins_people.json
  def create
    @_doujins_person = DoujinsPerson.new(_doujins_person_params)

    respond_to do |format|
      if @_doujins_person.save
        format.html { redirect_to _doujins_person_url(@_doujins_person), notice: "Doujins person was successfully created." }
        format.json { render :show, status: :created, location: @_doujins_person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_doujins_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_doujins_people/1 or /_doujins_people/1.json
  def update
    respond_to do |format|
      if @_doujins_person.update(_doujins_person_params)
        format.html { redirect_to _doujins_person_url(@_doujins_person), notice: "Doujins person was successfully updated." }
        format.json { render :show, status: :ok, location: @_doujins_person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_doujins_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_doujins_people/1 or /_doujins_people/1.json
  def destroy
    @_doujins_person.destroy!

    respond_to do |format|
      format.html { redirect_to _doujins_people_url, notice: "Doujins person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__doujins_person
      @_doujins_person = DoujinsPerson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _doujins_person_params
      params.require(:_doujins_person).permit(:name)
    end
end
