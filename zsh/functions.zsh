proxy() {
  local proxy_url="http://127.0.0.1:7890"
  export http_proxy=$proxy_url
  export https_proxy=$proxy_url
  export no_proxy="127.0.0.1,168.*,192.*,221.*,*.bilibili.co,*.htsc,*.htsc.com,*.htsc.com.cn,localhost"
}

noproxy() {
  unset http_proxy https_proxy no_proxy
}

gi() {
  curl -sLw n "https://www.gitignore.io/api/$@"
}
