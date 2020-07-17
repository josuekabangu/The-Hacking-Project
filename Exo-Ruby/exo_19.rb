amount = 50
array = []

amount.times do |i|
    array[i] =  "jean.jak.0#{i+1}@email.com"
    if  i.odd?
        puts "jean.jak.0#{i+1}@email.com"
    end
end