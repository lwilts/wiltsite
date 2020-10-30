FROM python:3.7-slim

# Copy local code to container image
ENV SITE_HOME /site
WORKDIR $SITE_HOME
COPY . ./

# Install dependencies.
RUN pip install Flask gunicorn

CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 --timeout 0 site:site
