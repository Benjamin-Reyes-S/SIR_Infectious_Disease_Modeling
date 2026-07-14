FROM python:3.12-slim

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    PIP_NO_CACHE_DIR=1

WORKDIR /workspace

RUN python -m pip install --upgrade pip setuptools wheel \
    && python -m pip install \
        notebook \
        numpy \
        matplotlib \
        ipympl==0.10.0 \
        ipywidgets==8.1.8 \
        scipy==1.18.0 \
        IPython==9.13.0 \
    && python -m pip check

EXPOSE 8888

CMD ["jupyter", "notebook", \
     "--ip=0.0.0.0", \
     "--port=8888", \
     "--no-browser", \
     "--allow-root", \
     "--ServerApp.root_dir=/workspace"]
