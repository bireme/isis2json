The isis2json.py is a Python/Jython script to export ISIS (MST+XRF)
or ISO-2709 databases to JSON files.

Running under Jython, both MST+XRF and ISO-2709 files can be read,
thanks to the Bruma Java library found in the lib/ directory.

Running under Python, only ISO-2709 files can be read.

Dependencies
=============

Under Python, isis2json.py depends on:

- Python2.6 or 2.7
- argparse.py (bundled; also part of the CPython 2.7 distribution)

Under Jython, isis2json.py depends on:

- Jython 2.5;
- argparse.py (bundled)
- Bruma.jar on the CLASSPATH (bundled);
- jyson-1.0.1.jar on the CLASSPATH (bundled);

Example CLASSPATH:

export CLASSPATH=/home/luciano/lib/Bruma.jar:/home/luciano/lib/jyson-1.0.1.jar


Troubleshooting
================

SyntaxError on `yield fields` running isis2json.py under Jython
-------------------------------------------------------------------

If you see this::

  Traceback (innermost last):
    (no code object) at line 0
    File "./isis2json.py", line 84
          yield fields
              ^
  SyntaxError: invalid syntax

You are probably running Jython 2.2, an old version that is packaged
with several Linux distributions such as Debian and Ubuntu. To verify,
type::

  $ jython --version
  Jython 2.2.1 on java1.6.0_20

To fix, download and install Jython 2.5 or later from the Jython project
on SourceForge_.

.. _SourceForge: http://sourceforge.net/projects/jython/files/jython/

IMPORT ERROR: Jython 2.5 and Bruma.jar are required to read .mst files
-----------------------------------------------------------------------

Check if Jython 2.5 or later is installed::

  $ jython --version
  Jython 2.5.2

If it is not, se issue above. If it is, add the path to Bruma.jar to
the CLASSPATH environment variable, or pass it via the `jython -J-cp`
command line option when running isis2json.py, like this::

  $ jython -J-cp lib/jyson-1.0.1.jar:lib/Bruma.jar isis2json.py fixtures/LILACS1.mst


