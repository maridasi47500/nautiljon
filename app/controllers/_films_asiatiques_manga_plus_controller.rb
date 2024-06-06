class FilmsAsiatiquesMangaPlusController < ApplicationController
  before_action :set__films_asiatiques_manga_plu, only: %i[ show edit update destroy ]

  # GET /_films_asiatiques_manga_plus or /_films_asiatiques_manga_plus.json
  def index
    @_films_asiatiques_manga_plus = FilmsAsiatiquesMangaPlu.all
  end

  # GET /_films_asiatiques_manga_plus/1 or /_films_asiatiques_manga_plus/1.json
  def show
  end

  # GET /_films_asiatiques_manga_plus/new
  def new
    @_films_asiatiques_manga_plu = FilmsAsiatiquesMangaPlu.new
  end

  # GET /_films_asiatiques_manga_plus/1/edit
  def edit
  end

  # POST /_films_asiatiques_manga_plus or /_films_asiatiques_manga_plus.json
  def create
    @_films_asiatiques_manga_plu = FilmsAsiatiquesMangaPlu.new(_films_asiatiques_manga_plu_params)

    respond_to do |format|
      if @_films_asiatiques_manga_plu.save
        format.html { redirect_to _films_asiatiques_manga_plu_url(@_films_asiatiques_manga_plu), notice: "Films asiatiques manga plu was successfully created." }
        format.json { render :show, status: :created, location: @_films_asiatiques_manga_plu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_manga_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_films_asiatiques_manga_plus/1 or /_films_asiatiques_manga_plus/1.json
  def update
    respond_to do |format|
      if @_films_asiatiques_manga_plu.update(_films_asiatiques_manga_plu_params)
        format.html { redirect_to _films_asiatiques_manga_plu_url(@_films_asiatiques_manga_plu), notice: "Films asiatiques manga plu was successfully updated." }
        format.json { render :show, status: :ok, location: @_films_asiatiques_manga_plu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_manga_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_films_asiatiques_manga_plus/1 or /_films_asiatiques_manga_plus/1.json
  def destroy
    @_films_asiatiques_manga_plu.destroy!

    respond_to do |format|
      format.html { redirect_to _films_asiatiques_manga_plus_url, notice: "Films asiatiques manga plu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__films_asiatiques_manga_plu
      @_films_asiatiques_manga_plu = FilmsAsiatiquesMangaPlu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _films_asiatiques_manga_plu_params
      params.require(:_films_asiatiques_manga_plu).permit(:name)
    end
end
