class PhotobooksDramasController < ApplicationController
  before_action :set__photobooks_drama, only: %i[ show edit update destroy ]

  # GET /_photobooks_dramas or /_photobooks_dramas.json
  def index
    @_photobooks_dramas = PhotobooksDrama.all
  end

  # GET /_photobooks_dramas/1 or /_photobooks_dramas/1.json
  def show
  end

  # GET /_photobooks_dramas/new
  def new
    @_photobooks_drama = PhotobooksDrama.new
  end

  # GET /_photobooks_dramas/1/edit
  def edit
  end

  # POST /_photobooks_dramas or /_photobooks_dramas.json
  def create
    @_photobooks_drama = PhotobooksDrama.new(_photobooks_drama_params)

    respond_to do |format|
      if @_photobooks_drama.save
        format.html { redirect_to _photobooks_drama_url(@_photobooks_drama), notice: "Photobooks drama was successfully created." }
        format.json { render :show, status: :created, location: @_photobooks_drama }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_photobooks_drama.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_photobooks_dramas/1 or /_photobooks_dramas/1.json
  def update
    respond_to do |format|
      if @_photobooks_drama.update(_photobooks_drama_params)
        format.html { redirect_to _photobooks_drama_url(@_photobooks_drama), notice: "Photobooks drama was successfully updated." }
        format.json { render :show, status: :ok, location: @_photobooks_drama }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_photobooks_drama.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_photobooks_dramas/1 or /_photobooks_dramas/1.json
  def destroy
    @_photobooks_drama.destroy!

    respond_to do |format|
      format.html { redirect_to _photobooks_dramas_url, notice: "Photobooks drama was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__photobooks_drama
      @_photobooks_drama = PhotobooksDrama.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _photobooks_drama_params
      params.require(:_photobooks_drama).permit(:name)
    end
end
