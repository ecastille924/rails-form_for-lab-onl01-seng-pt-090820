class SchoolClassesController < ApplicationController
  
    def index
      @school_classes = SchoolClasses.all
    end
  
    def show
      @school_class = SchoolClass.find(params[:id])
    end
  
    def new
        @school_class = SchoolClass.new
    end
  
    def create
        @school_class = SchoolClass.new(params.require(:school_class).permit(:first_name, :last_name)) 
        @school_class.save 
        redirect_to @school_class
    
      end
  
      def update 
          @school_class = SchoolClass.find(params[:id])
          @school_class.update(params.require(:school_class).permit(:first_name, :last_name))
      end
  
  end