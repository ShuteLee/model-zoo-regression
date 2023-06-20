## Agent deploy
```
docker run -itd --privileged --name jenkins-agentxxx -v volume_xxx:volume_xxx -v /dev/:/dev/ -e DEVICES=XX jenkins-agent:v1 -jnlpUrl xxx -secret xxx -workDir "volume_xxx"
```
> NOTION: workDir should mapping to the same path in the host, with different paths of different agents.