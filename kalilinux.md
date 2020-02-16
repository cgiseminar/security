### Download
- https://www.kali.org/downloads/

### .ISO to USB(macOS)

- 다운받은 .iso파일을 .img로 바꾸어줘야하는 작업이 필요합니다.

```bash
$ hdiutil convert -format UDRW -o ~/Downloads/kali-linux-2020.1-installer-amd64.img ~/Downloads/kali-linux-2020.1-installer-amd64.iso
```

- 변환된 파일은 .dmg 확장자가 붙습니다. mv명령어를 통해서 제거합니다.

```bash
$ mv kali-linux-2020.1-installer-amd64.img.dmg kali-linux-2020.1-installer-amd64.img
```

- USB의 이름을 확인합니다.
```bash
$ diskutil list
```

- 제 컴퓨터에서는 disk2 로 출력되었습니다. 컴퓨터마다 다를 수 있습니다.

```bash
sudo umount /dev/disk2
$ sudo diskutil unmountDisk disk2 # 만약 Resource busy가 뜨면 타이핑해주세요.
$ sudo dd if=~/Downloads/kali-linux-2020.1-installer-amd64.img of=/dev/rdisk2 bs=1m
```

- 잘 진행이 되면 아래 메시지를 출력후 종료됩니다.
```bash
8961+1 records in
8961+1 records out
9396461568 bytes transferred in 706.427948 secs (13301373 bytes/sec)
```

- USB를 추출합니다.
```bash
$ diskutil eject /dev/disk2
Disk /dev/disk2 ejected
```
