class EnjoyMarkov
  class << self
    def start!(supinf, speed)
      @@x = 0
      loop do
        @@x += [-1, 1].sample # TODO: use prefer randmGen
        if supinf + 1 == @@x.abs
          puts "#{wall}#{space * supinf}#{axis}#{space * supinf}#{wall}".tap { |s| s[@@x + supinf + 1] = bomb }
          break
        end
        puts "#{wall}#{space * supinf}#{axis}#{space * supinf}#{wall}".tap { |s| s[@@x + supinf + 1] = point }
        sleep speed
      end
      puts 'Ops... ;('
    end

    private
      def axis;  "|"            end
      def wall;  "|"            end
      def point; "\e[31m*\e[0m" end
      def bomb;  "\e[33m*\e[0m" end
      def space; "\s"           end

      def row_string(supinf, index, point)
        "#{wall}#{space * supinf}#{axis}#{space * supinf}#{wall}".tap { |s| s[@@x + supinf + 1] = point }
      end
  end
end
