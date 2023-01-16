# IEEE Thesis Writing Template for NTUEE NCS Lab
This template is also available on [Overleaf](https://www.overleaf.com/project), please follow this [link](https://www.overleaf.com/read/psfhfxjdnbtf) and make a copy from it.

## Quick start
Please use `pdflatex` to compile this project.

The easiest method to start a latex project is editing on [Overleaf](https://www.overleaf.com/read/psfhfxjdnbtf). 

### Build at local
Please follow the [instructions](https://github.com/NTU-NCS-lab/ThesisWritingTemplate#quick-start) to setup the environments.

#### Method 1
Please run `biber main` to generate `main.bbl` first and then run `pdflatex main` to generate pdf file.

#### Method 2
1. Open this folder with VScode (Not the repo root folder).
2. The workspace configuration in `.vscode/settings.json` will set proper compiler. The document will be compiled when you press `ctrl+s` or you can also find the action buttons in `TEX(extension column) > commands`.

## Switching to specific conference template
To replace the basis template, please copy the `.cls` to the same folder of `main.tex`, and modify the class loading script in `ncs-ieee-conference.cls`. For example, if you want to use `example-style.cls` instead of the default IEEE conference style. Replace the line in `ncs-ieee-conference.cls`
```
\LoadClass[conference]{IEEEtran}
```
with
```
\LoadClass{example-style}
```