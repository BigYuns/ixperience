class Array 
  def self.naturals(n)
  	#here the self represents the class itself. 
    result=[]
    i=0
    while i<n
    	i+=1
    	result<<i
    end
    result
  end

  def increment

  	self.map do |element|
  		#here, the self represents any instance of Array. 
  		element+1 
  	end

  end

  def increment_by_n(n)
  	self.map do |element|
  		#here 'self' indicates an instance of Array. 
  		element+n
  	end
  end

end


