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
2016+0 records in
2016+0 records out
2113929216 bytes transferred in 299.555220 secs (7056893 bytes/sec)
```

- USB를 추출합니다.
```bash
$ diskutil eject /dev/disk2
Disk /dev/disk2 ejected
```

- 최초 랜선으로 설치하면 이후 wifi 실행이 됩니다.
- Root 계정에서 아래 내용을 타이핑하여 한글을 설치하세요.
```
# apt-get update
# apt-get install fcitx-hangul
# apt-get install fcitx-lib*
# apt-get install fonts-nanum*
init 6

https://hack-cracker.tistory.com/206
```


### 필요한 소프트웨어 설치

```bash
$ sudo apt-get instal blender
$ sudo apt-get install libreoffice
$ sudo apt-get install krita
```
- vscode: https://medium.com/@calypsobronte/vs-code-in-kali-linux-2018-4-9e96e92d13ca
