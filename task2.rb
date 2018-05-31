a = ARGV[0].split('')
b = ARGV[1].split('')
a.each_index do |index_A|
    if a[index_A] == b[0]
        right = (a.length - index_A).abs
        if index_A.abs <= right
            puts(index_A)
            exit()
        else
            puts(right)
            exit()
        end
    end
end
