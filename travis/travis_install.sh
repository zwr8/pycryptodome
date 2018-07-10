#!/bin/bash

set -x

export PYTHON=python
PYV=$(python --version)
pip install setuptools
if [ x${CFFI} == xyes ] && [[ ${PYV} != *"PyPy"* ]]; then
	pip install cffi
fi
