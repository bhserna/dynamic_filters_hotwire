Styles = Styler.new do
  style :body, %w(sans-serif pa3 center mw8)
  style :hidden, %w(dn)

  collection :loading do
    style :container, %w(h2)
    style :element, %w(silver on-busy)
  end

  collection :form do
    style :container, %w(mt4 mb3 flex)
    style :group, %w(mr3)
    style :input, %w(input-reset h2 ba mv2 b--black-20 pa2 mb2 db w-100)
    style :select, %w(ba b--black-20 h2 mv2 pa2 mb2 db w-100)

    style :input, %w(h2 ba b--black-30 br1 pa2 ma1)
    style :select, %w(h2 ba b--black-30 br1 pa2 ma1)
  end

  collection :table do
    style :container, %w(overflow-auto)
    style :table, %w(f6 w-100)
    style :title, %w(fw6 bb b--black-20 tl pb3 pr3 bg-white)
    style :body, %w(lh-copy)
    style :cell, %w(pv3 pr3 bb b--black-20)
  end
end
