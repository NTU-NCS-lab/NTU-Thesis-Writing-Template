<!-- Badge for License -->
<div align="right">

  [![](https://img.shields.io/badge/docs-Wiki-F7D360.svg?logo=&style=flat-square)](https://hsins.me/NTU-Thesis/)
  [![](https://img.shields.io/github/license/Hsins/NTU-Thesis.svg?style=flat-square)](./LICENSE)

</div>

<!-- Logo -->
<p align="center">
  <img src="https://i.imgur.com/x2M158J.png" alt="NTU Thesis" height="150px">
</p>

</div>

<!-- Title and Description -->
<div align="center">

# NTU Thesis

📖 _Unofficial LaTeX and Word templates for your master/doctor thesis at National Taiwan University._

![](https://img.shields.io/badge/LaTeX%202%CE%B5-3.14159265-blueviolet?logo=latex&style=flat-square)
![](https://img.shields.io/badge/Platform-Windows%20%7C%20macOS%20%7C%20Linux-lightgrey.svg?style=flat-square)
<br>
[![](https://img.shields.io/badge/GitHub%20Actions%20-Open%20as%20Template-2088ff?logo=github-actions&style=flat-square)](https://github.com/Hsins/NTU-Thesis-CI/)
[![](https://img.shields.io/badge/Overleaf%20-Open%20as%20Template-46a247?logo=overleaf&style=flat-square)](https://www.overleaf.com/latex/templates/national-taiwan-university-thesis-template/hvfybyfxgztt)

</div>

## NTU NCS Lab Latex Thesis Template
This is a modification from [this](https://github.com/Hsins/NTU-Thesis-LaTeX-Template) work, the original author is [Hsins](https://github.com/Hsins).

## Structures

```
├── back
│   ├── appendix-*.tex              // 附錄
│   ├── references.bib              // 參考文獻
│   └── ...
├── contents
│   ├── chapter-*.tex               // 論文內容
│   └── ...
├── figures
│   └── ...
├── fonts
│   ├── chinese
│   │   ├── BiauKai.ttf             // 標楷體
│   │   ├── Arphic-*.ttf            // 文鼎字體
│   │   ├── MOE-*.ttf               // 教育部字體
│   │   ├── WHZ-*.ttf               // 王漢宗字體
│   │   ├── cwTeX-*.ttf             // cwTeX 字體
│   │   └── ...
│   └── english
│       ├── Times New Roman-*.ttf   // Times New Roman 字體
│       └── ...
├── front
│   ├── abstract.tex                // 摘要
│   ├── acknowledgement.tex         // 致謝
│   └── denotation.tex              // 符號列表
├── main.tex                        // 主文件
├── ntusetup.tex                    // 模板設定
├── ntuthesis.cls                   // 模板文件
└── ...
```

## Quick start
Please use `xelatex` to compile this project.

### Build at local
#### Method 1
Please run `biber main` to generate `main.bbl` first and then run `xelatex main` to generate pdf file.

#### Method 2
1. Open your VScode, press `ctrl+shift+P`.
2. Type `settings`, and select `Open User Settings`.
3. Go to the last json object, add a comma to the last object, and add following lines:
    ```json=
    "latex-workshop.latex.recipes": [
      {
        "name": "xelatex+biber",
        "tools": [
          "xelatex",
          "biber",
          "xelatex"
        ]
      },
      {
        "name": "xelatex",
        "tools": [
          "xelatex"
        ]
      },
      {
        "name": "pdflatex+biber",
        "tools": [
          "pdflatex",
          "biber",
          "pdflatex"
        ]
      },
      {
        "name": "pdflatex",
        "tools": [
          "pdflatex"
        ]
      },
      {
        "name": "biber only",
        "tools": [
          "biber"
        ]
      }
    ],
    "latex-workshop.latex.tools": [
      {
        "name": "biber",
        "command": "biber",
        "args": [
          "%DOCFILE%"
        ]
      },
      {
        "name": "pdflatex",
        "command": "pdflatex",
        "args": [
          "-synctex=1",
          "-interaction=nonstopmode",
          "-file-line-error",
          "%DOC%"
        ],
        "env": {}
      },
      {
        "name": "bibtex",
        "command": "bibtex",
        "args": [
          "%DOCFILE%"
        ],
        "env": {}
      },
      {
        "name": "xelatex",
        "command": "xelatex",
        "args": [
          "%DOC%"
        ],
        "env": {}
      },
    ],
    ```
4. This will add commands to your Latex button, and then you should be able to compile the project by clicking `build` button. You can aslo find the buttons at ` TEX(extension column) > commands > Build LaTex project`

## License

Licensed under the MIT License, Copyright © 2017-present Hsins.
