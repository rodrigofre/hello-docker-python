# hello-docker-python

Build the image:

````bash
docker build -t hello
`````

Run:

````bash
docker run --name hellocontainer -p 80:80 hello
````