# plantilla-tesis-lcc

Esta plantilla fué conjurada originalmente por Julio Waissman, todo el crédito va para él. Tiene algunas modificaciones y si algo no jala es por el manoseo que le metí al código.

Se agradece todo tipo de aportaciones para hacer que esta plantilla sea cada vez mas perrona. Sin embargo, debido a que es la "plantilla oficial" para hacer tesis de LCC, no se aceptarán modificaciones que cambien el estilo o medidas del documento. Pero si, por ejemplo, agregar paquetes útiles, mejorar el contenido o agregar contenido nuevo.

Algunas cosas que hacen falta son:
- Revisar que las cosas funcionan correctamente en todos los sistemas operativos (Linux jala).
- Agregar paquetes útiles como TikZ.
- Agregar contenido sobre como hacer gráficas, grafos, diagramas, etc.
- Agregar contenido sobre como escribir teoremas, corolarios, demostraciones (El estilacho ya está (Gracias a Gutú), pero faltan ejemplos).
- Terminar de escribir esta lista... (¿propuestas?)

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
