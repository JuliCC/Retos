class ChildrenController < ApplicationController

def index
	@children = Child.all
end


def create
	@child = Child.new(first_name:params[:first_name], middle_name:params[:middle_name], lastname:params[:lastname], identification:params[:identification], birth_date:params[:birth_date], age:params[:age], name_parient:params[:name_parient], blood_type:params[:blood_type], rh:params[:rh], sex:params[:sex], hepb:params[:hepb], hepa:params[:hepa], var:params[:var], diabetes:params[:diabetes], cancer:params[:cancer], other:params[:other], diseases:params[:diseases])
	@child.save
	redirect_to children_path
end

def edit
	@child = Child.find(params[:id])
end

def destroy
	@child = Child.find(params[:id])
	@child.destroy
	redirect_to children_path
end
end
