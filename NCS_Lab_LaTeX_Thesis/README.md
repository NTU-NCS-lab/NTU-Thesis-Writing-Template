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
[![](https://img.shields.io/badge/GitHub%20Actions%20-Open%20as%20Template-2088ff?logo=github-actions&style=flat-square)](https://github.com/NTU-NCS-lab/ThesisWritingTemplate)
[![](https://img.shields.io/badge/Overleaf%20-Open%20as%20Template-46a247?logo=overleaf&style=flat-square)](https://www.overleaf.com/read/cjhmcnpxjbgp)

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

### Overleaf
The easiest method is to edit on Overleaf, please follow this [link](https://www.overleaf.com/read/cjhmcnpxjbgp) and make a copy from it.

### Build at local
Please follow the [instructions](https://github.com/NTU-NCS-lab/ThesisWritingTemplate#quick-start) to setup the environments.

#### Method 1
Please run `biber main` to generate `main.bbl` first and then run `xelatex main` to generate pdf file.

#### Method 2
1. Open this folder with VScode (Not the repo root folder).
2. The workspace configuration in `.vscode/settings.json` will set proper compiler. The document will be compiled when you press `ctrl+s` or you can also find the action buttons in `TEX(extension column) > commands`.

## License

Licensed under the MIT License, Copyright © 2017-present Hsins.
