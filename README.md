
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

# c++

    write to ~/.clangd

    CompileFlags:
      Add: [-std=c++20]

    write to ~/.clang-format

      BasedOnStyle: Google
      IndentWidth: 4
      TabWidth: 4
      ColumnLimit: 100
      AllowShortFunctionsOnASingleLine: Inline
      DerivePointerAlignment: false
      PointerAlignment: Left
      UseTab: Never

      BreakBeforeBraces: Custom # 使用自定义风格的大括号排列
      BraceWrapping:
        AfterCaseLabel: false # case语句左大括号不换行
        AfterEnum: false
        AfterFunction: true # 函数大括号另起一行
        AfterStruct: false
        AfterUnion: false
        AfterExternBlock: false # extern 的左大括号不换行
        BeforeElse: true # else另起一行
        BeforeWhile: false # do..while中while不另起一行
        AfterControlStatement: MultiLine # 仅在控制语句有多行判断条件的情况下为左大括号换行
        SplitEmptyFunction: false

      AllowShortIfStatementsOnASingleLine: false # 不允许将if控制语句和语句放在同一行
      IndentCaseLabels: true # 对case标签进行额外的缩进。
      BreakBeforeBinaryOperators: NonAssignment # 在除了赋值运算符（如"="、"+="、"-="等）之外的二元运算符(如 &&)之前换行。
      SortIncludes: Never # 不要排序#include
      SpaceAroundPointerQualifiers: Both # 保证指针限定符(const)左右都有空格
      PointerAlignment: Right # 指针符靠右
      # QualifierAlignment: Right # 限定符(const)靠右，根据官方文档介绍该操作有风险，不强制规定
      # QualifierOrder: ['static', 'inline', 'type', 'const', 'volatile' ] # 限定符顺序，同上，不强制规定

      AlignConsecutiveMacros: Consecutive # 对齐define宏,不跨空行不跨注释
      AlignConsecutiveBitFields: Consecutive # 对齐位域,不跨空行不跨注释
      AlignConsecutiveAssignments: Consecutive # 对齐赋值,不跨空行不跨注释
      BitFieldColonSpacing: None # 位域前没有空格
      AlignEscapedNewlines: Left # 分行符靠左对齐
