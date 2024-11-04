ARG PYTHON_VERSION="3.11.9"
FROM python:${PYTHON_VERSION}

WORKDIR /app/
COPY ./app.py /app/

ARG GRADIO_V="5.4.0"
ENV GRADIO_VERSION=${GRADIO_V}

RUN python3 -m pip cache purge
RUN python3 -m pip install gradio==${GRADIO_VERSION}

ENTRYPOINT ["python3"]
CMD ["/app/app.py"]
