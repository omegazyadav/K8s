FROM python:3.7-alpine AS build

ARG WORKING_DIR=/home/app
RUN mkdir -p $WORKING_DIR/logs
WORKDIR $WORKING_DIR
COPY . $WORKING_DIR


FROM build
WORKDIR /opt
RUN adduser --home /opt --shell /bin/sh --disabled-password --gecos "App" app
USER app
COPY --chown=app:app --from=build  /home/app .
RUN pip install --user -r requirements.txt
EXPOSE 5000
CMD python app.py

