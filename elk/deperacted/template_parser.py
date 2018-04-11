# -*- coding: utf-8 -*-

import os
from jinja2 import Environment, FileSystemLoader

current_dir = os.path.dirname(__file__)
renders_dir = os.path.join(os.path.join(current_dir, 'config'), 'renders')
loader = FileSystemLoader('%s/config/templates' % current_dir)
env = Environment(loader=loader)


def parse(tpl_name, **kwargs):
    template = env.get_template(tpl_name)
    return template.render(**kwargs)


def write_etc_to_local_file(tpl_name, target_file_name, **kwargs):
    output = parse(tpl_name, **kwargs)

    renders_file_name = os.path.join(renders_dir, target_file_name)
    with open(renders_file_name, 'w') as f:
        f.write(output)


if __name__ == '__main__':
    print parse('logstash-jdbc.tpl', **{'home_dir': '/home/dev'})
