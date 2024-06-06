class FilmsAsiatiquesEmissionTvsController < ApplicationController
  before_action :set__films_asiatiques_emission_tv, only: %i[ show edit update destroy ]

  # GET /_films_asiatiques_emission_tvs or /_films_asiatiques_emission_tvs.json
  def index
    @_films_asiatiques_emission_tvs = FilmsAsiatiquesEmissionTv.all
  end

  # GET /_films_asiatiques_emission_tvs/1 or /_films_asiatiques_emission_tvs/1.json
  def show
  end

  # GET /_films_asiatiques_emission_tvs/new
  def new
    @_films_asiatiques_emission_tv = FilmsAsiatiquesEmissionTv.new
  end

  # GET /_films_asiatiques_emission_tvs/1/edit
  def edit
  end

  # POST /_films_asiatiques_emission_tvs or /_films_asiatiques_emission_tvs.json
  def create
    @_films_asiatiques_emission_tv = FilmsAsiatiquesEmissionTv.new(_films_asiatiques_emission_tv_params)

    respond_to do |format|
      if @_films_asiatiques_emission_tv.save
        format.html { redirect_to films_asiatiques_emission_tv_url(@_films_asiatiques_emission_tv), notice: "Films asiatiques emission tv was successfully created." }
        format.json { render :show, status: :created, location: @_films_asiatiques_emission_tv }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_emission_tv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_films_asiatiques_emission_tvs/1 or /_films_asiatiques_emission_tvs/1.json
  def update
    respond_to do |format|
      if @_films_asiatiques_emission_tv.update(_films_asiatiques_emission_tv_params)
        format.html { redirect_to films_asiatiques_emission_tv_url(@_films_asiatiques_emission_tv), notice: "Films asiatiques emission tv was successfully updated." }
        format.json { render :show, status: :ok, location: @_films_asiatiques_emission_tv }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_emission_tv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_films_asiatiques_emission_tvs/1 or /_films_asiatiques_emission_tvs/1.json
  def destroy
    @_films_asiatiques_emission_tv.destroy!

    respond_to do |format|
      format.html { redirect_to films_asiatiques_emission_tvs_url, notice: "Films asiatiques emission tv was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__films_asiatiques_emission_tv
      @_films_asiatiques_emission_tv = FilmsAsiatiquesEmissionTv.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _films_asiatiques_emission_tv_params
      params.require(:films_asiatiques_emission_tv).permit(:name)
    end
end
