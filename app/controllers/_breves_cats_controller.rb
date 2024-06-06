class BrevesCatsController < ApplicationController
  before_action :set__breves_cat, only: %i[ show edit update destroy ]

  # GET /_breves_cats or /_breves_cats.json
  def index
    @_breves_cats = BrevesCat.all
  end

  # GET /_breves_cats/1 or /_breves_cats/1.json
  def show
  end

  # GET /_breves_cats/new
  def new
    @_breves_cat = BrevesCat.new
  end

  # GET /_breves_cats/1/edit
  def edit
  end

  # POST /_breves_cats or /_breves_cats.json
  def create
    @_breves_cat = BrevesCat.new(_breves_cat_params)

    respond_to do |format|
      if @_breves_cat.save
        format.html { redirect_to _breves_cat_url(@_breves_cat), notice: "Breves cat was successfully created." }
        format.json { render :show, status: :created, location: @_breves_cat }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_breves_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_breves_cats/1 or /_breves_cats/1.json
  def update
    respond_to do |format|
      if @_breves_cat.update(_breves_cat_params)
        format.html { redirect_to _breves_cat_url(@_breves_cat), notice: "Breves cat was successfully updated." }
        format.json { render :show, status: :ok, location: @_breves_cat }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_breves_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_breves_cats/1 or /_breves_cats/1.json
  def destroy
    @_breves_cat.destroy!

    respond_to do |format|
      format.html { redirect_to _breves_cats_url, notice: "Breves cat was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__breves_cat
      @_breves_cat = BrevesCat.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _breves_cat_params
      params.require(:_breves_cat).permit(:name)
    end
end
