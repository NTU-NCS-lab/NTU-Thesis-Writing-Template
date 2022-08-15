# IEEE Thesis Writing Template for NTUEE NCS Lab
This template is also available on [Overleaf](https://www.overleaf.com/project), please follow this [link](https://www.overleaf.com/read/psfhfxjdnbtf) and make a copy from it.

## Main feature
1. The citation and bibliography format.
2. Fast style switching by commenting this line in `main.tex`
    ```
    \def\useNCSStyle{1}
    ```
3. Default image source folder: `./imgs/`
4. Please add your bibitems in `ref.bib`


## Quick start
Please use `pdflatex` to compile this project.

The easiest method to start a latex project is editing on [Overleaf](https://www.overleaf.com/read/psfhfxjdnbtf). 

### Build at local
Please follow the [instructions](https://github.com/NTU-NCS-lab/ThesisWritingTemplate#quick-start) to setup the environments.

#### Method 1
Please run `biber main` to generate `main.bbl` first and then run `pdflatex main` to generate pdf file.

#### Method 2
1. Open your VScode, press `ctrl+shift+P`.
2. Type `settings`, and select `Open User Settings`.
3. Go to the last json object, add a comma to the last object, and add following lines:
    ```json=
    "latex-workshop.latex.recipes": [
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

## Switching to specific conference template
To replace the basis template, please copy the `.cls` to the same folder of `main.tex`, and modify the class loading script in `ncs-ieee-conference.cls`. For example, if you want to use `example-style.cls` instead of the default IEEE conference style. Replace the line in `ncs-ieee-conference.cls`
```
\LoadClass[conference]{IEEEtran}
```
with
```
\LoadClass{example-style}
```