class PhotobooksPhotobooksController < ApplicationController
  before_action :set__photobooks_photobook, only: %i[ show edit update destroy ]

  # GET /_photobooks_photobooks or /_photobooks_photobooks.json
  def index
    @_photobooks_photobooks = PhotobooksPhotobook.all
  end

  # GET /_photobooks_photobooks/1 or /_photobooks_photobooks/1.json
  def show
  end

  # GET /_photobooks_photobooks/new
  def new
    @_photobooks_photobook = PhotobooksPhotobook.new
  end

  # GET /_photobooks_photobooks/1/edit
  def edit
  end

  # POST /_photobooks_photobooks or /_photobooks_photobooks.json
  def create
    @_photobooks_photobook = PhotobooksPhotobook.new(_photobooks_photobook_params)

    respond_to do |format|
      if @_photobooks_photobook.save
        format.html { redirect_to _photobooks_photobook_url(@_photobooks_photobook), notice: "Photobooks photobook was successfully created." }
        format.json { render :show, status: :created, location: @_photobooks_photobook }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_photobooks_photobook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_photobooks_photobooks/1 or /_photobooks_photobooks/1.json
  def update
    respond_to do |format|
      if @_photobooks_photobook.update(_photobooks_photobook_params)
        format.html { redirect_to _photobooks_photobook_url(@_photobooks_photobook), notice: "Photobooks photobook was successfully updated." }
        format.json { render :show, status: :ok, location: @_photobooks_photobook }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_photobooks_photobook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_photobooks_photobooks/1 or /_photobooks_photobooks/1.json
  def destroy
    @_photobooks_photobook.destroy!

    respond_to do |format|
      format.html { redirect_to _photobooks_photobooks_url, notice: "Photobooks photobook was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__photobooks_photobook
      @_photobooks_photobook = PhotobooksPhotobook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _photobooks_photobook_params
      params.require(:_photobooks_photobook).permit(:name)
    end
end
