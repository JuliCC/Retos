class WomenController < ApplicationController

def index
	@women = Woman.all
end


def create
	@woman = Woman.new(first_name:params[:first_name], middle_name:params[:middle_name], lastname:params[:lastname], identification:params[:identification], birth_date:params[:birth_date], civil_status:params[:civil_status], age:params[:age], name_parient:params[:name_parient], blood_type:params[:blood_type], rh:params[:rh], num_children:params[:num_children], num_abortions:params[:num_abortions], ovarian_cancer:params[:ovarian_cancer], alzheimer:params[:alzheimer], diabetes:params[:diabetes], diseases:params[:diseases])
	@woman.save
	redirect_to women_path
end

def edit
	@woman = Woman.find(params[:id])
end

def destroy
	@woman = Woman.find(params[:id])
	@woman.destroy
	redirect_to women_path
end

end

