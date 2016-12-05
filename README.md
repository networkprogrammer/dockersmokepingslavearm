# dockersmokepingslavearm
Dockerfile for raspberry pi's

docker build -t smokeping .

docker run -itd --env-file=environment --name=smokepingslave --restart=always smokeping

## Cron
m h  dom mon dow   command
0 */2 * * * docker restart smokepingslave
