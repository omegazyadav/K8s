FROM python:3.7-alpine

ARG WORKING_DIR=/home/app

RUN adduser --home /app --shell /bin/sh --disabled-password --gecos "App" app
RUN mkdir -p $WORKING_DIR/logs && chown -R app:app $WORKING_DIR
USER app

WORKDIR $WORKING_DIR

COPY --chown=app:app . $WORKING_DIR

RUN pip install --user -r requirements.txt

EXPOSE 5000
CMD python app.py
