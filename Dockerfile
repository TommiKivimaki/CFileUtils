FROM swift:5.0

WORKDIR /app
COPY . ./

CMD swift package clean
CMD swift test
