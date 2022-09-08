FROM artefact.skao.int/ska-tango-images-pytango-builder:9.3.28 AS buildenv

ENV POETRY_HOME=/opt/poetry

RUN apt-get update && apt-get install -y --no-install-recommends curl git && rm -rf /var/lib/apt/lists/*

RUN curl -sSL https://install.python-poetry.org | python -

COPY . ./
RUN ${POETRY_HOME}/bin/poetry export --without-hashes -o requirements.txt

FROM artefact.skao.int/ska-tango-images-pytango-runtime:9.3.16

# Remove files copied by ONBUILD command
RUN rm -r *

WORKDIR /install

COPY --from=buildenv /app/requirements.txt ./
RUN pip install --no-cache-dir --no-compile -r requirements.txt

COPY src/ /app
WORKDIR /app

