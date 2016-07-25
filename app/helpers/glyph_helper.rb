module GlyphHelper
  def fa(*names)
    names.map! { |name| name.to_s.tr('_', '-') }
    names.map! do |name|
      name =~ /pull-(?:left|right)/ ? name : "fa fa-#{name} fa-fw"
    end
    content_tag :i, nil, class: names
  end
end
