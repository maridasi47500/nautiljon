class DoujinshisDramasController < ApplicationController
  before_action :set__doujinshis_drama, only: %i[ show edit update destroy ]

  # GET /_doujinshis_dramas or /_doujinshis_dramas.json
  def index
    @_doujinshis_dramas = DoujinshisDrama.all
  end

  # GET /_doujinshis_dramas/1 or /_doujinshis_dramas/1.json
  def show
  end

  # GET /_doujinshis_dramas/new
  def new
    @_doujinshis_drama = DoujinshisDrama.new
  end

  # GET /_doujinshis_dramas/1/edit
  def edit
  end

  # POST /_doujinshis_dramas or /_doujinshis_dramas.json
  def create
    @_doujinshis_drama = DoujinshisDrama.new(_doujinshis_drama_params)

    respond_to do |format|
      if @_doujinshis_drama.save
        format.html { redirect_to doujinshis_drama_url(@_doujinshis_drama), notice: "Doujinshis drama was successfully created." }
        format.json { render :show, status: :created, location: @_doujinshis_drama }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_drama.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_doujinshis_dramas/1 or /_doujinshis_dramas/1.json
  def update
    respond_to do |format|
      if @_doujinshis_drama.update(_doujinshis_drama_params)
        format.html { redirect_to doujinshis_drama_url(@_doujinshis_drama), notice: "Doujinshis drama was successfully updated." }
        format.json { render :show, status: :ok, location: @_doujinshis_drama }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_drama.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_doujinshis_dramas/1 or /_doujinshis_dramas/1.json
  def destroy
    @_doujinshis_drama.destroy!

    respond_to do |format|
      format.html { redirect_to doujinshis_dramas_url, notice: "Doujinshis drama was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__doujinshis_drama
      @_doujinshis_drama = DoujinshisDrama.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _doujinshis_drama_params
      params.require(:doujinshis_drama).permit(:name)
    end
end
