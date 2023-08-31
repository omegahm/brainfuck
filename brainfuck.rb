program = File.read(ARGV.first)
pc = 0
bp = 0
buckets = [0]
depth = 0
direction = 1

while pc < program.size
  case program[pc]
  when ">"
    bp += 1
    buckets[bp] ||= 0
  when "<"
    bp -= 1
  when "+"
    buckets[bp] += 1
  when "-"
    buckets[bp] -= 1
  when "."
    STDOUT.putc buckets[bp].chr
  when ","
    buckets[bp] = STDIN.getc.ord
  when "["
    if buckets[bp] == 0
      depth, direction = 1, 1
    end
  when "]"
    if buckets[bp] != 0
      depth, direction = 1, -1
    end
  end

  while depth > 0
    pc += direction
    depth += direction if program[pc] == "["
    depth -= direction if program[pc] == "]"
  end

  pc += 1
end
