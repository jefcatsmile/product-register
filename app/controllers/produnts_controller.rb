class ProduntsController < ApplicationController
  before_action :set_produnt, only: %i[ show edit update destroy ]

  # GET /produnts or /produnts.json
  def index
    @produnts = Produnt.all
  end

  # GET /produnts/1 or /produnts/1.json
  def show
  end

  # GET /produnts/new
  def new
    @produnt = Produnt.new
  end

  # GET /produnts/1/edit
  def edit
  end

  # POST /produnts or /produnts.json
  def create
    @produnt = Produnt.new(produnt_params)

    respond_to do |format|
      if @produnt.save
        format.html { redirect_to @produnt, notice: "Produnt was successfully created." }
        format.json { render :show, status: :created, location: @produnt }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @produnt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /produnts/1 or /produnts/1.json
  def update
    respond_to do |format|
      if @produnt.update(produnt_params)
        format.html { redirect_to @produnt, notice: "Produnt was successfully updated." }
        format.json { render :show, status: :ok, location: @produnt }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @produnt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /produnts/1 or /produnts/1.json
  def destroy
    @produnt.destroy
    respond_to do |format|
      format.html { redirect_to produnts_url, notice: "Produnt was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_produnt
      @produnt = Produnt.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def produnt_params
      params.require(:produnt).permit(:name, :price, :vender)
    end
end
