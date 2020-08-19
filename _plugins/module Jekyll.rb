module Jekyll
  class RenderTimeTagBlock < Liquid::Block

    def render(context)
      text = super
      "<p>#{text} #{Time.now}</p>"
    end

  end
end

Liquid::Template.register_tag('render_time', Jekyll::RenderTimeTagBlock)