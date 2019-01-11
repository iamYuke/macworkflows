
ZSH=$HOME/.oh-my-zsh

ZSH_THEME="ys"

plugins=(
  git
  z
  d
  zsh_stats #显示最近常用的命令行
  vscode
  # iterm2
  # sublime
  # textmate # mr可以创建 ruby 的框架项目，tm finename 可以用 textmate 打开指定文件
  osx #tab 增强，quick-look filename 可以直接预览文件，man-preview grep 可以生成 grep手册 的pdf 版本等
  autojump # zsh 和 autojump 的组合形成了 zsh 下最强悍的插件
  # zsh-syntax-highlighting #Linux命令高亮
  zsh-autosuggestions #补全神器
  last-working-dir #自动上次cd的位置
  # extract #解压文件 x filename 使用解压
  git-open #可以在你git项目下打开远程仓库浏览项目
)

source $ZSH/oh-my-zsh.sh

alias subl=\''/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl'\' #使用sublime打开文件

#自动定义的
[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh # autojump 和zsh组合的命令
setopt HIST_IGNORE_DUPS #消除重复记录
# 配置默认的vim编辑工具 当安装nvim后使用nvim
if type nvim > /dev/null 2>&1; then
      alias vim='nvim'
fi

# 自定义的git 配置相关的标签
alias gpl='git pull --rebase' #使用rebase 代替merge

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change. 应该放到最后一共.rvm 使用ssh
export PATH="$PATH:$HOME/.rvm/bin"