# LaTex Thesis Writing Template for NTUEE NCS Lab

<div style="background-color:#FF7777;">
    由於研教組釋出的文件常有異動，提交檔案時請自行隨時注意格式是否與最新版本相符。<br>
</div>

**注意事項**
- Template 中的口委審定書是[研教組釋出的版本](http://www.lib.ntu.edu.tw/node/103)，並非 NCS style，有需要的同學請參閱過去學長姐資料。<br>
- 如有其他實驗室同學想要使用這個模板，在 `main.tex` 中修改為 `ncsstyle  = false` 即可。
- Overleaf 上的版本更新會比較慢，最新版本以這個 repo 上的檔案為主。

## Main feature
- Default image source folder: `./imgs/`.
- Default bibliography file: `./back/references.bib`.

### Style fast-switching
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
#### NCS style
1. NCS-styled title and caption format. The title and section headers are colored in blue. 
2. NCS-styled citation and bibliography format. Please add your bibitems in `back/references.bib`. 

### Useful Commands for Thesis Writing
<!-- The following commands support NCS style color denoting with fast-switching. -->
Mark for under-development
For more examples, please refer to `contents/template.tex`.
```
\todomark{Something to todo}

\begin{tempsection}
    % Mark paragraphs as a temporary data
\end{tempsection}
```
Use `\eqref{}`, `\figref{}`, `\tbref{}`, and `\secref{}` to refer an equation or a section, or use `\coloredref{text}{label}` to refer a customized label. Ex. 
```
\coloredref{Assumption}{LABEL_TO_YOUR_ASSUMPTION}
```


## Quick start

### Build on Overleaf
The easiest method to start a latex project is editing on [Overleaf](https://www.overleaf.com). 
- The template [link](https://www.overleaf.com/read/psfhfxjdnbtf) for IEEE conference.
- The template [link](https://www.overleaf.com/read/cjhmcnpxjbgp) for NTU thesis writing.

### Build Locally
If you want to work with Zotero, git, or other plugins, it is recommended to build your project locally.
1. Install [Latex](https://www.latex-project.org/get/) according to your system type. ([TeXLive](https://tug.org/texlive/) is recommended, the reason is given [here](https://github.com/James-Yu/LaTeX-Workshop/wiki/Install#requirements)). 
    <!-- In the alternative, the [IguanaTex](https://www.jonathanleroux.org/software/iguanatex/) -->
   - For Ubuntu users, you can install Latex via
     ```bash
     sudo apt-get update -y
     sudo apt install texlive-latex-extra -y
     sudo apt-get install -y dvipng
     ```
     P.S. The installation on a Linux system is much faster than on Windows.
2. Choose an editor. [VScode](https://code.visualstudio.com/) is recommended.
3. Install VScode [LaTex Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) extension.
    With LaTex Workshop, you can use the `Go to source` feature. 
   - From pdf to source, press `ctrl` + click somewhere interested in pdf.
   - From source to pdf, leave the cursor at somewhere interested in latex source, and then press `ctrl + alt + j`.
5. Download this repo, open the corresponding project folder  (`NCS_Lab_IEEE_Conference` or `NCS_Lab_LaTeX_Thesis`), and click the `Build LaTex project` button.

### Working with Your Own Git Repo
You can have your private git repo for your thesis by making clones.
And the newest features can be tracked by fetching from this repo. 
The following instructions came from [this solution](https://stackoverflow.com/questions/5181845/git-push-existing-repo-to-a-new-and-different-remote-repo-server).
1. Clone this repo by
    ```bash
    git clone https://github.com/NTU-NCS-lab/NTU-Thesis-Writing-Template.git
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

## Zotero users
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
