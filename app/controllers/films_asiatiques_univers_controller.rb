class FilmsAsiatiquesUniversController < ApplicationController
  before_action :set__films_asiatiques_univer, only: %i[ show edit update destroy ]

  # GET /_films_asiatiques_univers or /_films_asiatiques_univers.json
  def index
    @_films_asiatiques_univers = FilmsAsiatiquesUniver.all
  end

  # GET /_films_asiatiques_univers/1 or /_films_asiatiques_univers/1.json
  def show
  end

  # GET /_films_asiatiques_univers/new
  def new
    @_films_asiatiques_univer = FilmsAsiatiquesUniver.new
  end

  # GET /_films_asiatiques_univers/1/edit
  def edit
  end

  # POST /_films_asiatiques_univers or /_films_asiatiques_univers.json
  def create
    @_films_asiatiques_univer = FilmsAsiatiquesUniver.new(_films_asiatiques_univer_params)

    respond_to do |format|
      if @_films_asiatiques_univer.save
        format.html { redirect_to films_asiatiques_univer_url(@_films_asiatiques_univer), notice: "Films asiatiques univer was successfully created." }
        format.json { render :show, status: :created, location: @_films_asiatiques_univer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_univer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_films_asiatiques_univers/1 or /_films_asiatiques_univers/1.json
  def update
    respond_to do |format|
      if @_films_asiatiques_univer.update(_films_asiatiques_univer_params)
        format.html { redirect_to films_asiatiques_univer_url(@_films_asiatiques_univer), notice: "Films asiatiques univer was successfully updated." }
        format.json { render :show, status: :ok, location: @_films_asiatiques_univer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_univer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_films_asiatiques_univers/1 or /_films_asiatiques_univers/1.json
  def destroy
    @_films_asiatiques_univer.destroy!

    respond_to do |format|
      format.html { redirect_to films_asiatiques_univers_url, notice: "Films asiatiques univer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__films_asiatiques_univer
      @_films_asiatiques_univer = FilmsAsiatiquesUniver.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _films_asiatiques_univer_params
      params.require(:films_asiatiques_univer).permit(:name)
    end
end
