# Mac 常用的命令

- 制作系统网盘的终端命令

```bash
sudo /Applications/Install\ macOS\ High\ Sierra.app/Contents/Resources/createinstallmedia --volume /Volumes/Sierra --applicationpath /Applications/Install\ macOS\ High\ Sierra.app --nointeraction
```

其中的**Sierra**是你的磁盘名称 可以改变

- 查找删除一个文件夹下的所有.DS_Store文件

```bash
find . -name .DS_Store -print0 | xargs -0 git rm -f --ignore-unmatch
```

- 允许任意来源

```bash
sudo spctl --master-disable
```

- 禁用SIP保护机制 进入恢复模式 执行

```bash
csrutil disable
```

- 开启三指拖动功能（将其他的手势的三指相关功能去掉）

```bash
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -bool true
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool true
```

- 修改Caps Lock 和Ctrl键盘的位置 (重启电脑会失效 所以需要每次启动时添加一个开机任务)

```bash
hidutil property --set '{"UserKeyMapping":[{"HIDKeyboardModifierMappingSrc":0x700000039,"HIDKeyboardModifierMappingDst":0x7000000E0},{"HIDKeyboardModifierMappingSrc":0x7000000E0,"HIDKeyboardModifierMappingDst":0x700000039}]}'
```

- 修改文件的操作权限 Linux 命令 chmod

> chmod是权限管理命令change the permissions mode of a file的缩写。
u代表所有者。
x代表执行权限。
'+' 表示增加权限。
chmod u+x file.sh 就表示对当前目录下的file.sh文件的所有者增加可执行权限

- 关闭电脑的镜像验证

> defaults write com.apple.frameworks.diskimages skip-verify -bool true
defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true

- 终端的常用快捷键

1. **将光标移动到行首** control + a  

2. **将光标移动到行未** control + e

3. **清除屏幕** control + l

4. **搜索以前使用命令** control + r

5. **清除当前行**   control + u

6. **清除至当前行尾**   control + k

7. **单词为单位移动**   opetion + 方向键 (iterm2上的热键会有冲突需要调下)

8. **移动到下一行** control + n

9. **移动到上一行** control + p