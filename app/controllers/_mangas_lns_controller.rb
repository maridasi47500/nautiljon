class MangasLnsController < ApplicationController
  before_action :set__mangas_ln, only: %i[ show edit update destroy ]

  # GET /_mangas_lns or /_mangas_lns.json
  def index
    @_mangas_lns = MangasLn.all
  end

  # GET /_mangas_lns/1 or /_mangas_lns/1.json
  def show
  end

  # GET /_mangas_lns/new
  def new
    @_mangas_ln = MangasLn.new
  end

  # GET /_mangas_lns/1/edit
  def edit
  end

  # POST /_mangas_lns or /_mangas_lns.json
  def create
    @_mangas_ln = MangasLn.new(_mangas_ln_params)

    respond_to do |format|
      if @_mangas_ln.save
        format.html { redirect_to _mangas_ln_url(@_mangas_ln), notice: "Mangas ln was successfully created." }
        format.json { render :show, status: :created, location: @_mangas_ln }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_mangas_ln.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_mangas_lns/1 or /_mangas_lns/1.json
  def update
    respond_to do |format|
      if @_mangas_ln.update(_mangas_ln_params)
        format.html { redirect_to _mangas_ln_url(@_mangas_ln), notice: "Mangas ln was successfully updated." }
        format.json { render :show, status: :ok, location: @_mangas_ln }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_mangas_ln.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_mangas_lns/1 or /_mangas_lns/1.json
  def destroy
    @_mangas_ln.destroy!

    respond_to do |format|
      format.html { redirect_to _mangas_lns_url, notice: "Mangas ln was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__mangas_ln
      @_mangas_ln = MangasLn.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _mangas_ln_params
      params.require(:_mangas_ln).permit(:name)
    end
end
