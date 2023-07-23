# LaTex Thesis Writing Template for NTUEE NCS Lab

<div style="background-color:#FF7777;">
由於研教組釋出的文件常有異動，提交檔案時請自行隨時注意格式是否與最新版本相符。
</div>

## Main feature
Default image source folder: `./imgs/`.

### Style fast-switching
Fast style switching by commenting on this line in `main.tex`
```
\def\useNCSStyle{1}
```

### NCS style title and caption format
The title and section headers are colored in blue. 

### NCS style citation/bibliography
The NCS-styled citation and bibliography format. Please add your bibitems in `ref.bib`. 

### Colored denotation
The references of equations are colored in blue. The following commands support NCS style color denoting with fast-switching.
```
\ncsred{Something in red}
\ncsblue{Something in blue}
```

Mark for development 
```
\todomark{Something to todo}

\begin{tempsection}
    % Mark paragraphs as a temporary data
\end{tempsection}
```
Use `\eqref{}`, `\figref{}`, `\tbref{}`, and `\secref{}` to refer an equation or a section.

## Quick start
### Build on Overleaf
The easiest method to start a latex project is editing on [Overleaf](https://www.overleaf.com). 
- The template [link](https://www.overleaf.com/read/psfhfxjdnbtf) for IEEE conference.
- The template [link](https://www.overleaf.com/read/cjhmcnpxjbgp) for NTU thesis writing.

### Build at Local
But if you want to build the project locally, please follow the guidelines:
1. Install [Latex](https://www.latex-project.org/get/) according to your system type. ([TeXLive](https://tug.org/texlive/) is recommended, the reason is given [here](https://github.com/James-Yu/LaTeX-Workshop/wiki/Install#requirements))
2. Choose an editor. [VScode](https://code.visualstudio.com/) is recommended.
3. Install VScode [LaTex Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) extension.
4. Download this repo, open the corresponding project folder  (`NCS_Lab_IEEE_Conference` or `NCS_Lab_LaTeX_Thesis`), and click the `Build LaTex project` button.

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
git pull upstream master
```

## Zotero users
[Better Bibtex](https://retorque.re/zotero-better-bibtex/) is an add-on for Zotero, which provides better support for Bibtex. With this plugin, 
- You can customize the citation key for each document.
- It provides integration with vscode, which allows you to insert a citation in a drop-down menu (like the one in Microsoft plugin).
- Follow the [instruction](https://retorque.re/zotero-better-bibtex/installation/) to install the add-ons for Zotero. And you can download the extension for vscode [here](https://marketplace.visualstudio.com/items?itemName=bnavetta.zoterolatex).

Hints:
1. Right-click a collection or library in Zotero, and click `Export library...` to save the bib file to the workspace (You can further check the `Keep updated` button to allow Zotero to update the bib file automatically). 
2. Press `alt + z` in VScode to trigger the prompt to insert citations.

## Welcome for contributions
There are still lots of missing styles. We appreciate your contributions. Please don't hesitate to fork it and make pull requests.
