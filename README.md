# wakatime

    下载: https://github.com/wakatime/wakatime-cli/releases
    解压之后安装到PATH

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

# golang

    下载: https://studygolang.com/dl
    go install golang.org/x/tools/cmd/goimports@latest
    go install github.com/rogpeppe/godef@latest
    go install golang.org/x/tools/cmd/godoc@latest
    go install github.com/golangci/golangci-lint/cmd/golangci-lint@latest
    go install golang.org/x/tools/gopls@latest
    go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@v1.2
    go install golang.org/x/tools/gopls@latest

# snippets

    git clone git@github.com:lisper-inmove/yasnippet-snippets.git && copy yasnippet-snippets/snippets/* ~/.emacs.d/snippets

# treemacs

    git status --ignored: option `ignored' takes no value
    git的某个版本(至少2.9.5)开始 =git status --ignored= 不支持参数了.treemacs需要在treemacs-git-status.py把--ignored后面的参数去掉
