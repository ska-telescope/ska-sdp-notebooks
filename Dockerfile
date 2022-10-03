FROM artefact.skao.int/ska-tango-images-pytango-builder:9.3.32 as buildenv
FROM artefact.skao.int/ska-tango-images-pytango-runtime:9.3.19

USER root

RUN poetry export -o requirements.txt
RUN pip install -r requirements.txt

USER tango
