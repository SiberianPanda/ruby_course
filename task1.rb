# Task 1

template = /(Р|К|Н|р|к|н)/
ARGV.each_index {|index|
    ARGV[index] = ARGV[index].gsub(template){''}
}
puts(ARGV.join(' '))
