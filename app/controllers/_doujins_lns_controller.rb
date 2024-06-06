class DoujinsLnsController < ApplicationController
  before_action :set__doujins_ln, only: %i[ show edit update destroy ]

  # GET /_doujins_lns or /_doujins_lns.json
  def index
    @_doujins_lns = DoujinsLn.all
  end

  # GET /_doujins_lns/1 or /_doujins_lns/1.json
  def show
  end

  # GET /_doujins_lns/new
  def new
    @_doujins_ln = DoujinsLn.new
  end

  # GET /_doujins_lns/1/edit
  def edit
  end

  # POST /_doujins_lns or /_doujins_lns.json
  def create
    @_doujins_ln = DoujinsLn.new(_doujins_ln_params)

    respond_to do |format|
      if @_doujins_ln.save
        format.html { redirect_to _doujins_ln_url(@_doujins_ln), notice: "Doujins ln was successfully created." }
        format.json { render :show, status: :created, location: @_doujins_ln }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_doujins_ln.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_doujins_lns/1 or /_doujins_lns/1.json
  def update
    respond_to do |format|
      if @_doujins_ln.update(_doujins_ln_params)
        format.html { redirect_to _doujins_ln_url(@_doujins_ln), notice: "Doujins ln was successfully updated." }
        format.json { render :show, status: :ok, location: @_doujins_ln }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_doujins_ln.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_doujins_lns/1 or /_doujins_lns/1.json
  def destroy
    @_doujins_ln.destroy!

    respond_to do |format|
      format.html { redirect_to _doujins_lns_url, notice: "Doujins ln was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__doujins_ln
      @_doujins_ln = DoujinsLn.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _doujins_ln_params
      params.require(:_doujins_ln).permit(:name)
    end
end
