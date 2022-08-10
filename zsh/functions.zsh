proxy() {
  export http_proxy=http://127.0.0.1:1087; 
  export https_proxy=http://127.0.0.1:1087;
  export no_proxy="localhost,*.bilibili.co";
}

noproxy() {
  unset http_proxy https_proxy no_proxy
}

gi() { curl -sLw n "https://www.gitignore.io/api/$@" ;}
