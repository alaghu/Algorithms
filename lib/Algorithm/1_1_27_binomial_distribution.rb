# Binomial Dsitribution creative ex 1.1.27
# http://techbus.safaribooksonline.com/book/software-engineering-and-development/algorithms/9780132762571/1dot1-basic-programming-model/h4_78?uicode=oracle
class Distribution
  # Binomial distribution. I am using the parameters as giveb in the book
  def binomial(n, k, p)
    if (n == 0) && (k == 0)

      1.0

    elsif (n < 0) || (k < 0)

      0.0

    else

      ((1 - p) * binomial(n - 1, k, p)) + p * binomial(n - 1, k - 1, p)

    end
  end
end
