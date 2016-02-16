# plantilla-tesis-lcc

Para procesar estos archivos se requiere una distribución de latex y tener el paquete Pygments instalado (este se utiliza en el paquete `minted` para el coloreado de códigos de lenguajes de programación).

Para compilar el archivo en un pdf:

```shell
$ pdflatex -shell-escape main.tex
$ bibtex main
$ pdflatex -shell-escape main.tex
```
