# Cxc-vim

My custom vim ide for python development:

![demo](/img/demo.png)

# Install

Run the following command to install:

    cd ~ && rm -rf cxc-vim && git clone git@github.com:XiaochenCui/cxc-vim.git && cd cxc-vim && bash install.sh

Run the following command to update after modify .vimrc:

    sudo bash install-plugins.sh


# Keymap

Use ngt to switch between tabs, e.g: 2gt for switch to 2nd tab.

## Customed hotkey

| 命令 | 说明 |
| :--: | :--: |
| sv \<filename\> | 打开一个文件，纵向分割布局（新文件会在当前文件下方界面打开）|
| vs \<filename\> | 横向分割布局（新文件会在当前文件右侧界面打开）|
| Ctrl-h | 切换到左侧的分割窗口 |
| Ctrl-j | 切换到下方的分割窗口 |
| Ctrl-l | 切换到右侧的分割窗口 |
| Ctrl-k | 切换到上方的分割窗口 |
| Ctrl-g | 跳转到函数定义或者声明 |
| -- | -- |
| F2 | 打开or关闭行号 |
| F3 | 打开or关闭复制支持 |
| F4 | 折叠or展开代码 |
| F5 | 打开or关闭目录树 |
| F7 | flake8 check |
| F8 | 打开or关闭函数列表（弃用、由于大项目性能问题以及函数跳转使用ycm更佳，去掉ctags支持） |
| -- | -- |
| Ctrl-t | 打开or关闭目录树（golang会有冲突，换用F5） |
| -- | -- |
| space | 折叠/展开代码 |
| -- | -- |
| Shift-i | 目录是否显示隐藏文件（NERDTree）。便于git开发，默认永远不显示.git。 |

## 跳转

| 命令 | 说明 |
| :--: | :--: |
| Ctrl-o | jump back to where you where before invoking the command 和 Ctrl-g、ctrl-i 配合使用 |
| ctrl-i | jump forward |
| ctrl-^ | 跳转到上一个编辑的文件 |
| -- | -- |
| zz | move current line to the middle of the screen |
| zt | move current line to the top of the screen |
| zb | move current line to the bottom of the screen |

## 搜索

| 命令 | 说明 |
| :--: | :--: |
| :/pattern\<CR\> | 搜索所有包含pattern的单词（向上搜索） |
| :?pattern\<CR\> | 搜索所有包含pattern的单词（向下搜索） |
| n | 朝同一方向搜索 |
| N | 反方向搜索 |
| :/ pattern\<CR\> | 单词前加空格，精确匹配 |
| :/^pattern\<CR\> | 搜索仅在行首出现 |
| :/pattern$\<CR\> | 搜索仅在行末出现 |
| \\^ \\$ | 特殊字符的搜索加反斜杠 |

## 删除

| 命令 | 说明 |
| :--: | :--: |
| x | 删除当前光标处的字符 |
| X | 删除光标左边的字符 |
| D | 删除从当前光标到本行末尾的字符 |
| J | 删除两行之间的换行符 (亦可用于合并两行）|
| dmove | 删除从当前光标到move所给位置的字符 |
| dd | 删除当前行 |
| :line**d** | 删除指定行 |
| :line,line**d** | 删除指定范围内的行 |


# 相关文档

1. [Building-Vim-from-source](https://github.com/Valloric/YouCompleteMe/wiki/Building-Vim-from-source)
2. [https://github.com/Valloric/YouCompleteMe](https://github.com/Valloric/YouCompleteMe)
3. [https://github.com/VundleVim/Vundle.vim](https://github.com/VundleVim/Vundle.vim)
4. [vim与Python真乃天作之合](http://codingpy.com/article/vim-and-python-match-in-heaven/)
5. [https://valloric.github.io/YouCompleteMe/](https://valloric.github.io/YouCompleteMe/)
