from __future__ import absolute_import
from docutils import nodes
import jinja2
from sphinx.util.compat import Directive
from docutils.parsers.rst import directives
from docutils.parsers.rst.directives import unchanged

BUTTON_TEMPLATE = jinja2.Template(u"""
	<a href="{{ link }}" class="report-button"> {{ text }} </a>
	""")

class button_node(nodes.General, nodes.Element):
	"""
	"""
	pass


class ButtonDirective(Directive):
	"""
	"""
	required_arguments = 0

	option_spec = {
	    'link': unchanged,
	    'text': unchanged
	}

	def run(self):
		"""
		"""
		env = self.state.document.settings.env
		app = env.app

		node = button_node()
		node['link'] = self.options['link']
		node['text'] = self.options['text']
		return [node]


def visit_button_node(self, node):
	html = BUTTON_TEMPLATE.render(link=node['link'], text=node['text'])
	self.body.append(html)
	raise nodes.SkipNode


def setup(app):
	app.add_node(button_node,
		html=(visit_button_node, None))
	app.add_directive('report-button', ButtonDirective)
	directives.register_directive('report-button', ButtonDirective)
