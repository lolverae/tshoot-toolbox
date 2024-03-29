## Description
A container image based on Ubuntu containing multiple tools for container testing and troubleshooting. 

This is intended to be used as a helper for debugging Kubernetes applications either using *Kubectl debug* or running it as a pod.

## Tools included
* curl
* dig
* nslookup
* ping
* traceroute
* netstat
* telnet 
* tcpdump
* netcat 

# How to use this image? 

### Kubernetes:

Create single pod:
```
$ kubectl run tshoot-box --image=lolverae/tshoot-toolbox
```
Using kubectl debug:
```
$ kubectl debug -it tshoot-box --image=lolverae/tshoot-toolbox --target=<target image>
```
## Notes
As the entrypoint for this image I chose to add an infinite wait command, this is because normally, if a container does not run a daemon/service, then it will stop and the container will exit, so the wait command is a resource cheap option to keep it alive. 
