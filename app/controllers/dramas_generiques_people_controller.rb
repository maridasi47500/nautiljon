class DramasGeneriquesPeopleController < ApplicationController
  before_action :set__dramas_generiques_person, only: %i[ show edit update destroy ]

  # GET /_dramas_generiques_people or /_dramas_generiques_people.json
  def index
    @_dramas_generiques_people = DramasGeneriquesPerson.all
  end

  # GET /_dramas_generiques_people/1 or /_dramas_generiques_people/1.json
  def show
  end

  # GET /_dramas_generiques_people/new
  def new
    @_dramas_generiques_person = DramasGeneriquesPerson.new
  end

  # GET /_dramas_generiques_people/1/edit
  def edit
  end

  # POST /_dramas_generiques_people or /_dramas_generiques_people.json
  def create
    @_dramas_generiques_person = DramasGeneriquesPerson.new(_dramas_generiques_person_params)

    respond_to do |format|
      if @_dramas_generiques_person.save
        format.html { redirect_to dramas_generiques_person_url(@_dramas_generiques_person), notice: "Dramas generiques person was successfully created." }
        format.json { render :show, status: :created, location: @_dramas_generiques_person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dramas_generiques_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dramas_generiques_people/1 or /_dramas_generiques_people/1.json
  def update
    respond_to do |format|
      if @_dramas_generiques_person.update(_dramas_generiques_person_params)
        format.html { redirect_to dramas_generiques_person_url(@_dramas_generiques_person), notice: "Dramas generiques person was successfully updated." }
        format.json { render :show, status: :ok, location: @_dramas_generiques_person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dramas_generiques_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dramas_generiques_people/1 or /_dramas_generiques_people/1.json
  def destroy
    @_dramas_generiques_person.destroy!

    respond_to do |format|
      format.html { redirect_to dramas_generiques_people_url, notice: "Dramas generiques person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dramas_generiques_person
      @_dramas_generiques_person = DramasGeneriquesPerson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dramas_generiques_person_params
      params.require(:dramas_generiques_person).permit(:name)
    end
end
