class MangasPrepubliesController < ApplicationController
  before_action :set__mangas_prepubly, only: %i[ show edit update destroy ]

  # GET /_mangas_prepublies or /_mangas_prepublies.json
  def index
    @_mangas_prepublies = MangasPrepublie.all
  end

  # GET /_mangas_prepublies/1 or /_mangas_prepublies/1.json
  def show
  end

  # GET /_mangas_prepublies/new
  def new
    @_mangas_prepubly = MangasPrepublie.new
  end

  # GET /_mangas_prepublies/1/edit
  def edit
  end

  # POST /_mangas_prepublies or /_mangas_prepublies.json
  def create
    @_mangas_prepubly = MangasPrepublie.new(_mangas_prepubly_params)

    respond_to do |format|
      if @_mangas_prepubly.save
        format.html { redirect_to _mangas_prepubly_url(@_mangas_prepubly), notice: "Mangas prepublie was successfully created." }
        format.json { render :show, status: :created, location: @_mangas_prepubly }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_mangas_prepubly.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_mangas_prepublies/1 or /_mangas_prepublies/1.json
  def update
    respond_to do |format|
      if @_mangas_prepubly.update(_mangas_prepubly_params)
        format.html { redirect_to _mangas_prepubly_url(@_mangas_prepubly), notice: "Mangas prepublie was successfully updated." }
        format.json { render :show, status: :ok, location: @_mangas_prepubly }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_mangas_prepubly.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_mangas_prepublies/1 or /_mangas_prepublies/1.json
  def destroy
    @_mangas_prepubly.destroy!

    respond_to do |format|
      format.html { redirect_to _mangas_prepublies_url, notice: "Mangas prepublie was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__mangas_prepubly
      @_mangas_prepubly = MangasPrepublie.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _mangas_prepubly_params
      params.require(:_mangas_prepubly).permit(:name)
    end
end
