class GossipsController < ApplicationController
  before_action :set_gossip, only: [:show, :edit, :update, :destroy]

  # GET /gossips
  # GET /gossips.json
  def index
    @gossips = Gossip.all
  end

  # GET /gossips/1
  # GET /gossips/1.json
  def show
  end

  # GET /gossips/new
  def new
    @gossip = Gossip.new
  end

  # GET /gossips/1/edit
  def edit
  end

  # POST /gossips
  # POST /gossips.json
  def create
    @gossip = Gossip.new(gossip_params)
    @gossip.save
    redirect_to @gossip
  end

  # PATCH/PUT /gossips/1
  # PATCH/PUT /gossips/1.json
  def update
    @gossip.update(gossip_params)
    redirect_to gossip_path
  end

  # DELETE /gossips/1
  # DELETE /gossips/1.json
  def destroy
    @gossip.destroy
    redirect_to gossips_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gossip
      @gossip = Gossip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gossip_params
      params.require(:gossip).permit(:anonymous_author, :content)
    end
end
