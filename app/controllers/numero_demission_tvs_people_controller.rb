class NumeroDemissionTvsPeopleController < ApplicationController
  before_action :set__numero_demission_tvs_person, only: %i[ show edit update destroy ]

  # GET /_numero_demission_tvs_people or /_numero_demission_tvs_people.json
  def index
    @_numero_demission_tvs_people = NumeroDemissionTvsPerson.all
  end

  # GET /_numero_demission_tvs_people/1 or /_numero_demission_tvs_people/1.json
  def show
  end

  # GET /_numero_demission_tvs_people/new
  def new
    @_numero_demission_tvs_person = NumeroDemissionTvsPerson.new
  end

  # GET /_numero_demission_tvs_people/1/edit
  def edit
  end

  # POST /_numero_demission_tvs_people or /_numero_demission_tvs_people.json
  def create
    @_numero_demission_tvs_person = NumeroDemissionTvsPerson.new(_numero_demission_tvs_person_params)

    respond_to do |format|
      if @_numero_demission_tvs_person.save
        format.html { redirect_to _numero_demission_tvs_person_url(@_numero_demission_tvs_person), notice: "Numero demission tvs person was successfully created." }
        format.json { render :show, status: :created, location: @_numero_demission_tvs_person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_numero_demission_tvs_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_numero_demission_tvs_people/1 or /_numero_demission_tvs_people/1.json
  def update
    respond_to do |format|
      if @_numero_demission_tvs_person.update(_numero_demission_tvs_person_params)
        format.html { redirect_to _numero_demission_tvs_person_url(@_numero_demission_tvs_person), notice: "Numero demission tvs person was successfully updated." }
        format.json { render :show, status: :ok, location: @_numero_demission_tvs_person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_numero_demission_tvs_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_numero_demission_tvs_people/1 or /_numero_demission_tvs_people/1.json
  def destroy
    @_numero_demission_tvs_person.destroy!

    respond_to do |format|
      format.html { redirect_to _numero_demission_tvs_people_url, notice: "Numero demission tvs person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__numero_demission_tvs_person
      @_numero_demission_tvs_person = NumeroDemissionTvsPerson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _numero_demission_tvs_person_params
      params.require(:_numero_demission_tvs_person).permit(:name)
    end
end
