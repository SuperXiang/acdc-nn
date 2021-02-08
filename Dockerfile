FROM gitlab.c3s.unito.it:5000/gbirolo/pydev
#FROM python:3.6-slim-buster

#python3 -m pip install --index-url https://test.pypi.org/simple/ --no-deps acdc-nn
COPY dist/acdc_nn-0.0.4-py3-none-any.whl /
RUN python3 -m pip install acdc_nn-0.0.4-py3-none-any.whl

ENTRYPOINT bash tests/test.sh