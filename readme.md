# LaTex Thesis Writing Template for NTUEE NCS Lab

## Main feature
Default image source folder: `./imgs/`.

### Style fast-switching
Fast style switching by commenting this line in `main.tex`
```
\def\useNCSStyle{1}
```

### NCS style title and caption format
The title and section headers are colored in blue. 

### NCS style citation/bibliography
The NCS styled citation and bibliography format. Please add your bibitems in `ref.bib`. 

### Colored denotation
The references of equations are colored in blue. The following commands supports NCS style color denoting with fast-switching.
```
\ncsred{text to red}
\ncsblue{text to blue}
```

## Quick start
The easiest method to start a latex project is editing on [Overleaf](https://www.overleaf.com). 
- The template [link](https://www.overleaf.com/read/psfhfxjdnbtf) for IEEE conference.
- The template [link](https://www.overleaf.com/read/cjhmcnpxjbgp) for NTU thesis writing.

But if you want to build the project at local, please follow the guideline:
1. Install [Latex](https://www.latex-project.org/get/) according to your system type.
2. Choose an editor. [VScode](https://code.visualstudio.com/) is recommended.
3. Install VScode [LaTex Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) extension.
4. Download this repo, open the corresponding project folder  (`NCS_Lab_IEEE_Conference` or `NCS_Lab_LaTeX_Thesis`), and click the `Build LaTex project` button.

## Welcome for contributions
There are still lots of missing stlyes. We appreciate your contributions. Please don't be hesitated to fork it and make pull requests.