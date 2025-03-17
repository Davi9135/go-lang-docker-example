FROM golang:latest as builder
WORKDIR /app
COPY . .
RUN CGO_ENABLED=0 go build -o server main.go

# Final Stage
FROM scratch
COPY --from=builder /app/server /server
CMD ["./server"]