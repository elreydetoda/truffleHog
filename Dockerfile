FROM python:3
RUN pip install gitdb2==3.0.0 trufflehog
WORKDIR /proj
RUN adduser --gecos '' --disabled-password --disabled-login trufflehog
USER trufflehog
ENTRYPOINT [ "trufflehog" ]
CMD [ "-h" ]
