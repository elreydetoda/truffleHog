FROM python:3
RUN pip install gitdb2==3.0.0 trufflehog
WORKDIR /proj
ENTRYPOINT [ "trufflehog" ]
CMD [ "-h" ]
