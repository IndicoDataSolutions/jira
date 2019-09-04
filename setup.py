#!/usr/bin/env python
from setuptools import setup

setup(
    name="jira",
    version="0.1",
    description="CLI for jira for its dumb shenannigans",
    author="Chris Lee",
    author_email="chris@indico.io",
    packages=["jira"],
    install_requires=[],
    extras_require={"test": ["pytest"]},
)
