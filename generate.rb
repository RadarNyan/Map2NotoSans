#!/usr/bin/env ruby
def o source, dest, **options
  source = Array(source)
  dest = Array(dest)

  escape = -> name {
    return "'#{name}'" if name[/[^\u0000-\u0080]| /]
    return name
  }
  dests = -> dest, suffix = nil {
    dest = dest.map { |d| ["#{d} #{suffix}", d] }.flatten if suffix
    dest.map { |d| "local(#{escape.(d)})" }.join ", "
  }

  puts "/* #{source.first} */"
  source.each { |src|
    puts "@font-face { font-family: #{escape.(src)}; src: #{dests.(dest, "Regular")}; }"
    puts "@font-face { font-family: #{escape.(src)}; font-weight: bold; src: #{dests.(dest, "Bold")}; }"
    puts "@font-face { font-family: #{escape.(src)}; font-weight: lighter; src: #{dests.(dest, "Light")}; }"
  }
  puts
end

o ["Simsun", "宋体"], "Noto Sans CJK SC"
o ["NSimsun", "新宋体"], "Noto Sans CJK SC"
o ["Microsoft Yahei", "微软雅黑"], "Noto Sans CJK SC"
o ["Microsoft JhengHei", "微軟正黑體"], "Noto Sans CJK TC"
o ["Meiryo"], "Noto Sans CJK JP"
o ["arial"], "Noto Sans CJK SC"
o ["sans-serif"], "Noto Sans CJK SC"