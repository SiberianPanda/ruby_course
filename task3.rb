def nod(a,b)
    flagA = ((a[0]).zero?)
    flagB = ((b[0]).zero?)
    if a == 0 or b == 0
        if a == 0
            return b
        elsif b == 0
            return a
        end
    elsif a == b
        return a
    elsif a == 1 or b == 1
        return 1
    elsif flagA and flagB
        return nod(a>>1,b>>1)<<1
    elsif flagA
        return nod(a>>1,b)
    elsif flagB
        return nod(a,b>>1)
    elsif not (flagA and flagB)
        return nod((a-b)>>2,b)
    end
end
a = ARGV[0].to_i
b = ARGV[1].to_i
if a<b
    a = a+b
    b = a-b
    a = a-b
end
puts(nod(a,b))
