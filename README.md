# plantilla-tesis-lcc


## Instrucciones
Para procesar estos archivos se requiere una distribución de latex y tener el paquete Pygments instalado (este se utiliza en el paquete `minted` para el coloreado de códigos de lenguajes de programación).

Para compilar el archivo en un pdf:

```shell
$ pdflatex -shell-escape main.tex
$ bibtex main
$ pdflatex -shell-escape main.tex
```
## Overleaf
Si sueles hackear tus documentos de LaTeX utilizando *Overleaf* puedes checar una versión "Read only" de la plantilla [aqui](https://www.overleaf.com/read/bxtpkdtrpyby).

## ShareLaTeX
Si sueles hackear tus documentos de LaTeX utilizando *ShareLaTeX* puedes checar una versión "Read only" de la plantilla [aqui](https://www.sharelatex.com/project/56c392f325a0fbe36aff8b97).
