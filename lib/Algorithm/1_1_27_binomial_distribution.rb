# Binomial Dsitribution creative ex 1.1.27
# http://techbus.safaribooksonline.com/book/software-engineering-and-development/algorithms/9780132762571/1dot1-basic-programming-model/h4_78?uicode=oracle

class Distribution
  
  def binomial (n, k, p)
    if (n == 0) && (k==0) 
      
      return 1.0
    
    elsif (n < 0) || (k < 0)
      
      return 0.0
    
    end
    
  end
  
end
