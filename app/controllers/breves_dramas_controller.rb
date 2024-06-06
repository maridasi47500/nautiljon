class BrevesDramasController < ApplicationController
  before_action :set__breves_drama, only: %i[ show edit update destroy ]

  # GET /_breves_dramas or /_breves_dramas.json
  def index
    @_breves_dramas = BrevesDrama.all
  end

  # GET /_breves_dramas/1 or /_breves_dramas/1.json
  def show
  end

  # GET /_breves_dramas/new
  def new
    @_breves_drama = BrevesDrama.new
  end

  # GET /_breves_dramas/1/edit
  def edit
  end

  # POST /_breves_dramas or /_breves_dramas.json
  def create
    @_breves_drama = BrevesDrama.new(_breves_drama_params)

    respond_to do |format|
      if @_breves_drama.save
        format.html { redirect_to breves_drama_url(@_breves_drama), notice: "Breves drama was successfully created." }
        format.json { render :show, status: :created, location: @_breves_drama }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_breves_drama.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_breves_dramas/1 or /_breves_dramas/1.json
  def update
    respond_to do |format|
      if @_breves_drama.update(_breves_drama_params)
        format.html { redirect_to breves_drama_url(@_breves_drama), notice: "Breves drama was successfully updated." }
        format.json { render :show, status: :ok, location: @_breves_drama }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_breves_drama.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_breves_dramas/1 or /_breves_dramas/1.json
  def destroy
    @_breves_drama.destroy!

    respond_to do |format|
      format.html { redirect_to breves_dramas_url, notice: "Breves drama was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__breves_drama
      @_breves_drama = BrevesDrama.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _breves_drama_params
      params.require(:breves_drama).permit(:name)
    end
end
