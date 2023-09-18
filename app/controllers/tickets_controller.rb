class TicketsController < ApplicationController
  before_action :authenticate_user!

  def index
    @tickets = Ticket.all
  end

  def show
    @ticket = Ticket.find(params[:id])
  end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(ticket_params)
    @reviewer = Reviewer.all.sample
    @ticket.reviewer = @reviewer
    @ticket.user = current_user
    if @ticket.save!
      redirect_to root_path
    else
      raise
      render :new, status: :unprocessable_entity
    end
  end

  private

  def ticket_params
    params.require(:ticket).permit(:category, :description)
  end
end
