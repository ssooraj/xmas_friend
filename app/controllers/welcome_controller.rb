class WelcomeController < ApplicationController
  
  def index
  	if params[:welcome]
	  	@@test = params[:welcome][:name] 
	  	@@test1 = params[:welcome][:sname] 
	  	@@coll = Welcomes.all
	  	flag = 0
	  	@@coll.each do |rec|
	  		if(rec.name == @@test) && (rec.sname == @@test1)
	  			p "SACccccccccccccccccccccccccccccccccccccccc"
	  			flag = 1;
	  		    redirect_to welcome_select_path
	  			break;
	  		end
	  	end
	  	if flag == 0
	      redirect_to welcome_no_path
	  	end		
  	end
  end


  def select
  	@@me = Welcomes.find_by(name:@@test,sname:@@test1)
  	@@me_name = @@test+ " " + @@test1
  	if(@@me.logged == false)
  		@@coll.each do |rec|
  			p rec
	    	if (rec.name != @@test ) &&(rec.sname != @@test1) && (rec.selected == false)
	    	  p "nbjsbjdasnkjxcnskxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxna"
	    	  @@me.logged =true;
	    	  @@me.save
	    	  rec.selected = true
	    	  rec.save
	    	  Friends.create(person: @@test+ " " + @@test1 , friend: rec.name+ " " + rec.sname)
	    	  @fr = rec.name + " " + rec.sname;
	    	  p"sddsdsdsadsadasdadasdasdasddadasdadsasdasdasdasdasdasdasdasdasd"
	    	  p @fr
	    	  break;
	    	end 	
	    end	
    else
    	redirect_to welcome_friend_path
    end
  end	


  def no
  	
  end	

  def friend
  	@my_friend = Friends.find_by person:  @@me_name

  end	

end
