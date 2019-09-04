FROM indicoio/alpine:3.9.3

LABEL author="Chris Lee"
LABEL email="chris@indico.io"

ARG EXTRAS="[test]"
ENV PATH=/jira/bin:${PATH}

COPY . /jira
WORKDIR /jira

RUN pip3 install --find-links=/root/.cache/pip/wheels -e .${EXTRAS} && \
    python3 setup.py develop --no-deps

CMD ["bash"]
