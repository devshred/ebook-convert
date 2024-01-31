# Convert an e-book from one format to another with [Calibre](https://calibre-ebook.com/)

```shell
docker run -it --rm -v ${PWD}:/data ebook-convert {source-file} {target-file}
```

* {source-file} must be in current directory.
* The output e-book format is guessed from the file extension of {target-file}.