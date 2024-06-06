class GoodiesDramasController < ApplicationController
  before_action :set__goodies_drama, only: %i[ show edit update destroy ]

  # GET /_goodies_dramas or /_goodies_dramas.json
  def index
    @_goodies_dramas = GoodiesDrama.all
  end

  # GET /_goodies_dramas/1 or /_goodies_dramas/1.json
  def show
  end

  # GET /_goodies_dramas/new
  def new
    @_goodies_drama = GoodiesDrama.new
  end

  # GET /_goodies_dramas/1/edit
  def edit
  end

  # POST /_goodies_dramas or /_goodies_dramas.json
  def create
    @_goodies_drama = GoodiesDrama.new(_goodies_drama_params)

    respond_to do |format|
      if @_goodies_drama.save
        format.html { redirect_to goodies_drama_url(@_goodies_drama), notice: "Goodies drama was successfully created." }
        format.json { render :show, status: :created, location: @_goodies_drama }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_goodies_drama.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_goodies_dramas/1 or /_goodies_dramas/1.json
  def update
    respond_to do |format|
      if @_goodies_drama.update(_goodies_drama_params)
        format.html { redirect_to goodies_drama_url(@_goodies_drama), notice: "Goodies drama was successfully updated." }
        format.json { render :show, status: :ok, location: @_goodies_drama }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_goodies_drama.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_goodies_dramas/1 or /_goodies_dramas/1.json
  def destroy
    @_goodies_drama.destroy!

    respond_to do |format|
      format.html { redirect_to goodies_dramas_url, notice: "Goodies drama was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__goodies_drama
      @_goodies_drama = GoodiesDrama.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _goodies_drama_params
      params.require(:goodies_drama).permit(:name)
    end
end
