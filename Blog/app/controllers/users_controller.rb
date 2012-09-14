class UsersController < ApplicationController
  # Be sure to include AuthenticationSystem in Application Controller instead
  include AuthenticatedSystem
  layout 'index'

  # render new.rhtml
  def new
    @user = User.new
    # @timezone=[]
   @timezone=TZone.find(:all)
  p "++++++++++"
   p @timezone
    #~ timezone.each do |t|
	    #~ @timezone << t.description
    #~ end
  end
  def edit
	  @user=User.find(params[:id])
  end
  
  def update
	  @user=User.find(params[:id])
         if @user.update_attributes(params[:user])
		 redirect_to :controller=>'sessions',:action=>'new'
		 else 
			 render 'edit'
		 end
		 end
  def create

    logout_keeping_session!
    @user = User.new(params[:user])
    	  @timezone=TZone.find(:all)
             # @tim=  @user.t_zone_id
	     tzone =TZone.find_by_description(params[:tz])
	     @user.t_zone_id=tzone.id
    success = @user && @user.save
    @user.errors.each do |v|
      if  v.include?("login")
        @a = "login must be more then 3 character and unique"
        end
    if v.include?("password") && v.include?("doesn't match confirmation") == false
           @b= "password should be more then 6 character"
           end
    if v.include?("doesn't match confirmation")
            @c = "Password confirmation not matched"
            end
      if v.include?("email")
               @d="email should be valid format and unique"
               end
      if v.include?("firstname")
                @e= "First name is mandatory"
                end
      if v.include?("lastname")
                @f= "Last name is mandatory"
              end
      end

    if success && @user.errors.empty?
      
      # Protects against session fixation attacks, causes request forgery
      # protection if visitor resubmits an earlier form using back
      # button. Uncomment if you understand the tradeoffs.
      # reset session
      self.current_user = @user # !! now logged in
    redirect_to :controller=>'sessions',:action=>'new'
      flash[:notice] = "Thanks for signing up!  We're sending you an email with your activation code."
    else
      flash[:error]  = "We couldn't set up that account, sorry.  Please try again, or contact an admin (link is above)."
      render :action => 'new'
    end
  end

end
