FROM artefact.skao.int/ska-tango-images-pytango-builder:9.3.28 AS buildenv

COPY . ./
RUN poetry export --without-hashes -o requirements.txt
RUN poetry build

FROM artefact.skao.int/ska-tango-images-pytango-runtime:9.3.16

# Remove files copied by ONBUILD command
RUN rm -r *

USER root
WORKDIR /install

COPY --from=buildenv /app/requirements.txt /app/dist/*.whl ./
RUN pip install --no-cache-dir --no-compile -r requirements.txt *.whl

WORKDIR /app

