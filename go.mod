module github.com/willfantom/sui

go 1.14

require (
	github.com/containous/traefik/v2 v2.2.1
	github.com/docker/docker v1.4.2-0.20191101170500-ac7306503d23
	github.com/fsouza/go-dockerclient v1.6.5
	github.com/gorilla/mux v1.7.4
	github.com/sirupsen/logrus v1.6.0
	golang.org/x/crypto v0.0.0-20200510223506-06a226fb4e37 // indirect
	golang.org/x/net v0.0.0-20200506145744-7e3656a0809f // indirect
)

replace (
	github.com/containous/traefik/v2 v2.2.1 => github.com/traefik/traefik/v2 v2.2.1

	github.com/Azure/go-autorest => github.com/Azure/go-autorest v12.4.1+incompatible
	github.com/abbot/go-http-auth => github.com/containous/go-http-auth v0.4.1-0.20180112153951-65b0cdae8d7f
	github.com/docker/docker => github.com/docker/engine v1.4.2-0.20191113042239-ea84732a7725
	github.com/go-check/check => github.com/containous/check v0.0.0-20170915194414-ca0bf163426a
	github.com/gorilla/mux => github.com/containous/mux v0.0.0-20181024131434-c33f32e26898
	github.com/mailgun/minheap => github.com/containous/minheap v0.0.0-20190809180810-6e71eb837595
	github.com/mailgun/multibuf => github.com/containous/multibuf v0.0.0-20190809014333-8b6c9a7e6bba
	github.com/rancher/go-rancher-metadata => github.com/containous/go-rancher-metadata v0.0.0-20190402144056-c6a65f8b7a28
)
