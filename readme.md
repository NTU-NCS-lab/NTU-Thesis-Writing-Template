<!-- Badge for License -->
<div align="right">

  [![](https://img.shields.io/badge/docs-Wiki-F7D360.svg?logo=&style=flat-square)](https://github.com/NTU-NCS-lab/NTU-Thesis-Writing-Template/tree/main)
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


# LaTex Thesis Writing Template for NTUEE NCS Lab
This is a modification from [this](https://github.com/Hsins/NTU-Thesis-LaTeX-Template) work, the original author is [Hsins](https://github.com/Hsins).
If you are looking for IEEE conference template, please checkout out to [`IEEE-conference` branch](https://github.com/NTU-NCS-lab/NTU-Thesis-Writing-Template/tree/IEEE-conference).

<div style="background-color:#FF7777;">
    由於研教組釋出的文件常有異動，提交檔案時請自行隨時注意格式是否與最新版本相符。<br>
</div>

**注意事項**
- Template 中的口委審定書是[研教組釋出的版本](http://www.lib.ntu.edu.tw/node/103)，並非 NCS style，有需要的同學請參閱過去學長姐資料。<br>
- 如有其他實驗室同學想要使用這個模板，在 `main.tex` 中修改為 `ncsstyle  = false` 即可。
- Overleaf 上的版本更新會比較慢，最新版本以這個 repo 上的檔案為主。

## Main Features
- Default image source folder: `./imgs/`.
- Default bibliography file: `./back/references.bib`.

### Style Fast-Switching
Fast style switching by setting options while loading `ncs-thesis` in `main.tex`.
```latex
\documentclass[
    ncsstyle  = true,                  % ncsstyle = true | false
    watermark = false,                 % watermark = true | false
    doi       = false,                 % doi = true | false
    doctype   = draft,                 % doctype = draft | final
    print     = false,                 % print = false | true, switch colors to black
]{ncs-thesis}
```
1. Set `ncsstyle` to false or true to switch between the official style and the NCS style.
2. Set `doctype` to draft or final to switch between draft and final version. In draft version, several useful commands such as `\todomark{}` can be used to highlight the content that needs to be modified. And a `draft` annotation will be added to the cover page.
3. Set `print` to false or true to switch between color and black-white mode. In black-white mode, all colors will be converted to black.

#### NCS Style
1. NCS-styled title and caption format. The title and section headers are colored in blue. 
2. NCS-styled citation and bibliography format. Please add your bibitems in `back/references.bib`. 

### Useful Commands for Thesis Writing
<!-- The following commands support NCS style color denoting with fast-switching. -->
Mark for under-development
For more examples, please refer to `contents/template.tex`.
```latex
\todomark{Something to todo}

\begin{tempsection}
    % Mark paragraphs as a temporary data
\end{tempsection}
```
Use `\eqref{}`, `\figref{}`, `\tbref{}`, and `\secref{}` to refer an equation or a section, or use `\coloredref{text}{label}` to refer a customized label. Ex. 
```latex
\coloredref{Assumption}{LABEL_TO_YOUR_ASSUMPTION}
```

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

## Quick Start

Please use `xelatex` to compile this project.
Remember to update the options in `ntusetup.tex`.


### Build on Overleaf
The easiest method is to edit on Overleaf, please follow this [link](https://www.overleaf.com/read/cjhmcnpxjbgp) and make a copy by clicking `Menu` > `Make a copy`.

### Build Locally
If you want to work with Zotero, git, or other plugins, it is recommended to build your project locally.
1. Install [Latex](https://www.latex-project.org/get/) according to your system type. 
    - For Windows users, ([TeXLive](https://tug.org/texlive/) is recommended, the reason is given [here](https://github.com/James-Yu/LaTeX-Workshop/wiki/Install#requirements)). 
    <!-- In the alternative, the [IguanaTex](https://www.jonathanleroux.org/software/iguanatex/) -->
   - For Ubuntu users, you can install Latex via
        ```bash
        sudo apt-get update -y
        sudo apt install texlive-latex-extra -y
        sudo apt-get install -y dvipng
        ```
        P.S. The installation on a Linux system is much faster than on Windows.
2. Clone this repo by
    ```bash
    git clone --recurse-submodules https://github.com/NTU-NCS-lab/NTU-Thesis-Writing-Template.git
    ```
    If you forget to add `--recurse-submodules`, you can also use
    ```bash
    git submodule init
    git submodule update
    ```
    Open the root folder of this repo with VScode and click the `Build LaTex project` button.
3. Choose an editor. [VScode](https://code.visualstudio.com/) is recommended. The workspace configuration in `.vscode/settings.json` will set proper compiler. The document will be compiled when you press `ctrl+s` or you can also find the action buttons in `TEX(extension column) > commands`.
    + Install VScode [LaTex Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) extension.
        With LaTex Workshop, you can use the `Go to source` feature. 
        - From pdf to source, press `ctrl` + click somewhere interested in pdf.
        - From source to pdf, leave the cursor at somewhere interested in latex source, and then press `ctrl + alt + j`.
4. To integrate with your own git repo, please refer to [this section](#working-with-your-own-git-repo).
5. To integrate with Zotero, please refer to [this section](#zotero-users).

## Working with Your Own Git Repo
You can have your private git repo for your thesis by making clones.
And the newest features can be tracked by fetching from this repo. 
The following instructions came from [this solution](https://stackoverflow.com/questions/5181845/git-push-existing-repo-to-a-new-and-different-remote-repo-server).
1. Clone this repo by
    ```bash
    git clone --recurse-submodules https://github.com/NTU-NCS-lab/NTU-Thesis-Writing-Template.git
    ```
2. Create your repo on GitHub or any other git cloud. You should better to create a private repo.
3. Commit your changes and rename the original remote 
    ```bash
    git remote rename origin upstream
    ```
4. Set your repo as the remote
    ```bash
    git branch -M main
    git remote add origin URL_TO_YOUR_GITHUB_REPO
    ```
5. Push to your remote
    ```bash
    git push -u origin main
    ```
You can pull new features from the `upstream` by
```bash
git pull upstream main
```

## Zotero Users
[Better Bibtex](https://retorque.re/zotero-better-bibtex/) is an add-on for Zotero, which provides better support for Bibtex. With this plugin, 
- You can customize the citation key for each document.
- It provides integration with vscode, which allows you to insert a citation in a drop-down menu (like the one in Microsoft plugin).
- Follow the [instruction](https://retorque.re/zotero-better-bibtex/installation/) to install the add-ons for Zotero. And you can download the extension for vscode [here](https://marketplace.visualstudio.com/items?itemName=bnavetta.zoterolatex).
- [Research Helper](https://github.com/sciyen/ResearchHelper) is a plugin for draw.io, you can organize your references on their [customized drawio](https://sciyen.github.io/drawio/src/main/webapp/index.html?p=zotero.js), which provides an integration of Zotero and this project.

Hints:
1. Right-click a collection or library in Zotero, and click `Export library...` to save the bib file to the workspace (You can further check the `Keep updated` button to allow Zotero to update the bib file automatically). 
2. Press `alt + z` in VScode to trigger the prompt to insert citations.


## Trouble Shooting
- The compiler for `NCS_Lab_LaTeX_Thesis` and `NCS_Lab_IEEE_Conference` are different, which is handled automatically by the settings in folder `.vscode` if you use VScode to compile the document. 
    To enable this magic, you should open the folder (`NCS_Lab_LaTeX_Thesis` or `NCS_Lab_IEEE_Conference`) directly via VScode, instead of the root of this repo.
  

## Welcome for contributions
There are still lots of missing styles, templates for new users, and ambiguous or unclear documents. We appreciate your contributions. Please don't hesitate to fork it and make pull requests.


## License

Licensed under the MIT License, Copyright © 2017-present Hsins.
