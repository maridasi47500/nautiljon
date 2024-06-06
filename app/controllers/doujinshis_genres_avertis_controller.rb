class DoujinshisGenresAvertisController < ApplicationController
  before_action :set__doujinshis_genres_averti, only: %i[ show edit update destroy ]

  # GET /_doujinshis_genres_avertis or /_doujinshis_genres_avertis.json
  def index
    @_doujinshis_genres_avertis = DoujinshisGenresAverti.all
  end

  # GET /_doujinshis_genres_avertis/1 or /_doujinshis_genres_avertis/1.json
  def show
  end

  # GET /_doujinshis_genres_avertis/new
  def new
    @_doujinshis_genres_averti = DoujinshisGenresAverti.new
  end

  # GET /_doujinshis_genres_avertis/1/edit
  def edit
  end

  # POST /_doujinshis_genres_avertis or /_doujinshis_genres_avertis.json
  def create
    @_doujinshis_genres_averti = DoujinshisGenresAverti.new(_doujinshis_genres_averti_params)

    respond_to do |format|
      if @_doujinshis_genres_averti.save
        format.html { redirect_to _doujinshis_genres_averti_url(@_doujinshis_genres_averti), notice: "Doujinshis genres averti was successfully created." }
        format.json { render :show, status: :created, location: @_doujinshis_genres_averti }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_genres_averti.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_doujinshis_genres_avertis/1 or /_doujinshis_genres_avertis/1.json
  def update
    respond_to do |format|
      if @_doujinshis_genres_averti.update(_doujinshis_genres_averti_params)
        format.html { redirect_to _doujinshis_genres_averti_url(@_doujinshis_genres_averti), notice: "Doujinshis genres averti was successfully updated." }
        format.json { render :show, status: :ok, location: @_doujinshis_genres_averti }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_genres_averti.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_doujinshis_genres_avertis/1 or /_doujinshis_genres_avertis/1.json
  def destroy
    @_doujinshis_genres_averti.destroy!

    respond_to do |format|
      format.html { redirect_to _doujinshis_genres_avertis_url, notice: "Doujinshis genres averti was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__doujinshis_genres_averti
      @_doujinshis_genres_averti = DoujinshisGenresAverti.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _doujinshis_genres_averti_params
      params.require(:_doujinshis_genres_averti).permit(:name)
    end
end
