class CdsPeopleController < ApplicationController
  before_action :set__cds_person, only: %i[ show edit update destroy ]

  # GET /_cds_people or /_cds_people.json
  def index
    @_cds_people = CdsPerson.all
  end

  # GET /_cds_people/1 or /_cds_people/1.json
  def show
  end

  # GET /_cds_people/new
  def new
    @_cds_person = CdsPerson.new
  end

  # GET /_cds_people/1/edit
  def edit
  end

  # POST /_cds_people or /_cds_people.json
  def create
    @_cds_person = CdsPerson.new(_cds_person_params)

    respond_to do |format|
      if @_cds_person.save
        format.html { redirect_to cds_person_url(@_cds_person), notice: "Cds person was successfully created." }
        format.json { render :show, status: :created, location: @_cds_person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_cds_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_cds_people/1 or /_cds_people/1.json
  def update
    respond_to do |format|
      if @_cds_person.update(_cds_person_params)
        format.html { redirect_to cds_person_url(@_cds_person), notice: "Cds person was successfully updated." }
        format.json { render :show, status: :ok, location: @_cds_person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_cds_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_cds_people/1 or /_cds_people/1.json
  def destroy
    @_cds_person.destroy!

    respond_to do |format|
      format.html { redirect_to cds_people_url, notice: "Cds person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__cds_person
      @_cds_person = CdsPerson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _cds_person_params
      params.require(:cds_person).permit(:name)
    end
end
