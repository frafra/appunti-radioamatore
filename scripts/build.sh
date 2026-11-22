#!/bin/sh

exec typst compile main.typ "${1:-output.pdf}"
