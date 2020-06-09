banks = [ :n, :s ]

banks.each do |f|
  banks.each do |w|
    banks.each do |g|
      banks.each do |c|
        if f != g
          if (g == w) ||
            (g == c)
          p [f,w,g,c]
          end
        end
      end
    end
  end
end