FROM python:3-alpine
ENV PYTHONPATH /app
ENV PATH /bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/app/bin
EXPOSE 8192
COPY . /app
WORKDIR /app
RUN pip install -r deploy-requirements.txt
CMD ["gesund"]
