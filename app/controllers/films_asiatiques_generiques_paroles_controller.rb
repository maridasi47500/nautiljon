class FilmsAsiatiquesGeneriquesParolesController < ApplicationController
  before_action :set__films_asiatiques_generiques_parole, only: %i[ show edit update destroy ]

  # GET /_films_asiatiques_generiques_paroles or /_films_asiatiques_generiques_paroles.json
  def index
    @_films_asiatiques_generiques_paroles = FilmsAsiatiquesGeneriquesParole.all
  end

  # GET /_films_asiatiques_generiques_paroles/1 or /_films_asiatiques_generiques_paroles/1.json
  def show
  end

  # GET /_films_asiatiques_generiques_paroles/new
  def new
    @_films_asiatiques_generiques_parole = FilmsAsiatiquesGeneriquesParole.new
  end

  # GET /_films_asiatiques_generiques_paroles/1/edit
  def edit
  end

  # POST /_films_asiatiques_generiques_paroles or /_films_asiatiques_generiques_paroles.json
  def create
    @_films_asiatiques_generiques_parole = FilmsAsiatiquesGeneriquesParole.new(_films_asiatiques_generiques_parole_params)

    respond_to do |format|
      if @_films_asiatiques_generiques_parole.save
        format.html { redirect_to _films_asiatiques_generiques_parole_url(@_films_asiatiques_generiques_parole), notice: "Films asiatiques generiques parole was successfully created." }
        format.json { render :show, status: :created, location: @_films_asiatiques_generiques_parole }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_generiques_parole.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_films_asiatiques_generiques_paroles/1 or /_films_asiatiques_generiques_paroles/1.json
  def update
    respond_to do |format|
      if @_films_asiatiques_generiques_parole.update(_films_asiatiques_generiques_parole_params)
        format.html { redirect_to _films_asiatiques_generiques_parole_url(@_films_asiatiques_generiques_parole), notice: "Films asiatiques generiques parole was successfully updated." }
        format.json { render :show, status: :ok, location: @_films_asiatiques_generiques_parole }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_generiques_parole.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_films_asiatiques_generiques_paroles/1 or /_films_asiatiques_generiques_paroles/1.json
  def destroy
    @_films_asiatiques_generiques_parole.destroy!

    respond_to do |format|
      format.html { redirect_to _films_asiatiques_generiques_paroles_url, notice: "Films asiatiques generiques parole was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__films_asiatiques_generiques_parole
      @_films_asiatiques_generiques_parole = FilmsAsiatiquesGeneriquesParole.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _films_asiatiques_generiques_parole_params
      params.require(:_films_asiatiques_generiques_parole).permit(:name)
    end
end
