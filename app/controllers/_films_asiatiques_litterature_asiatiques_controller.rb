class FilmsAsiatiquesLitteratureAsiatiquesController < ApplicationController
  before_action :set__films_asiatiques_litterature_asiatique, only: %i[ show edit update destroy ]

  # GET /_films_asiatiques_litterature_asiatiques or /_films_asiatiques_litterature_asiatiques.json
  def index
    @_films_asiatiques_litterature_asiatiques = FilmsAsiatiquesLitteratureAsiatique.all
  end

  # GET /_films_asiatiques_litterature_asiatiques/1 or /_films_asiatiques_litterature_asiatiques/1.json
  def show
  end

  # GET /_films_asiatiques_litterature_asiatiques/new
  def new
    @_films_asiatiques_litterature_asiatique = FilmsAsiatiquesLitteratureAsiatique.new
  end

  # GET /_films_asiatiques_litterature_asiatiques/1/edit
  def edit
  end

  # POST /_films_asiatiques_litterature_asiatiques or /_films_asiatiques_litterature_asiatiques.json
  def create
    @_films_asiatiques_litterature_asiatique = FilmsAsiatiquesLitteratureAsiatique.new(_films_asiatiques_litterature_asiatique_params)

    respond_to do |format|
      if @_films_asiatiques_litterature_asiatique.save
        format.html { redirect_to _films_asiatiques_litterature_asiatique_url(@_films_asiatiques_litterature_asiatique), notice: "Films asiatiques litterature asiatique was successfully created." }
        format.json { render :show, status: :created, location: @_films_asiatiques_litterature_asiatique }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_litterature_asiatique.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_films_asiatiques_litterature_asiatiques/1 or /_films_asiatiques_litterature_asiatiques/1.json
  def update
    respond_to do |format|
      if @_films_asiatiques_litterature_asiatique.update(_films_asiatiques_litterature_asiatique_params)
        format.html { redirect_to _films_asiatiques_litterature_asiatique_url(@_films_asiatiques_litterature_asiatique), notice: "Films asiatiques litterature asiatique was successfully updated." }
        format.json { render :show, status: :ok, location: @_films_asiatiques_litterature_asiatique }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_litterature_asiatique.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_films_asiatiques_litterature_asiatiques/1 or /_films_asiatiques_litterature_asiatiques/1.json
  def destroy
    @_films_asiatiques_litterature_asiatique.destroy!

    respond_to do |format|
      format.html { redirect_to _films_asiatiques_litterature_asiatiques_url, notice: "Films asiatiques litterature asiatique was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__films_asiatiques_litterature_asiatique
      @_films_asiatiques_litterature_asiatique = FilmsAsiatiquesLitteratureAsiatique.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _films_asiatiques_litterature_asiatique_params
      params.require(:_films_asiatiques_litterature_asiatique).permit(:name)
    end
end
