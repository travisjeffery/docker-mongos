# Docker image for mongos

To pass in your mongos.conf do the following:

```
docker run -v /path/containing/your/mongosconf:/etc/mongos travisjeffery/mongos
```

And in your configuration make sure you set `/var/log/mongodb/mongos.log` as your log file.

## License

MIT
