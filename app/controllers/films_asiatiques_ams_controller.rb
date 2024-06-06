class FilmsAsiatiquesAmsController < ApplicationController
  before_action :set__films_asiatiques_am, only: %i[ show edit update destroy ]

  # GET /_films_asiatiques_ams or /_films_asiatiques_ams.json
  def index
    @_films_asiatiques_ams = FilmsAsiatiquesAm.all
  end

  # GET /_films_asiatiques_ams/1 or /_films_asiatiques_ams/1.json
  def show
  end

  # GET /_films_asiatiques_ams/new
  def new
    @_films_asiatiques_am = FilmsAsiatiquesAm.new
  end

  # GET /_films_asiatiques_ams/1/edit
  def edit
  end

  # POST /_films_asiatiques_ams or /_films_asiatiques_ams.json
  def create
    @_films_asiatiques_am = FilmsAsiatiquesAm.new(_films_asiatiques_am_params)

    respond_to do |format|
      if @_films_asiatiques_am.save
        format.html { redirect_to _films_asiatiques_am_url(@_films_asiatiques_am), notice: "Films asiatiques am was successfully created." }
        format.json { render :show, status: :created, location: @_films_asiatiques_am }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_am.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_films_asiatiques_ams/1 or /_films_asiatiques_ams/1.json
  def update
    respond_to do |format|
      if @_films_asiatiques_am.update(_films_asiatiques_am_params)
        format.html { redirect_to _films_asiatiques_am_url(@_films_asiatiques_am), notice: "Films asiatiques am was successfully updated." }
        format.json { render :show, status: :ok, location: @_films_asiatiques_am }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_am.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_films_asiatiques_ams/1 or /_films_asiatiques_ams/1.json
  def destroy
    @_films_asiatiques_am.destroy!

    respond_to do |format|
      format.html { redirect_to _films_asiatiques_ams_url, notice: "Films asiatiques am was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__films_asiatiques_am
      @_films_asiatiques_am = FilmsAsiatiquesAm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _films_asiatiques_am_params
      params.require(:_films_asiatiques_am).permit(:name)
    end
end
