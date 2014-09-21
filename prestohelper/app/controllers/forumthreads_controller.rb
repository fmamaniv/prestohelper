class ForumthreadsController < ApplicationController
  before_action :set_forumthread, only: [:show, :edit, :update, :destroy]

  # GET /forumthreads
  # GET /forumthreads.json
  def index
    @forumthreads = Forumthread.all
  end

  # GET /forumthreads/1
  # GET /forumthreads/1.json
  def show
  end

  # GET /forumthreads/new
  def new
    @forumthread = Forumthread.new
  end

  # GET /forumthreads/1/edit
  def edit
  end

  # POST /forumthreads
  # POST /forumthreads.json
  def create
    @forumthread = Forumthread.new(forumthread_params)

    respond_to do |format|
      if @forumthread.save
        format.html { redirect_to @forumthread, notice: 'Forumthread was successfully created.' }
        format.json { render :show, status: :created, location: @forumthread }
      else
        format.html { render :new }
        format.json { render json: @forumthread.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /forumthreads/1
  # PATCH/PUT /forumthreads/1.json
  def update
    respond_to do |format|
      if @forumthread.update(forumthread_params)
        format.html { redirect_to @forumthread, notice: 'Forumthread was successfully updated.' }
        format.json { render :show, status: :ok, location: @forumthread }
      else
        format.html { render :edit }
        format.json { render json: @forumthread.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /forumthreads/1
  # DELETE /forumthreads/1.json
  def destroy
    @forumthread.destroy
    respond_to do |format|
      format.html { redirect_to forumthreads_url, notice: 'Forumthread was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_forumthread
      @forumthread = Forumthread.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def forumthread_params
      params.require(:forumthread).permit(:title, :body, :post_private, :creation_date)
    end
end
