FROM nginx

COPY conf /etc/nginx
COPY cert /etc/nginx/cert

ENV USERNAME <username>
ENV PASSWORD <password>

ENV GITHUB https://$USERNAME:$PASSWORD@github.com/satisfeet

RUN apt-get update && apt-get install git -y

EXPOSE 80
EXPOSE 443

RUN git clone $GITHUB/jacana
RUN git clone $GITHUB/quetzal
