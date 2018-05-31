# Task 3

a = ARGV[0].to_i
b = ARGV[1].to_i
def nod(mi,ma)
    mod = ma%mi
    if mod == 0
        return mi
    else
        return nod(mod,mi)
    end
end
if a>=b
    puts(nod(ma = a,mi = b))
else
    puts(nod(ma = b,mi = a))
end
