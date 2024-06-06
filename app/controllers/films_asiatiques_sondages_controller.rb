class FilmsAsiatiquesSondagesController < ApplicationController
  before_action :set__films_asiatiques_sondage, only: %i[ show edit update destroy ]

  # GET /_films_asiatiques_sondages or /_films_asiatiques_sondages.json
  def index
    @_films_asiatiques_sondages = FilmsAsiatiquesSondage.all
  end

  # GET /_films_asiatiques_sondages/1 or /_films_asiatiques_sondages/1.json
  def show
  end

  # GET /_films_asiatiques_sondages/new
  def new
    @_films_asiatiques_sondage = FilmsAsiatiquesSondage.new
  end

  # GET /_films_asiatiques_sondages/1/edit
  def edit
  end

  # POST /_films_asiatiques_sondages or /_films_asiatiques_sondages.json
  def create
    @_films_asiatiques_sondage = FilmsAsiatiquesSondage.new(_films_asiatiques_sondage_params)

    respond_to do |format|
      if @_films_asiatiques_sondage.save
        format.html { redirect_to films_asiatiques_sondage_url(@_films_asiatiques_sondage), notice: "Films asiatiques sondage was successfully created." }
        format.json { render :show, status: :created, location: @_films_asiatiques_sondage }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_sondage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_films_asiatiques_sondages/1 or /_films_asiatiques_sondages/1.json
  def update
    respond_to do |format|
      if @_films_asiatiques_sondage.update(_films_asiatiques_sondage_params)
        format.html { redirect_to films_asiatiques_sondage_url(@_films_asiatiques_sondage), notice: "Films asiatiques sondage was successfully updated." }
        format.json { render :show, status: :ok, location: @_films_asiatiques_sondage }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_sondage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_films_asiatiques_sondages/1 or /_films_asiatiques_sondages/1.json
  def destroy
    @_films_asiatiques_sondage.destroy!

    respond_to do |format|
      format.html { redirect_to films_asiatiques_sondages_url, notice: "Films asiatiques sondage was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__films_asiatiques_sondage
      @_films_asiatiques_sondage = FilmsAsiatiquesSondage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _films_asiatiques_sondage_params
      params.require(:films_asiatiques_sondage).permit(:name)
    end
end
