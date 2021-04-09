# To prevent coc-python invalid names, undefined variables, etc
# pylint: disable=C0111
c = c  # noqa: F821 pylint: disable=E0602,C0103
config = config  # noqa: F821 pylint: disable=E0602,C0103

config.load_autoconfig()
config.source("nord-qutebrowser.py") # nord colorscheme

config.bind(",r", "restart")
