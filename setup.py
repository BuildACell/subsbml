from setuptools import setup

# Get the long description from the README file
with open('README.md') as fp:
    long_description = fp.read()

setup(
    name = 'subsbml',
    version = '1.0.0',
    author = 'Ayush Pandey',
    author_email = 'apandey@caltech.edu',
    url = 'https://github.com/BuildACell/subsbml',
    description = 'SBML subsystem interaction modeling toolbox in Python',
    long_description = long_description,
    packages = ['subsbml'],
    classifiers = [
        'Development Status :: 4 - Beta',
        'Intended Audience :: Science/Research',
        'Intended Audience :: Developers',
        'License :: OSI Approved :: BSD License',
        'Programming Language :: Python :: 3.6',
        'Topic :: Software Development',
        'Topic :: Scientific/Engineering',
        'Operating System :: OS Independent',
    ],
    install_requires=[
          "python-libsbml",
          "scipy",
          "numpy"
          ],
    extras_require = { 
        "all": [
            "matplotlib"
            ]
            },
    setup_requires=["pytest-runner"],
    python_requires='>=3.6',
    keywords="SBML Automated Model Reduction Modeling QSSA Hill functions",
    tests_require=["pytest", "pytest-cov", "nbval"],
    project_urls={
    'Documentation': 'https://readthedocs.org/projects/subsbml/',
    'Source': 'https://github.com/BuildACell/subsbml',
    'Tracker': 'https://github.com/BuildACell/subsbml/issues',
    }, 
)
