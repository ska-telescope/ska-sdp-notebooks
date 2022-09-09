FROM artefact.skao.int/ska-tango-images-pytango-builder:9.3.28 AS buildenv

ENV POETRY_HOME=/opt/poetry
COPY . ./

RUN apt-get update && \
    apt-get install -y --no-install-recommends curl && \
    rm -rf /var/lib/apt/lists/* && \
    curl -sSL https://install.python-poetry.org | python - && \
    ${POETRY_HOME}/bin/poetry export --without-hashes -o requirements.txt

FROM artefact.skao.int/ska-tango-images-pytango-runtime:9.3.16

# Remove files copied by ONBUILD command
RUN rm -r *

WORKDIR /install

COPY --from=buildenv /app/requirements.txt ./

RUN apt-get update && \
    apt-get install -y --no-install-recommends git && \
    rm -rf /var/lib/apt/lists/* && \
    pip install --no-cache-dir --no-compile -r requirements.txt

COPY src/ /app
WORKDIR /app

