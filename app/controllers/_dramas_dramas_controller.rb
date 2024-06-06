class DramasDramasController < ApplicationController
  before_action :set__dramas_drama, only: %i[ show edit update destroy ]

  # GET /_dramas_dramas or /_dramas_dramas.json
  def index
    @_dramas_dramas = DramasDrama.all
  end

  # GET /_dramas_dramas/1 or /_dramas_dramas/1.json
  def show
  end

  # GET /_dramas_dramas/new
  def new
    @_dramas_drama = DramasDrama.new
  end

  # GET /_dramas_dramas/1/edit
  def edit
  end

  # POST /_dramas_dramas or /_dramas_dramas.json
  def create
    @_dramas_drama = DramasDrama.new(_dramas_drama_params)

    respond_to do |format|
      if @_dramas_drama.save
        format.html { redirect_to _dramas_drama_url(@_dramas_drama), notice: "Dramas drama was successfully created." }
        format.json { render :show, status: :created, location: @_dramas_drama }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dramas_drama.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dramas_dramas/1 or /_dramas_dramas/1.json
  def update
    respond_to do |format|
      if @_dramas_drama.update(_dramas_drama_params)
        format.html { redirect_to _dramas_drama_url(@_dramas_drama), notice: "Dramas drama was successfully updated." }
        format.json { render :show, status: :ok, location: @_dramas_drama }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dramas_drama.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dramas_dramas/1 or /_dramas_dramas/1.json
  def destroy
    @_dramas_drama.destroy!

    respond_to do |format|
      format.html { redirect_to _dramas_dramas_url, notice: "Dramas drama was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dramas_drama
      @_dramas_drama = DramasDrama.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dramas_drama_params
      params.require(:_dramas_drama).permit(:name)
    end
end
