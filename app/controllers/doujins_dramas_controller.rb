class DoujinsDramasController < ApplicationController
  before_action :set__doujins_drama, only: %i[ show edit update destroy ]

  # GET /_doujins_dramas or /_doujins_dramas.json
  def index
    @_doujins_dramas = DoujinsDrama.all
  end

  # GET /_doujins_dramas/1 or /_doujins_dramas/1.json
  def show
  end

  # GET /_doujins_dramas/new
  def new
    @_doujins_drama = DoujinsDrama.new
  end

  # GET /_doujins_dramas/1/edit
  def edit
  end

  # POST /_doujins_dramas or /_doujins_dramas.json
  def create
    @_doujins_drama = DoujinsDrama.new(_doujins_drama_params)

    respond_to do |format|
      if @_doujins_drama.save
        format.html { redirect_to _doujins_drama_url(@_doujins_drama), notice: "Doujins drama was successfully created." }
        format.json { render :show, status: :created, location: @_doujins_drama }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_doujins_drama.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_doujins_dramas/1 or /_doujins_dramas/1.json
  def update
    respond_to do |format|
      if @_doujins_drama.update(_doujins_drama_params)
        format.html { redirect_to _doujins_drama_url(@_doujins_drama), notice: "Doujins drama was successfully updated." }
        format.json { render :show, status: :ok, location: @_doujins_drama }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_doujins_drama.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_doujins_dramas/1 or /_doujins_dramas/1.json
  def destroy
    @_doujins_drama.destroy!

    respond_to do |format|
      format.html { redirect_to _doujins_dramas_url, notice: "Doujins drama was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__doujins_drama
      @_doujins_drama = DoujinsDrama.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _doujins_drama_params
      params.require(:_doujins_drama).permit(:name)
    end
end
