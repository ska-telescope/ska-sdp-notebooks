
SDP Jupyter Notebooks
=====================

Currently, we provide two notebooks that serve as tutorials on how to run SDP. The first explains
how to run the `ska-sdp CLI <https://developer.skao.int/projects/ska-sdp-config/en/latest/cli.html>`_,
and the second explains how to use
`pytango <https://developer.skao.int/projects/ska-sdp-integration/en/latest/running/standalone.html#accessing-the-tango-interface>`_.


ska-sdp CLI notebook
--------------------

The source notebook is called `ska-sdp-cli-tutorial.ipynb <https://gitlab.com/ska-telescope/sdp/ska-sdp-notebooks/-/blob/main/src/ska-sdp-cli-tutorial.ipynb>`_.
It will teach you the basics of using the command line interface called *ska-sdp*,
which was developed to allow developers to directly interact with the
`Configuration Database <https://developer.skao.int/projects/ska-sdp-integration/en/latest/design/components.html>`_,
and control SDP from there. *ska-sdp* is directly available from the
`SDP Console pod <https://developer.skao.int/projects/ska-sdp-integration/en/latest/design/components.html>`_ as well.


PyTango notebook
----------------

The source notebook is called `ska-sdp-tango-tutorial.ipynb <https://gitlab.com/ska-telescope/sdp/ska-sdp-notebooks/-/blob/main/src/ska-sdp-tango-tutorial.ipynb>`_.
It takes you through the steps of how to connect to an SDP subarray device,
how to configure it, run a scan, etc. If you are familiar with using SDP
through the itango console, the steps in this notebook will not be new for you.


ska-sdp vis-receive low notebook
--------------------------------

The source notebook is called `ska-sdp-vis-receive-low-example.ipynb <https://gitlab.com/ska-telescope/sdp/ska-sdp-notebooks/-/blob/main/src/ska-sdp-vis-receive-low-example.ipynb.ipynb>`_.
It will take you through the steps of how to deploy a vis-receive processing script
connected to an SDP subarray device, run a processor, and emulate the sending of LOW data
using the CBF Emulator.
