all: 2.0.0s2.10 1.4.1 1.5.2 1.6.2 2.0.0

clean:
	rm -rf target/graphframes_*.zip

1.4.1 1.5.2 1.6.2 2.0.0:
	build/sbt -Dspark.version=$@ spDist

2.0.0s2.10:
	build/sbt -Dspark.version=2.0.0 -Dscala.version=2.10.4 spDist assembly test