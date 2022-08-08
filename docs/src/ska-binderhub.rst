
Connecting to SDP via BinderHub
===============================

The System Team set up BinderHub both on the STFC k8s cluster
and the Data Processing (DP) Platform. We use this service to work
with the notebooks provided in this repository.

The following link takes you to the DP Platform's BinderHub
service:

    https://sdhp.stfc.skao.int/binderhub/

You will have to sign in with your SKA credentials
(<jira-username>@ad.skatelescope.org and your JIRA password).

.. image:: https://developer.skao.int/en/latest/_images/binderhub-home.png
    :alt: BunderHub starting page

You can also go to the BiderHub pages of the SDP Notebooks repository,
directly by following:

    https://sdhp.stfc.skao.int/binderhub/v2/gl/ska-telescope%2Fsdp%2Fska-sdp-notebooks/HEAD)

If you, followed the default SDH&P BinderHub page, then
under "GitHub repository name or URL", change the drop
down box to "GitLab" and set the repository to
https://gitlab.com/ska-telescope/sdp/ska-sdp-notebooks

If you want to share the built interface with others, make sure
you copy the URL under "Copy the URL below and share your Binder with others".
Once JupyterLab has launched, you won't be able to access this.

Click Launch and wait for it to build.

JupyterLab will automatically open with the available notebooks
shown in the left menubar. You may create your own as well.
Please make sure you read the list of
`Policies <https://developer.skao.int/en/latest/tools/binderhub.html#policies>`_
for using BinderHub to understand how your work is retained.
Your changes will not be committed to the GitLab repository.