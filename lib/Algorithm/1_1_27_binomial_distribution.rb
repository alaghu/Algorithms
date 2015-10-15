# Binomial Dsitribution creative ex 1.1.27
# \
class Distribution
  
  def binomial (n, k, p)
    if (n == 0) && (k==0) 
      
      return 1.0
    
    elsif (n < 0) || (k < 0)
      
      return 0.0
    
    end
    
  end
  
end
