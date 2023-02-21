
# Table of Contents

1.  [python](#orgb97576c)
2.  [golang](#org5bc0b9f)
3.  [snippets](#org2bee91a)



<a id="orgb97576c"></a>

# python

    pip install 'python-lsp-server[all]' flake8

    `
    cat << EOF >> ~/.pydocstyle
      [pydocstyle]
        ignore =
          D107, # Missing docstring in __init__
          D101, # Missing docstring in public class
          D100, # Missing docstring in public module
          D102, # Missing docstring in public method
    EOF
    `


<a id="org5bc0b9f"></a>

# golang

    # 下载go: https://studygolang.com/dl
    export GOPATH=$HOME/.go && mkdir $HOME/.go
    export PATH=$PATH:$HOME/.go/bin

    # 配置七牛云
    export GOPROXY=https://goproxy.cn
    go install golang.org/x/tools/cmd/goimports@latest
    go install github.com/rogpeppe/godef@latest
    go install golang.org/x/tools/cmd/godoc@latest
    go install github.com/golangci/golangci-lint/cmd/golangci-lint@latest
    go install golang.org/x/tools/gopls@latest
    go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@v1.2
    go install golang.org/x/tools/gopls@latest
    go install golang.org/x/tools/go/analysis/passes/shadow/cmd/shadow@latest # 影子变量检查


<a id="org2bee91a"></a>

# snippets

    git clone git@github.com:lisper-inmove/yasnippet-snippets.git && cp -r yasnippet-snippets/snippets/* ~/.emacs.d/snippets
