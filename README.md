# CDNagent

Dynamic configurable webservice for transfering media assets (e.g. ogg files).


## Development

For a local build a *Containerfile* for buildah is provided,  
this should work with *Docker* as well.

Using buildah/podman:

    # Build container image
    $ buildah -t istherepie/cdnagent:local . 

    # Run application
    podman run --name cdnweb -p 8080:8080 istherepie/cdnagent:local


Using docker:

    # Build container image
    $ docker build -t istherepie/cdnagent:local -f Containerfile . 

    # Run application
    docker run --name cdnweb -p 8080:8080 istherepie/cdnagent:local


#### Todo
Almost everything!