# block ping

ping을 허용하면 ddos공격, 상대방이 OS를 알아내는 기초 정보를 제공할 수 있다.
ping에 응답하지 않는 방법이다.
```
# firewall-cmd --parmanent --add-icmp-block=echo-request
# firewall-cmd --reload
# firewall-cmd --list-all
```