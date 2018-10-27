from setuptools import setup

# Get the long description from the README file
with open('README.md') as fp:
    long_description = ''
    # long_description = fp.read()

setup(
    name = 'subsbml',
    version = '0.1',
    author = 'BuildACell',
    author_email = 'apandey@caltech.edu',
    url = 'https://github.com/BuildACell/subsbml',
    description = 'SBML subsystem interaction modeling toolbox in Python',
    long_description = long_description,
    packages = ['subsbml'],
    classifiers = [
        'Development Status :: 3 - Alpha',
        'Intended Audience :: Science/Research',
        'Intended Audience :: Developers',
        'License :: OSI Approved :: BSD License',
        'Programming Language :: Python :: 3',
        'Programming Language :: Python :: 3.6',
        'Topic :: Software Development',
        'Topic :: Scientific/Engineering',
        'Operating System :: POSIX',
        'Operating System :: Unix'
        'Operating System :: MacOS'
        'Operating System :: Microsoft :: Windows'
    ],
)
