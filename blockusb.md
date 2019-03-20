# Block USB
Block Devices를 보는 명령어는 lsblk 명령어입니다. USB를 연결한 후 에 명령어를 타이핑하고 빼고 타이핑하면 차이점을 알 수 있습니다.
```
# lsblk
```

`/etc/modprobe.d`경로에 `usb-storage.conf` 파일을 만들어줍니다.
```
# vim /etc/modprobe.d/usb-storage.conf
```

파일 내용을 아래처럼 입력해줍니다.
```
install usb-storage /bin/true
```

재부팅합니다.
```
# reboot
```

한줄로 요약하면 다음과 같습니다.
```
$ su
# echo "install usb-storage /bin/true" > /etc/modprobe.d/usb-storage.conf && reboot
```

보안을 위해서 셋팅하는 옵션인만큼 root 암호 유출에 주의하세요. 
