# coding: utf-8
require 'redcarpet'

class PublifyApp
  class Textfilter
    class Githubflavoredmarkdown < TextFilterPlugin::Markup
      plugin_display_name "GitHub Flavored Markdown"
      plugin_description 'GitHub Flavored Markdown markup language from <a href="https://help.github.com/articles/github-flavored-markdown">GitHub Help</a>'

      def self.help_text
        %{
[GFM](https://help.github.com/articles/github-flavored-markdown) is a simple text-to-HTML converter.

* `:tables`: parse tables, PHP-Markdown style.
* `:fenced_code_blocks`: parse fenced code blocks, PHP-Markdown
style. Blocks delimited with 3 or more `~` or backticks will be considered
as code, without the need to be indented. An optional language name may
be added at the end of the opening fence for the code block.
* `:autolink`: parse links even when they are not enclosed in `<>`
characters. Autolinks for the http, https and ftp protocols will be
automatically detected. Email addresses are also handled, and http
links without protocol, but starting with `www`.
* `:strikethrough`: parse strikethrough, PHP-Markdown style
Two `~` characters mark the start of a strikethrough,
e.g. `this is ~~good~~ bad`.
* `:footnotes`: parse footnotes, PHP-Markdown style. A footnote works very much like a reference-style link: it consists of a marker next to the text (e.g. This is a sentence.[^1]) and a footnote definition on its own line anywhere within the document (e.g. [^1]: This is a footnote.).

        }
      end

      def self.filtertext(text)
        opt = {
          :tables             => true,
          :fenced_code_blocks => true,
          :autolink           => true,
          :strikethrough      => true,
          :footnotes          => true
        }
        markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML,opt)
        markdown.render(text)

      end
    end
  end
end
