class EnjoyMarkov
  class << self
    def start!(supinf, speed)
      @@x = 0
      loop do
        @@x += [-1, 1].sample # TODO: use prefer randmGen
        break if supinf == @@x.abs
        puts "#{wall}#{space * supinf}#{axis}#{space * supinf}#{wall}".tap { |s| s[@@x + supinf + 1] = point }
        sleep speed
      end
      puts 'Ops... ;('
    end

    private
      def axis;  "|"            end
      def wall;  "|"            end
      def point; "\e[31m*\e[0m" end
      def space; "\s"           end
  end
end
