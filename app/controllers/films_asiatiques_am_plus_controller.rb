class FilmsAsiatiquesAmPlusController < ApplicationController
  before_action :set__films_asiatiques_am_plu, only: %i[ show edit update destroy ]

  # GET /_films_asiatiques_am_plus or /_films_asiatiques_am_plus.json
  def index
    @_films_asiatiques_am_plus = FilmsAsiatiquesAmPlu.all
  end

  # GET /_films_asiatiques_am_plus/1 or /_films_asiatiques_am_plus/1.json
  def show
  end

  # GET /_films_asiatiques_am_plus/new
  def new
    @_films_asiatiques_am_plu = FilmsAsiatiquesAmPlu.new
  end

  # GET /_films_asiatiques_am_plus/1/edit
  def edit
  end

  # POST /_films_asiatiques_am_plus or /_films_asiatiques_am_plus.json
  def create
    @_films_asiatiques_am_plu = FilmsAsiatiquesAmPlu.new(_films_asiatiques_am_plu_params)

    respond_to do |format|
      if @_films_asiatiques_am_plu.save
        format.html { redirect_to films_asiatiques_am_plu_url(@_films_asiatiques_am_plu), notice: "Films asiatiques am plu was successfully created." }
        format.json { render :show, status: :created, location: @_films_asiatiques_am_plu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_am_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_films_asiatiques_am_plus/1 or /_films_asiatiques_am_plus/1.json
  def update
    respond_to do |format|
      if @_films_asiatiques_am_plu.update(_films_asiatiques_am_plu_params)
        format.html { redirect_to films_asiatiques_am_plu_url(@_films_asiatiques_am_plu), notice: "Films asiatiques am plu was successfully updated." }
        format.json { render :show, status: :ok, location: @_films_asiatiques_am_plu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_am_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_films_asiatiques_am_plus/1 or /_films_asiatiques_am_plus/1.json
  def destroy
    @_films_asiatiques_am_plu.destroy!

    respond_to do |format|
      format.html { redirect_to films_asiatiques_am_plus_url, notice: "Films asiatiques am plu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__films_asiatiques_am_plu
      @_films_asiatiques_am_plu = FilmsAsiatiquesAmPlu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _films_asiatiques_am_plu_params
      params.require(:films_asiatiques_am_plu).permit(:name)
    end
end
