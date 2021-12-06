Styles = Styler.new do
  style :body, %w(sans-serif pa3 center mw8)
  style :hidden, %w(dn)

  collection :loading do
    style :container, %w(h2)
    style :element, %w(silver on-busy)
  end

  collection :filters do
    style :container, %w(mt4 mb2 flex)
    style :group, %w(mr3)
    style :input, %w(input-reset ba b--black-20 mv2 pa2 br1 db w-100)
    style :select, [input]
  end

  collection :table do
    style :container, %w(overflow-auto)
    style :table, %w(f6 w-100)
    style :title, %w(fw6 bb b--black-20 tl pb3 pr3 bg-white)
    style :body, %w(lh-copy)
    style :cell, %w(pv3 pr3 bb b--black-20)
  end
end
