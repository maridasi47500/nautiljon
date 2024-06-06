class FilmsAsiatiquesDoujinsController < ApplicationController
  before_action :set__films_asiatiques_doujin, only: %i[ show edit update destroy ]

  # GET /_films_asiatiques_doujins or /_films_asiatiques_doujins.json
  def index
    @_films_asiatiques_doujins = FilmsAsiatiquesDoujin.all
  end

  # GET /_films_asiatiques_doujins/1 or /_films_asiatiques_doujins/1.json
  def show
  end

  # GET /_films_asiatiques_doujins/new
  def new
    @_films_asiatiques_doujin = FilmsAsiatiquesDoujin.new
  end

  # GET /_films_asiatiques_doujins/1/edit
  def edit
  end

  # POST /_films_asiatiques_doujins or /_films_asiatiques_doujins.json
  def create
    @_films_asiatiques_doujin = FilmsAsiatiquesDoujin.new(_films_asiatiques_doujin_params)

    respond_to do |format|
      if @_films_asiatiques_doujin.save
        format.html { redirect_to films_asiatiques_doujin_url(@_films_asiatiques_doujin), notice: "Films asiatiques doujin was successfully created." }
        format.json { render :show, status: :created, location: @_films_asiatiques_doujin }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_doujin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_films_asiatiques_doujins/1 or /_films_asiatiques_doujins/1.json
  def update
    respond_to do |format|
      if @_films_asiatiques_doujin.update(_films_asiatiques_doujin_params)
        format.html { redirect_to films_asiatiques_doujin_url(@_films_asiatiques_doujin), notice: "Films asiatiques doujin was successfully updated." }
        format.json { render :show, status: :ok, location: @_films_asiatiques_doujin }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_doujin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_films_asiatiques_doujins/1 or /_films_asiatiques_doujins/1.json
  def destroy
    @_films_asiatiques_doujin.destroy!

    respond_to do |format|
      format.html { redirect_to films_asiatiques_doujins_url, notice: "Films asiatiques doujin was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__films_asiatiques_doujin
      @_films_asiatiques_doujin = FilmsAsiatiquesDoujin.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _films_asiatiques_doujin_params
      params.require(:films_asiatiques_doujin).permit(:name)
    end
end
