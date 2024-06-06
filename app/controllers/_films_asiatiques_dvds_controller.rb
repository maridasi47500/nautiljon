class FilmsAsiatiquesDvdsController < ApplicationController
  before_action :set__films_asiatiques_dvd, only: %i[ show edit update destroy ]

  # GET /_films_asiatiques_dvds or /_films_asiatiques_dvds.json
  def index
    @_films_asiatiques_dvds = FilmsAsiatiquesDvd.all
  end

  # GET /_films_asiatiques_dvds/1 or /_films_asiatiques_dvds/1.json
  def show
  end

  # GET /_films_asiatiques_dvds/new
  def new
    @_films_asiatiques_dvd = FilmsAsiatiquesDvd.new
  end

  # GET /_films_asiatiques_dvds/1/edit
  def edit
  end

  # POST /_films_asiatiques_dvds or /_films_asiatiques_dvds.json
  def create
    @_films_asiatiques_dvd = FilmsAsiatiquesDvd.new(_films_asiatiques_dvd_params)

    respond_to do |format|
      if @_films_asiatiques_dvd.save
        format.html { redirect_to _films_asiatiques_dvd_url(@_films_asiatiques_dvd), notice: "Films asiatiques dvd was successfully created." }
        format.json { render :show, status: :created, location: @_films_asiatiques_dvd }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_dvd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_films_asiatiques_dvds/1 or /_films_asiatiques_dvds/1.json
  def update
    respond_to do |format|
      if @_films_asiatiques_dvd.update(_films_asiatiques_dvd_params)
        format.html { redirect_to _films_asiatiques_dvd_url(@_films_asiatiques_dvd), notice: "Films asiatiques dvd was successfully updated." }
        format.json { render :show, status: :ok, location: @_films_asiatiques_dvd }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_dvd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_films_asiatiques_dvds/1 or /_films_asiatiques_dvds/1.json
  def destroy
    @_films_asiatiques_dvd.destroy!

    respond_to do |format|
      format.html { redirect_to _films_asiatiques_dvds_url, notice: "Films asiatiques dvd was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__films_asiatiques_dvd
      @_films_asiatiques_dvd = FilmsAsiatiquesDvd.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _films_asiatiques_dvd_params
      params.require(:_films_asiatiques_dvd).permit(:name)
    end
end
