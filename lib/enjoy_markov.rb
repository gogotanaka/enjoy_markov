class EnjoyMarkov
  def self.start!(supinf=20)
    @@x = 0
    loop do
      @@x += [-1, 1].sample # TODO: use prefer randmGen
      raise 'ops.. ;(' if supinf == @@x.abs
      p %!#{"\s" * supinf}|#{"\s" * supinf}!.tap { |s| s[@@x + supinf] = '*' }
      sleep 0.05
    end
  end
end
