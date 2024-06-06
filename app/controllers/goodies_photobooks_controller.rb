class GoodiesPhotobooksController < ApplicationController
  before_action :set__goodies_photobook, only: %i[ show edit update destroy ]

  # GET /_goodies_photobooks or /_goodies_photobooks.json
  def index
    @_goodies_photobooks = GoodiesPhotobook.all
  end

  # GET /_goodies_photobooks/1 or /_goodies_photobooks/1.json
  def show
  end

  # GET /_goodies_photobooks/new
  def new
    @_goodies_photobook = GoodiesPhotobook.new
  end

  # GET /_goodies_photobooks/1/edit
  def edit
  end

  # POST /_goodies_photobooks or /_goodies_photobooks.json
  def create
    @_goodies_photobook = GoodiesPhotobook.new(_goodies_photobook_params)

    respond_to do |format|
      if @_goodies_photobook.save
        format.html { redirect_to goodies_photobook_url(@_goodies_photobook), notice: "Goodies photobook was successfully created." }
        format.json { render :show, status: :created, location: @_goodies_photobook }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_goodies_photobook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_goodies_photobooks/1 or /_goodies_photobooks/1.json
  def update
    respond_to do |format|
      if @_goodies_photobook.update(_goodies_photobook_params)
        format.html { redirect_to goodies_photobook_url(@_goodies_photobook), notice: "Goodies photobook was successfully updated." }
        format.json { render :show, status: :ok, location: @_goodies_photobook }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_goodies_photobook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_goodies_photobooks/1 or /_goodies_photobooks/1.json
  def destroy
    @_goodies_photobook.destroy!

    respond_to do |format|
      format.html { redirect_to goodies_photobooks_url, notice: "Goodies photobook was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__goodies_photobook
      @_goodies_photobook = GoodiesPhotobook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _goodies_photobook_params
      params.require(:goodies_photobook).permit(:name)
    end
end
