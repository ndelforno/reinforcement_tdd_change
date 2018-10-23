class Changer

  def initialize

  end


  def self.make_change(amount)
    cents = [25,10,5,1]
    change = []
        cents.each do |cent|
          break if change.sum == amount
          if change.sum + cent <= amount 
          change << cent
          cents.each do |cent2|
            break if change.sum == amount
            if change.sum + cent2 <= amount
              change << cent2
            end
          end
        end
      end
    return change
  end


end
