# SPDX-License-Identifier: EPL-1.0
##############################################################################
# Copyright (c) 2017 The Linux Foundation and others.
#
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
##############################################################################

from __future__ import absolute_import
import os
import jinja2
from docutils import nodes
from sphinx.util.compat import Directive
from docutils.parsers.rst import directives
from docutils.parsers.rst.directives import unchanged


class button_node(nodes.General, nodes.Element):
	"""
	"""
	pass


class ButtonDirective(Directive):
	"""
	"""
	required_arguments = 0

	option_spec = {
	    'text': unchanged
	}

	def run(self):
		"""
		"""
		env = self.state.document.settings.env
		app = env.app

		node = button_node()
		node['text'] = self.options['text']
		return [node]


def render(template, context):
	path, filename = os.path.split(template)
	return jinja2.Environment(
		loader=jinja2.FileSystemLoader(path)
	).get_template(filename).render(context)


def visit_button_node(self, node):
	context = {
		'text': node['text'],
	}
	html = render('_templates/feedback.html', context)
	self.body.append(html)
	raise nodes.SkipNode


def setup(app):
	app.add_node(button_node,
		html=(visit_button_node, None))
	app.add_directive('report-button', ButtonDirective)
	directives.register_directive('report-button', ButtonDirective)
