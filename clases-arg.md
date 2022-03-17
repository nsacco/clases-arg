---
title: "Libro de Cocina para el Análisis de las Clases Sociales en Argentina"
author: ["Nicolás Sacco", "José Rodríguez de la Fuente", "Sofia Jaime"]
date: "2022-03-15"

bibliography: [bib/Biblio.bib, bib/bib_jose.bib, bib/packages.bib]
#biblio-style: apalike
csl: bib/apa-6th-edition.csl
link-citations: yes

github-repo: nsacco/libroESA
description: "Manual introductorio para el estudio de la estructura social en Argentina"

site: bookdown::bookdown_site
knit: "bookdown::render_book"
always_allow_html: true
---



# Prefacio {.unnumbered}

La literatura sobre las clases sociales en Argentina posee ya una larga tradición y una amplia gama de abordajes. La relevancia de este tema reside en las transformaciones recientes de la estructura social, pero también, en los desafíos, tanto teóricos como metodológicos, que el tema posee. Estudiantxs, investigadorxs y profesionalxs, en fin, aquellxs interesadxs en su estudio, se encuentran de forma frecuente con la paralizante tarea de afrontar la infinita literatura y discusión teórica sobre la cuestión, la construcción de información, o bien con el oscuro privilegio de acceso a ciertas bases de datos, en el caso de los estudios con datos cuantitativos secundarios; en definitiva, en la posibilidad de caer en las trampas de la ciencia cerrada o no-reproducible, todavía bastante frecuente.

A modo de aporte para cubrir parte de estos problemas, este manual, abierto a la comunidad para su consulta, ofrece a través de "recetas" prácticas situar a les lectores en la "cocina" de la investigación social para el estudio de las clases sociales, en particular, en el abordaje de la problemática de la construcción y análisis estadístico de datos para su estudio en la Argentina contemporánea, con un enfoque global y de largo plazo, en base a datos cuantitativos secundarios.

Compartiendo información compilada y herramientas usualmente dispersas tanto en la literatura, como en bibliotecas o bases de datos de acceso exclusivo, este libro condensa algunas lecciones aprendidas y experiencias de investigación, apoyados en el lenguaje de programación **`R`** y con la interfaz **`RStudio`**. Siguiendo el criterio general de ciencia abierta y reproducible, **`R`** permite ejemplificar el procedimiento de gestión de bases de datos y de procesamientos estadísticos, ya que se trata de una poderosa herramienta para la estadística, presentación gráfica, y programación, utilizada por miles de usuarixs. Pero a la vez, el uso de **`R`** puede ser desalentador. Por ello, en este libro ofrecemos soluciones de programación para problemas específicos.

Esta iniciativa se orientó, en ese sentido, al desarrollo de un conjunto básico de contenidos e instrumentos actualizados para la gestión de datos y análisis de las clases sociales. Este manual incluye su socialización en un formato también plano, y la presentación de herramientas computacionales que permiten apoyar la aplicación de los métodos presentados.

A partir del relevamiento, evaluación, ajuste y procesamiento de datos secundarios, les lectores serán expuestos a los desafíos empíricos y metodológicos de encarar la construcción de datos en un campo de estudio donde no predomina información para largos periodos históricos que involucran a la población de hecho en Argentina. Utilizando principalmente como fuentes de datos a los censos de población modernos (1970-2010) pero, sobre todo, a la Encuesta Permanente de Hogares (1974-2020) del Instituto Nacional de Estadística y Censos (INDEC), en los capítulos que siguen se retoman algunos debates actuales sobre la estratificación social y la literatura sobre el tema, y sus vertientes en América Latina y Argentina, pero el manual enfatiza en el trabajo empírico con datos secundarios, la construcción de información, su análisis estadístico y sus posibilidades explicativas para interpretar cambios sociales recientes en Argentina, tanto desde un punto de vista global y regional, como también local.

El [Capítulo 1](#analisis1) retoma algunos de los debates y conceptos en torno al estudio de la desigualdad y de la estructura social. Ya que una gran cantidad de publicaciones se dedican a este tema, se decidió dejarlo como introducción general conceptual, para pasar a los capítulos enfocados en los datos. El [Capítulo 2](#fuentes) presenta las características generales de la **Encuesta Permanente de Hogares** (EPH), en tanto herramienta central para el estudio de la estructura de clases en Argentina, mientras que el [Capítulo 3](#fuentes2) ofrece algo similar pero con los censos de población. El [Capítulo 4](#ocupacion) se focaliza en "las variables económicas" de las fuentes descritas en los capítulo previos, y ya en [Capítulo 5](#clases5) se presentan los diversos abordajes teórico-empíricos más utilizados en el estudio de la estratificación social, a nivel internacional y nacional, desde un abordaje operacional. El [Capítulo 6](#independiente) presenta a las clases sociales como uno de los factores estructuradores de la desigualdad social. El [Capítulo 7](#dependiente), en cambio, retoma una de las posibles aproximaciones al estudio de la estructura de clases en tanto variable dependiente. Dentro de este tipo de abordajes se interroga acerca de aquellos factores que explican, condicionan o intervienen en el proceso de formación y acción de las clases sociales. Finalmente, en el [Capítulo 8](#tiempo) se explora la dimensión temporal y la dimensión espacial como los procesos sociales más importantes para evaluar los cambios que se producen en la estructura de clases y en la desigualdad que desde la misma genera. En el [Anexo](#recetas), se incluye una breve introducción a **`R`** y su interfaz **`RStudio`**, centrada en las funciones puntuales que permiten realizar los ejercicios de los capítulos.

Al socializar este trabajo, el anhelo es construir una comunidad de usuarios y que la información derivada del material presentado pueda llegar a contribuir al desarrollo de futuras investigaciones en profundidad por parte de les interesados. Aprovechando las ventajas de la publicación en línea, este escrito mantiene un formato "vivo", que se irá modificando con el tiempo y, si se da la posibilidad de la interacción con sus lectores, sus aportes serán felizmente bienvenidos. Porque pretender un manual omnicomprensivo y acabado de la **estructura social argentina** es un objetivo bastante utópico dada la enormidad de la literatura sobre el tema.

Esperamos que les sea de utilidad.

Nicolás, José y Sofía

# Agradecimientos {.unnumbered}

La idea de este manual fue tomando forma durante la pandemia de COVID-19 a mediados del año 2020, a partir de una invitación por parte de la [Universidad Nacional de Tres de Febrero (UNTreF)](https://untref.edu.ar) para elaborar un curso de posgrado, en particular, de Jorge Fernández Bussy, Director de la Maestría en Generación y Análisis de Información Estadística, en el marco del Ciclo de Seminarios y Cursos extracurriculares en Estadística y el Programa de Actualización Permanente de las Orientaciones de Estadísticas Económicas, Estadísticas Sociodemográficas y Estadísticas de Opinión y Mercado, en coordinación con la Secretaría de Extensión Universitaria y la Dirección de Posgrado. El curso "Taller de Análisis de la Estructura Social en la Argentina Contemporánea" fue ofrecido por les autores de este libro de formato a distancia híbrdo (a-sincrónico y sincrónico) durante el segundo semestre del 2020. Queremos por ello agradecer a Jorge y al personal de la UNTreF por todo su apoyo, quienes permitieron llevar a cabo con éxito esta experiencia. También de forma especial a les estudiantes que participaron durante esos tiempos tan difíciles, que con su trabajo y aportes fueron nuestra primera audiencia. Muchas gracias tambín a Gabriela Benza, Ezequiel Adamovsky y Eduardo Chávez Molina, quienes participaron como entrevistados especialistas del tema en un módulo del curso.

<!--chapter:end:index.Rmd-->

# (PART) Introducción {.unnumbered}

# Las recetas {-}

La mayor parte de los ejercicios expuestos a lo largo de este Manual utilizan una o más funciones de **``R``** para resolver un problema específico. Se destaca que no se describen las funciones en detalle, ya que ellas pueden ser consultadas en otras publicaciones. En el [Anexo](#anexo), se presenta una introducción básica a la programación en `R` con `RStudio` y una selección de recursos disponibles para profundizar en su práctica.

Cada ejercicio da solución a un problema en particular que sin duda, dan una de otras posibles soluciones.

# (PART) Aspectos teóricos {.unnumbered}

# La estructura social en la Argentina actual {#estructura1}



<!-- No me copa mucho este capítulo, quizås lo podemos sacar directamente, es bastante aburrido para mí actual gusto -->

Este capítulo propone acercamiento introductorio al tema de las clases sociales, a través del abordaje de algunos conceptos básicos del estudio de la desigualdad social y de la estructura social, las tendencias actuales y cómo ésta subdisciplina ha evolucionado a través del tiempo.

Optamos por organizar un capítulo introductorio a modo de repaso de algunos conceptos básicos, resaltando que todo contenido empírico tiene un trasfondo teórico que es necesario conocer y para ello recomendamos profundizarlos a través de cursos, talleres o lecturas específicas. Si bien este manual no se recuesta sobre estos aspectos, consideramos imprescindible tenerlos en cuenta tanto al momento de construcción como en el análisis de los datos, ya que si no, se corre el riesgo de hacer "investigación social en un termo", como dicen por ahí.

El objetivo de este primer capítulo es exponer los principales debates teóricos de "estructura social" a manera de ir delineando definiciones teóricas y operacionales de clases sociales. Las preguntas guías remiten a considerar: ¿Cómo distinguir la clase? ¿Cómo encajan distintas definiciones en el debate actual de las clases sociales? La idea es también ver cómo en las formulaciones clásicas sobre la temática se puede volver a abrir el debate sobre "la muerte de las clases" y cuáles son las implicaciones de esta problemática para la investigación empírica de la sociedad argentina. Se muestra asimismo cómo el cuestionamiento de la estratificación social es un problema no tan nuevo pero inagotable y se esforzará por describir porqué la investigación social sobre clases está lejos de haber perdido su relevancia.

El capítulo se divide en cinco partes. En la primera se trazan a grandes rasgos los principales debates sobre las clases sociales y su eco en América Latina. Luego distinguimos algunos de los marcos teóricos posibles de aplicar para la construcción de preguntas acerca de la desigualdad social. En tercer lugar, buscamos explicar la importancia del estudio de la composición y estructura de la población según clases sociales y sus implicaciones para las políticas públicas, para luego pasar a identificar las tendencias históricas de su estudio en Argentina.

## Del análisis de las clases sociales a la teoría de la estratificación social {#analisis1}

¿Cuáles son las dimensiones de la estructura social? ¿Qué son las clases sociales? Los criterios empleados para la definición metodológica y operacional de las clases sociales y las interpretaciones actuales sobre estructura social en la Argentina reconocen como referencia aportes de diversos enfoques teóricos. Aquí se repasan aquellos que han sido revisados ampliamente en diferentes publicaciones, ya que la acumulación de literatura sobre el tema es extensa. Si bien se hace un recorrido histórico por la cuestión, estos debates pueden esquemáticamente reunirse en:

-   los postulados teóricos del materialismo histórico y el neomarxismo;
-   los planteamientos sociológicos de Weber y de los neoweberianos;
-   el enfoque estructural-funcionalista;
-   el enfoque empirista-estadístico o pragmático y
-   los enfoques de ingresos.

Esta reconstrucción, comprensiblemente, no es sencilla ya que la herencia teórica de ciento cincuenta años de sociología deja muchas propuestas y variaciones en torno a un tema común y una bibliografía extraordinaria. El resumen sin duda no excluye la existencia de otros diseños y sería en vano enunciar todos como así buscar la formulación definitiva sobre esta cuestión.

Existe una amplia literatura dedicada al análisis de la estructura social, de la cual destacamos dos puntos en común, que nos ayudan a establecer un punto de partida para su definición [@FeitoAlonso1995]. El primer punto alude al *carácter temporal* de la estructura social, ya que hace referencia a las relaciones estables de la sociedad, es decir, que describe las regularidades de sus elementos constituyentes. El segundo punto refiere a su *aspecto plural*, que designa los rasgos de grupos y sociedades, en otras palabras, que excede a los aspectos individuales.

De alguna manera existe una especie de conocimiento "natural" sobre la estratificación social que en general constituye una cuestión en la que reside una buena parte de la dificultad de su análisis. No es el objetivo de este manual hacer una historia de la lectura sociológica sobre las clases sociales, y menos sobre la estratificación social. Esa tarea es demasiado ambiciosa para un objetivo que está puesto en otro lado. Las preguntas-guía señaladas anteriormente remiten a delimitar los términos que habitualmente que se utilizan en el análisis de las clases sociales y la estratificación para entender su relación con el resto de los capítulos de este libro.

En este sentido, tres son las dimensiones relevantes de la estructura social [@Carabana1997]: la económica, la social y la cívica-política. En este libro, al referirnos a las clases sociales, apuntaremos al abordaje de la dimensión socio-económica de la estructura social. De esta forma, estructura social y estructura de clases, si bien muchas veces son utilizados como sinónimos, no son términos intercambiables entre sí. De forma resumida, partiendo del supuesto de que la sociedad es desigual, se entiende a la estructura social como el concepto que designa a las estructuras que conforman la sociedad. La estructura de clases es una forma específica de estratificación social. A continuación proponemos una guía resumen de los principales enfoques que han contribuido al análisis de las clases sociales.

## Marx, Weber y el funcionalismo {#marx}

Tres grandes tradiciones se inscriben en el debate sociológico actual sobre la definición, medición y operacionalización del concepto de "clase": son los desarrollos teóricos de los "clásicos" de la disciplina, Marx y Weber, y la teoría funcionalista de la estratificación social [@Crompton2008]. La concepción marxista sobre las clases sociales fue influenciada por importantes perspectivas teóricas: la filosofía alemana, la economía política inglesa y el socialismo utópico alemán [@Ossowski1972]. Crompton [-@Crompton2008, p. 11] ubicando al concepto de "clase" como herramienta de análisis social ligado al desarrollo del capitalismo y a la transición a la modernidad, señaló que Marx fue el primer teórico en considerar la naturaleza económica (o "materialista") de la desigualdad social.

En efecto, Marx fue quien vinculó el concepto de clase social con el de modo de producción y a las clases sociales con etapas históricas de los modos de la producción. Según esta corriente de pensamiento las clases sociales se constituyen a partir de la estructura económica del modo de producción capitalista, y el lugar que ocupan las personas en el proceso de producción y su relación con los medios de producción el determinante de su posición social.

Al situar a la lucha de clases como motor de la historia, Marx concedía al concepto de clase una distinción científica y, paralelamente, le asignaba un rol explicativo de la sociedad y la historia. El término de **clase** en su obra puede encontrarse tanto de forma analítica como descriptiva, es decir, como un concepto históricamente determinado. Wright [-@Wright1997] señaló que Marx enfrentó el problema abstracto de las clases y, al mismo tiempo, se dedicó al análisis concreto de las clases como actores, es decir, en distintos niveles de análisis. Las nociones de "clase en sí" y "clase para sí" —por un lado, entre la existencia de la clase como una realidad histórica y, por el otro, la clase como consciente de su identidad y de capacidad de actuar— motivaron un extenso debate sobre el cual, a lo largo del siglo XX, el materialismo histórico se desenvolvió en diversas corrientes: la "humanista", que enfatizó la significancia de la acción en las explicaciones sobre las instituciones y el comportamiento (Gramsci) y la "científica" o "estructuralista" (Althusser, Poulantzas) que resaltó la descripción de "estructuras" de clase [@Crompton2008, p. 31].

La premisa que considera a las clases como la variable explicativa del fenómeno de las desigualdades sociales tuvo en Marx el eje sobre el cual giró su discusión teórica, incluso hasta el presente. Su obra fue puesta en "diálogo" por Weber, quien criticó el principio de propiedad determinante de la clase social. Weber [-@Weber2002, pp. 682-694] propuso la existencia de una multiplicidad de factores que van más allá de la propiedad: estatus, relaciones de mercado, habilidades, prestigio, extendiendo de esta manera la dimensión "única" de clase. Considerando las ideas de Weber una extensión de las de Marx, a pesar de sus diferencias, el contraste entre estos dos autores puede, a veces, parecer exagerado. Weber no dejó de problematizar la visión materialista de la historia en Marx, ampliando esa visión "económica" y elaborando una propuesta multidimensional para el análisis del fenómeno de la estratificación social, distinguiendo a las clases, los estamentos y los partidos, donde la acción social predomina sobre una estructura objetiva, como el modo de producción [@Burris1995, p. 130].

Para Kerbo [-@Kerbo2003] —quien distinguió de las teorías de la estratificación social las "teorías del conflicto" y "teorías funcionales de la sociedad" (resumidas en el Diagrama 1)— en lugar "de los supuestos críticos del conflicto en Marx, en Weber encontramos un conjunto de supuestos paradigmáticos que hemos denominado no críticos del conflicto" (p. 95). Si bien "Weber creía que el conflicto estaba más extendido y se encontraba en el núcleo mismo de la organización social compleja, no albergaba, a diferencia de Marx, la esperanza de que este conflicto humano se pudiera eliminar por completo algún día" (p. 107).



<table class="table table-striped" style="margin-left: auto; margin-right: auto;border-bottom: 0;">
<caption>(\#tab:unnamed-chunk-3)Tipología de paradigmas de la estratificación social</caption>
 <thead>
<tr>
<th style="empty-cells: hide;border-bottom:hidden;" colspan="1"></th>
<th style="empty-cells: hide;border-bottom:hidden;" colspan="1"></th>
<th style="border-bottom:hidden;padding-bottom:0; padding-left:3px;padding-right:3px;text-align: center; " colspan="2"><div style="border-bottom: 1px solid #ddd; padding-bottom: 5px; ">Supuestos valorativos</div></th>
</tr>
  <tr>
   <th style="text-align:left;">  </th>
   <th style="text-align:left;">  </th>
   <th style="text-align:left;"> Críticos </th>
   <th style="text-align:left;"> No críticos </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;vertical-align: middle !important;" rowspan="2"> Modelo de sociedad </td>
   <td style="text-align:left;"> Orden </td>
   <td style="text-align:left;"> Paradigma crítico del orden </td>
   <td style="text-align:left;"> Paradigma no crítico - Teoría funcional (Durkheim) </td>
  </tr>
  <tr>
   
   <td style="text-align:left;"> Conflicto </td>
   <td style="text-align:left;"> Paradigma crítico del conflicto - Teoría de la clase dominante (Marx) </td>
   <td style="text-align:left;"> Paradigma no crítico - Teoría del conflicto (Weber) </td>
  </tr>
</tbody>
<tfoot><tr><td style="padding: 0; " colspan="100%">
<span style="font-style: italic;">Fuente: </span> <sup></sup> Kerbo (2003, p. 83)</td></tr></tfoot>
</table>



Dentro del paradigma no crítico y pese al poco desarrollo teórico acerca de la problemática de las clases sociales, como antecedente del funcionalismo en sociología, las ideas de Durkheim se ubicaron en contraste con la teoría del conflicto de Marx o Weber. Sus propuestas fueron de enorme ayuda para los teóricos funcionalistas y su interpretación de las clases sociales, ya que \>"calificó la existencia de la clase y el conflicto de clase de no naturales[...] esta condición patológica del conflicto existía porque los grupos ocupacionales no cumplían adecuadamente la función de proporcionar orden moral y porque los intereses egoístas de individuos y grupos amenazaban a la sociedad. Pero a Durkheim nunca se le pasó por la mente que todo un sistema de división del trabajo en la sociedad industrial pudiera ser una estructura de poder al servicio de la dominación de una clase por otra (como mantienen los teóricos del conflicto)" [...] [@Kerbo2003, p. 106].

La obra estructural-funcionalista de Parsons, que predominó en la teoría sociológica después de la II Guerra Mundial, reflejó ciertos elementos del análisis de Durkheim sobre las consecuencias de la división del trabajo en la "sociedad industrial". En base a ella, las teorías funcionales -como por ejemplo las de Davis & Moore [@Levine2006]- de la estratificación propusieron que las desigualdades en las sociedades complejas se imponen como legítimas a través de un consenso de valores relacionados con la importancia social de funciones particulares [@Crompton2008, p. 13].

## La esperanza de vida de la teoría: debates contemporáneos {#esperanza}

Después del *big bang* teórico de clásicos, en la década del cuarenta y el cincuenta del siglo XX predominó lo que algunos autores llamaron el "consenso ortodoxo" del análisis estructural-funcionalismo de la estratificación social, de fuerte tradición estadounidense y en las antípodas de la "teorías del conflicto" [@Martinez2005, p.47]. Relacionados, en parte, con los conflictos sociales y políticos de la década del sesenta, surgieron diversos enfoques analíticos en la sociología norteamericana cuyo cuestionamiento alcanzó a la academia. En particular, estas propuestas ponían en duda la capacidad del funcionalismo para comprender esos fenómenos sociales y ello contribuyó a fundamentar los planteos críticos no solo a sus debilidades teóricas, sino también a sus implicaciones políticas e ideológicas. Ante las propuestas de Parsons, Merton y discípulos, distintos autores contribuyeron a minar ese "consenso ortodoxo".

Gouldner [-@Gouldner2000] caracterizó esa etapa como la de una situación de crisis de la sociología. Ante la propagación de enfoques alternativos y material empírico que socavaba las bases teóricas del funcionalismo, la fragmentación de perspectivas no dio lugar —en el mediano plazo— a un marco teórico amplio capaz de cubrir los vacíos dejados por "la gran teoría". Estos debates tuvieron influencia en el desarrollo teórico de la estratificación social.

Si bien luego de la segunda posguerra no abundó en el materialismo histórico una reflexión sustantiva que aportara nuevos aspectos al concepto de clase [@FeitoAlonso1995, p.55], a comienzos de los sesenta el panorama cambió. Hubo una respuesta "a la europea" al funcionalismo de parte de autores como Lockwood [-@Lockwood1962] y Dahrendorf [-@Dahrendorf1979], quienes se esforzaron por relacionar el legado de Marx y Weber [@FeitoAlonso1995, pp. 50-51] en los estudios de estratificación social, mientras que desde Francia comenzaban las relecturas del marxismo de Althusser [-@Althusser1968]. Para Parkin

> "...inesperadamente el marxismo contemporáneo se ha aproximado a la posición sociológica. Este deslizamiento sobrevino como parte de un intento más general de los marxistas occidentales en procura de reconsiderar el modelo clásico u ortodoxo de las clases bajo las nuevas condiciones del capitalismo monopolista..." [-@Parkin1968, pp. 696-697].

Fue también a mediados de los setenta del siglo XX cuando el revisionismo "neomarxista" de Poulantzas [-@Poulantzas2005] abrió un intenso debate en las ciencias sociales. Su esfuerzo teórico intentó definir los conceptos claves para el análisis de las clases sociales desde la perspectiva del materialismo histórico. Poulantzas sostuvo que dentro del proceso de producción, la dimensión económica distingue al trabajo productivo del improductivo, la dimensión política refiere al grado de control sobre el proceso de trabajo, mientras que la dimensión ideológica manifiesta el grado de conciencia y participación, o no, de la organización del proceso de trabajo [@Parkin1968].

### La grieta de los ochenta

Para principios de los '80, el debate sobre las clases sociales continuó dentro del materialismo histórico, si bien su perspectiva "estructuralista" no tuvo mayor influencia; el colapso del bloque socialista y la llegada del neoconservadurismo al poder en los países centrales minó de cierta manera el optimismo de izquierda de los sesenta y setenta y la discusión giró en torno a las posibilidad del socialismo en ese contexto —por ejemplo, Laclau [-@Laclau1987]—. Este diálogo, si bien no estaba directamente relacionado con la investigación en estratificación social en la sociología académica, impactó en los debates de ese momento.

Es que, paradójicamente, es en la década de 1980 cuando el enfoque del análisis de clase asistió a un momento de gran creación, tanto en cuestiones conceptuales como de análisis empírico. Producto del "retorno" a los clásicos, el desarrollo de las propuestas de Wright y Goldthorpe se produjo en paralelo con una sofisticación de las técnicas de investigación (sobre todo en lo que refiere al procesamiento de datos y al análisis estadístico). Los enfoques teóricos y las propuestas de aplicación de investigación de Wright y Goldthorpe fueron descritos por Crompton [-@Crompton2008, p. 50] como el enfoque "ocupacional-agregado " al que considera una orientación especializada del análisis de clase en el campo de la sociología. Para Crompton las distintas clasificaciones y estrategias para el estudio empírico de la estructura de clase u ocupacional pueden dividirse en tres:

i.  esquemas de "sentido común" con pocas pretensiones teóricas, que agrupan ocupaciones en un orden jerárquico con líneas de corte "objetivas";
ii. índices de prestigio ocupacional o *status*, que buscan medir el ranking social de distintas ocupaciones (frecuente, sobre todo, en las investigaciones sobre movilidad social);
iii. esquemas "relacionales" o "formas teóricas de esquemas de clases", que poseen explícitas referencias a las propuestas teóricas de Marx y Weber.

Los esquemas i) y ii), Crompton los denominó "índices descriptivos" que incluyen los "gradacionales" o "jerárquicos" donde las clases difieren por el grado cuantitativo de algún atributo o basados en una cualidad particular (ingresos, prestigio, status, etc.) . Los agrupados iii) persiguen, en líneas generales, la descripción de la desigualdad ocupacional, determinando teóricamente las "clases" y a nivel empírico, observando las relaciones de clase —refiriendo con ello el proceso por el cual esas desigualdades se producen— [-@Crompton2008, p. 49]. Se incluyen aquí los dos grandes proyectos que dominaron el debate en el campo del análisis de clase durante los ochenta y los noventa: el _Compartive Class Project_ "neo-marxista" de Wright y el _CASMIN_[^u-1] "neo-weberiano" de Goldthorpe.

[^u-1]: Comparative Analysis of Social Mobility in Industrializad Countries.

Así como es frecuente comentar que Weber "dialoga" con la obra de Marx, Burris [-@Burris1995] sugirió que la literatura marxista contemporánea "dialoga" con Weber. Por ejemplo, Wright insistió en formalizar un desarrollo teórico manteniendo a la vez un esfuerzo de aplicación, empírico, bajo el objetivo general de "construir, dentro de un marco teórico marxista en sentido amplio, un concepto de estructura de clases susceptible de ser usado en el análisis de procesos micro a un nivel relativamente bajo de abstracción" (1995:21). En base a ello elaboró dos estrategias metodológicas:

> "he explorado dos enfoques generales diferentes de este problema [estructura de clases], a los que podríamos denominar respectivamente enfoque de las posiciones contradictorias y enfoque de la exploración multidimensional. Ambas estrategias constituyen intentos de proporcionar una teorización positiva a la categoría "clase media" dentro de un marco esencialmente basado en los intereses." [@Wright1995a, p. 59].

La primera solución de Wright para ubicar a la clase media fue considerarla entre la clase obrera y la pequeña burguesía, simultáneamente, tomando este concepto de posición contradictoria. La segunda solución consideraba que

> "los diferentes 'modos de producción' se basan en mecanismos específicos de explotación que pueden diferenciarse según el tipo de recurso productivo, cuya desigual propiedad (o control) permite a la clase explotadora apropiarse parte del excedente socialmente producido. Basándome en la obra de Roemer, distinguía yo cuatro tipos de recursos, la desigual propiedad o control de los cuales constituía la base de las distintas formas de explotación: los bienes de fuerza de trabajo (explotación feudal), los bienes de capital (explotación capitalista), los bienes de organización (explotación estatista) y los bienes de cualificación o credenciales (explotación socialista). Aunque los modos puros de producción pueden identificarse con las formas simples de explotación, las sociedades reales siempre constan de diferentes formas de combinación de los diferentes mecanismos de explotación. Esto abre la posibilidad de que ciertas posiciones en la estructura de clases estén simultáneamente explotadas a través de un mecanismo de explotación pero sean explotadoras a través de otro mecanismo". Dichas posiciones...constituyen la 'clase media' de una sociedad dada" [@Wright1995a, pp. 65-66].

### Nuevos debates...¿Hacia una operacionalización más refinada de los conceptos?

Este modelo, durante buena parte de la década del noventa, estuvo un tiempo "encontrado" a las líneas de pensamiento "neoweberianas" de los cuales resalta el trabajo de Goldthorpe y que incluyen los de Giddens y Parkin. Con una influencia importante en los estudios sobre estratificación social en América Latina, Goldthorpe retomó la definición de clase desde la estructura ocupacional, diferenciando la "situación de trabajo" y la "situación de mercado", utilizando la ocupación a partir de una escala de prestigio ocupacional. El autor trató de encontrar la "identidad demográfica" de clase y el "grado de formación sociopolítica de la clase" [@Martinez2005, p. 74]. Trabajó en el análisis de la "clase de servicio" —profesionales, por un lado, administrativos y directivos por el otro— que, una vez despejados sus rasgos estructurales (económicos), intentó delinear su paso de las "clases económicas" a las clases sociales.

Crompton también ubicó dentro del enfoque "ocupacional-agregado" al _Clasificador Estadístico Socio-Económico Nacional_(NS-SEC) de la Oficina de Estadística del Reino Unido, derivado, en mayor parte, del esquema clasificatorio de Goldthorpe, que combina el *status* en el empleo con características del trabajo. Se trata de un sistema clasificatorio que utiliza el sistema estadístico inglés y que se incluye dentro del programa de desarrollo de un "sistema de clasificación socio-económico europeo" [@Rose2007]. Es que, en efecto, el más frecuente uso "dado por hecho" en el análisis contemporáneo de clases sociales en sociología es aquel que divide grupos ordinales de ocupaciones en "clases" [@Crompton2008, p. 49] y la división de la población en posiciones desiguales de recompensas es comúnmente descripta como "estructura de clase". Noción que, en la actualidad, se focaliza usualmente en la estructura del empleo.

La cuestión acerca de cómo se utiliza a la variable ocupación en términos de clasificación tiene distintas respuestas [@Desrosieres2000]. Ganzeboom [-@Ganzeboom1992], por ejemplo, distingue dos corrientes entre los científicos sociales: los que utilizan aproximaciones a la clasificación de categorías de clase socioeconómica y los que prefieren medidas continuas. El uso de la variable ocupación es columna vertebral de este tipo de orientación. Para los sociólogos —y también para las agencias comerciales y organismos del gobierno— la ocupación se incorporó como variable principal para el análisis de clase ya sea porque era el indicador más poderoso de recompensas materiales o por la disponibilidad de información con la que se contaba para realizar investigaciones con fundamento empírico.

Como señala Barozet [-@Barozet2007] los datos de ocupación fueron los predilectos para los estudios de estratificación social según este enfoque, abordado desde distintos puntos de vista teóricos y metodológicos. Esta autora, haciendo un recorrido por las escalas académicas internacionales que utilizaron esta variable —la _ISCO_(International Standard Classification of Occupations); la de Goldthorpe y Erikson; la ya mencionada de Eric Olin Wright; la escala de ocupación francesa y por aquellas que trabajaron en base al prestigio ocupacional, como las de la de Treiman (_Standard International Occupational Prestige Scale_) [@Treiman1977]-- mencionó que:

> "La variable ocupación es central para los estudios de estratificación social, pero cabe tener mucho cuidado de que el uso que se le da no aparte los estudios de una posible comparación. En efecto, siguiendo la advertencia de Ganzeboom y Treiman (1996), es importante tomar como piso la clasificación ISCO, con el fin de establecer ocupaciones que se puedan subsumir a categorizaciones internacionales. Sin embargo, el uso de la variable ocupación se enfrenta al mismo problema que otras variables: las ocupaciones, sus nombres y sus contenidos cambian, por lo cual se requiere de una adaptación en cada nueva aplicación de encuesta" [@Barozet2007, p. 45).

#### No tan distintos

Con varios puntos en común y, llamativamente, a pesar del disenso teórico, con resultados empíricos homologables al menor nivel de apertura de sus esquemas [@Crompton2008], las propuestas teóricas Goldthorpe y Wright relacionan, por un lado, la clase como principio estructural de desigualdad social y, por el otro, la clase como origen de identidad social y política, conciencia y acción, cuestión en la que reside una gran fuente de debates.

Desde la "etnografía de clase" se defendió la idea que la estructura y la acción, la economía y la cultura, tienen roles importantes —e intervienen— en el mantenimiento y la reproducción de clases sociales. Este punto de vista argumentó que no sólo las diferencias económicas sino también mecanismos no-económicos se vinculan con las desigualdades sociales y la cultura, es decir, que al observar la estructura social no se trata solamente de separar el efecto de la localización en clases sociales sino también hay que tener en cuenta los mecanismos por los cuales las mismas clases se constituyen. En este segundo tipo de interpretación se puede ubicar la teoría de la estructuración de Giddens y el trabajo de Bourdieu. Es que las críticas al análisis de clase dentro de la sociología transitaron por diversos andariveles: se suele problematizar una supuesta poca capacidad para explicar la acción de clase y su "sobredeterminación economicista". Al mismo tiempo, dentro de las posibles definiciones de clase que pueden ser identificadas en la literatura especializada, se observó un creciente interés general por su dimensión cultural [@Crompton2008, p. 16] con un "giro" de perspectiva sobre el abordaje más tradicional de estructura de clase en base a la ocupación.

Por un lado, Giddens [-@Giddens1998] propuso relacionar las trayectorias conceptuales provenientes de Europa y Estados Unidos. En su "teoría de la estructuración" debatió la "concepción utópica" y el "evolucionismo de la historia" en el marxismo, la poca importancia concedida al Estado en el ejercicio del poder y la desatención a formas no económicas de desigualdad social. En su crítica al "objetivismo determinista" del funcionalismo y del marxismo reclamó un enfoque que dejara las intenciones de los actores en el mismo nivel que el de las estructuras. Por otro lado Bourdieu, en cambio, enfatizó en los aspectos económicos y culturales de la diferenciación social, influido tanto por una visión marxista como por la weberiana. En *La distinción* [-@Bourdieu2012] no redujo el análisis de clase a su dimensión económica sino que, al mismo tiempo, analizó relaciones sociales simbólicas. Para este autor la clase social

> "no se define por una propiedad [...] ni por una suma de propiedades [...] ni mucho menos por una cadena de propiedades ordenadas a partir de una propiedad fundamental (la posición en las relaciones de producción) en una relación de causa a efecto, de condicionante a condicionado, sino por la estructura de las relaciones entre todas las propiedades pertinentes, que confiere su propio valor a cada una de ellas y a los efectos que ejerce sobre las prácticas..." [@Bourdieu2012, p. 121].

Distintas combinaciones de capital (económico, social, cultural o simbólico) constituyen el *habitus*, que \>"es a la vez, en efecto, el *principio generador* de prácticas objetivamente enclasables y el *sistema de enclasamiento (principium divisionis)* de esas prácticas." [@Bourdieu2012, p. 200].

En paralelo, desde el paradigma weberiano contemporáneo algunos autores se empeñaron en cuestionar la dimensión estructuralista del materialismo histórico, que deja de lado el rol de la acción social y la primacía de clase por sobre otras formas no clasistas de dominación. Según señaló Burris [-@Burris1995, p. 131], Giddens y Parkin ignoraron una parte del debate marxista contemporáneo cuando argumentaron que los fundamentos marxistas sostenidos en la lógica de los modos de producción son una forma de funcionalismo y que el marxismo reduce a los actores a espectadores pasivos de sus relaciones sociales. Es que en el materialismo histórico ha "corrido mucha agua bajo el puente" desde las explicaciones clásicas de Marx para comprender los mecanismos de las instituciones o de las prácticas que operan sobre la estructura social.

En buena parte de la literatura marxista contemporánea se asignó un papel significativo a la acción humana en las explicaciones y en el análisis de clase. Incluso, como bien señala Burris, pueden encontrarse marxistas como Thompson [-@Thompson1968] o Przeworski [-@Przeworski1977], que, aunque sitúen la primacía de las estructuras por sobre la acción, no implica que la dejen de lado [@Burris1995, p. 133]. De hecho, Thompson analizó las clases sociales en términos de acción humana casi exclusivamente, en su clásico estudio sobre la formación histórica de la clase obrera en Inglaterra. Su concepción de clase como proceso y relación —si bien nunca detalló una teoría sistemática de clase— se contrapone al de clase como ubicación estructural:

> "Por clase entiendo un fenómeno histórico que unifica a un número de sucesos dispares y aparentemente desconectados, tanto en la materia prima de la experiencia como en la consciencia. No veo a la clase como una "estructura", ni siquiera como una "categoría", sino como algo que de hecho acontece (y puede demostrarse que ha acontecido) en las relaciones humanas [...]. La clase se define por cómo viven los hombres su propia historia y, en última instancia, ésta es su única definición" [@Thompson1968, pp. 9-11].

Przeworski equiparó la importancia de la estructura objetiva y la acción como mutuamente dependientes cuando "analiza las clases como el resultado de las luchas históricas concretas condicionadas por estructuras sociales que, a su vez, retroactúan sobre esas estructuras y las transforman" [@Burris1995, p. 133].

### La muerte de la clases

Durante buena parte del siglo XX, los puntos de vista sobre las clases tuvieron una fuerte influencia en los debates de las ciencias sociales. Los postulados de Marx fueron cuestionados porque, supuestamente, la importancia relativa de la clase obrera disminuía con el tiempo en tanto que las clases medias —sobre todo, durante los "años felices" del Estado de Bienestar 'a la europea'v se incrementaban y convivían con la considerable expansión de las diferencias basadas en nuevas categorías de análisis tales como género, edad o etnia. Y si bien la acción asume un rol importante en las explicaciones marxistas de la actualidad, por el contrario, hay reticencias a la incorporación de formas de explicación estructural por parte de los weberianos [@Burris1995, p. 136].

El rápido cambio social, económico y político, a nivel mundial, durante los noventa (dominado por el Consenso de Washington) comenzó a minar una parte de las presunciones y preocupaciones del análisis empírico de las clases sociales, en gran medida como consecuencia de los cambios en la estructura ocupacional y la declinación de la clase obrera tradicional en los países industrializados, con el correlato decrecimiento de ocupaciones no-manuales -que convencionalmente se las ubicó en la clase media-.

El cambio tecnológico, los cambios en la división internacional del trabajo, el impacto de la crisis del petróleo, la disminución en importancia y en número de industrias tradicionalmente reclutadores de clase obrera, el aumento paralelo de la denominada "economía de servicios"; los mayores niveles del bienestar y la ampliación de las clases medias, la emergencia de nuevas categorías de análisis, como el género y la etnia se han tomado como algunos de los factores de la declinación de empleos industriales.

Este cambio técnico, el mayor dinamismo del sector terciario, la pérdida de liderazgo de la industria de "modelo fordista", la caída de salarios, el aumento del empleo femenino y nuevas configuraciones en el mundo del trabajo, fueron algunos de los puntos señalados para mostrar la captación de estas nuevas realidades utilizando las variables tradicionales del análisis de la estructura social. Muchos críticos de la noción de clase cuestionaron que el empleo, debido a su debilitada importancia a fines del siglo XX, pueda ser el punto partida para la identidad social, desde al menos, la segunda mitad del siglo XX.

Previo a los cuestionamientos sobre el cambio el cambio técnico, algunos autores se cuestionaban acerca de la "muerte" del concepto de clases sociales. Nisbet [-@Nisbet1959] y sus continuadores justificaron la eventual desaparición de la noción de clase. Lo fundamentaban en que el ámbito político se distinguía una difusión del poder en todos los segmentos de la población y una ruptura del comportamiento político de acuerdo al estrato social; en el ámbito económico, aumentaba en el sector terciario, cuyos puestos de trabajo no coincidían con la mayoría de cualquier sistema de clase, y por la distribución de la propiedad en todos los estratos sociales y los niveles de vida y consumo que llevaron a la desaparición de los estratos claramente identificables de consumo.

Otra corriente teórica que se oponía al uso del concepto de clase fue la denominada teoría de la "sociedad post-industrial" en la que destacan autores tales como Bell y Touraine. Planteaban la convergencia en todas las sociedades hacia un aumento de los requisitos de conocimiento en el lugar de trabajo, menor desigualdad social y desgaste de la burguesía como clase dominante. Bell [-@Bell2006] tomó en cuenta tres dimensiones analíticas de la sociedad: **la estructura social**, en la que incluye la economía, la tecnología y el sistema de trabajo; la **política**, que regula la distribución del poder y la **cultura**, lugar del simbolismo y los significados.

Muchas de las interpretaciones que cuestionan el concepto de clase sostienen que la clase obrera perdió su centralidad en la teoría y que el desarrollo económico se traduce en una decreciente importancia de la clase social como base de la acción política. Otorgan su lugar a los nuevos movimientos sociales, como la corrientes "postmaterialismo" [@Inglehart1990] que sostiene la idea de que a medida que aumenta el bienestar económico de una sociedad, los valores que conforman a sus individuos no son guiados por pautas materialistas.

Clark y Lipset [-@Clark1991] preguntaban a comienzos de la última década del siglo XX si las clases se estaban "muriendo". Esta vieja posición, favorable a la desaparición de las clases, consideraba que la transformación de la estructura ocupacional junto con el desarrollo del Estado Benefactor se tradujo en un mayor nivel de riqueza y bienestar en la población y en nuevas formas de comportamiento político (tales como la ecología o las libertades civiles). La declinación de la dinámica tradicional de izquierda-derecha de los partidos políticos y la emergencia de divisiones sociales no ancladas en las clases, tales como el aumento de las credenciales educativas, nuevas formas en el mercado de trabajo, o las desigualdades geográficas y locales, lograron un declive de la política de clase, que se manifestaba por un lado en una inexistencia de correlación entre voto y clase, la declinación de los partidos políticos tradicionales, la ampliación de las clases medias y el "reciclaje" de partidos tradicionales de izquierda.

Hout y otros [-@Hout1993], siguiendo el debate, argumentaron que el concepto de clase es fundamental en sociología ya que es indispensable para determinar intereses materiales. Las clases definidas "estructuralmente" pueden dar lugar a la emergencia de acción colectiva y la pertenencia a una clase incide sobre las oportunidades de vida y diversos aspectos relevantes de la vida social. La propiedad, las diferencias de renta y riqueza siguen estando de forma persistente asociadas a la clase social.

Al respecto, es interesante el razonamiento que propone Filgueira cuando considera que

> "Si uno de los problemas del paradigma clásico es su excesiva atadura a la dimensión empleo, la consideración de las diversas formas de capital abren el camino para la discusión de otros principios ordenadores de la diferenciación social. En particular, la cuestión actualmente en debate acerca de la relevancia de los estilos de vida y consumo como alternativa estructuradora de la diversidad del orden social en oposición o en paralelo con la determinación del empleo, o si se quiere, acerca de la pregunta sobre la vigencia actual del "paradigma productivista". Naturalmente, ello conduce a la pregunta acerca de qué ha cambiado para que la necesidad de revisar el paradigma clásico se haga evidente. No parece haber una respuesta definitiva acerca del punto aunque las razones que se aducen se remiten a la incapacidad de la teoría sociológica contemporánea de dar respuestas idóneas a las recientes transformaciones macroestructurales. En principio, tal hipótesis no parece del todo plausible o por lo menos está mal formulada. La carencia explicativa del paradigma clásico existió con independencia de los "cambios objetivos". Lo que sí ocurrió es que estos cambios hicieron más evidente sus limitaciones" [@Filgueira2001, p. 22]

No ha sido la primera vez que el término de "clase" y el análisis de clase se viera objetado como desfasado en el tiempo y que, sus estrategias de investigación y abordaje fueran consideradas irrelevantes para sociedad actual. Si bien durante la mayor parte de los siglos XIX y XX el tema de las clases sociales ha estado en el centro de los debates académicos y extra-académicos de los científicos sociales —tal vez como reflejo de una discusión política más amplia acerca de las luchas sociales en las sociedades industrializadas occidentales [@Bauman2000; @Furbanck2005]—, cada tanto suele desaparecer de la corriente política o de la agenda mediática. Como otros paradigmas de la ciencia y de la sociología, el tema de las clase sociales parece una gran "estrella púlsar" que ilumina y decae a lo largo del tiempo.

## La cuestión en América Latina y en la Argentina {#cuestion}

¿Cómo estudian los cientistas sociales la desigualdad social en términos de clases sociales, en general, y en particular en la Argentina? ¿Qué fuentes de información están disponibles y cuáles se utilizan para responder preguntas? ¿Qué temas investigan los cientistas sociales relativos a las clases sociales en Argentina? ¿Cuáles son las tendencias históricas de los principales temas del estudio de las clases sociales? ¿Qué relevancia tienen los enfoques propuestos para interpretar la realidad social contemporánea?

En América Latina los debates originados en la sociología de los países centrales fueron seguidos de cerca, y en muchos casos, problematizados y ampliados con propuestas originales y novedosas, que anticiparon los trabajos de Wright o Goldthorpe. Filgueira [-@Filgueira2001] sostuvo que el paradigma de la estratificación social en América Latina se enraíza en las tradiciones intelectuales europeas, principalmente en la corriente marxista y la weberiana. Lo denominó "paradigma clásico" de los estudios de estratificación y movilidad social. En el desarrollo inicial de este tipo de estudios en Latinoamérica se destaca la influencia de Gino Germani [-@Germani1987], José Medina Echavarría [-@MedinaEchavarria1964], Florestán Fernándes [-@Fernandes1998] así como de Solari en Uruguay, Hutchinson en Brasil y Costa Pinto en Chile, entre otros.

Filguiera [-@Filgueira2001] puso en evidencia una inexplicable postergación en la investigación sobre el tema en el último cuarto del siglo XX. Observaba que había una relativa carencia de estudios de estratificación en la agenda de investigaciones en América Latina y que si bien no se interrumpió, fue perdiendo lugar frente a otras temáticas. Consideró importante retomarlo por la necesidad de lograr un marco comprensivo de los cambios producto de la globalización y el cambio técnico y por las limitaciones conceptuales del tradicional paradigma de la estratificación. De esta manera se dilucidaría el impacto de las transformaciones en el mercado de trabajo y propuso un abandono del "paradigma productivista" clásico de la estratificación por una visión renovada del enfoque de clases que integre dimensiones tales como capital social, regímenes de bienestar y cambio demográfico. Sostiene que

> "Uno de los factores contribuyentes a la pérdida de relevancia de los estudios de estratificación y movilidad social comparados en la región, estuvo dado por el vuelco de los estudios sociales hacia los problemas de pobreza y exclusión social [...] Como resultado, sobre América Latina conocemos hoy día por ejemplo, muchas más sobre los pobres, los indigentes y los marginales que sobre las condiciones de vida, alineamientos sociales y movilidad de las clases bajas urbanas integradas o de las 'clases medias'" [-@Filgueira2001, p. 8].

En el trabajo ya clásico de Filgueira y Geneletti [-@Filgueira1981] se realizaban interesantes observaciones sobre los cambios en la estructura social en base a datos censales. Barozet [-@Barozet2007] señala que algunos estudios de orientación cepalina como el de Portes [-@Portes2003] reintrodujeron la noción de clase social desde un punto de vista marxista, con una mirada regional y temporal y muchos otros hicieron foco en las clases medias latinoamericanas como los de Franco y Hopenhayn [-@Franco2010] y Franco, León y Atria [-@Franco2007; -@Franco2010a].

A pesar del fuerte impulso inicial que se dio entre 1950 y 1970 a los estudios sobre estratificación, movilidad y clases sociales en América Latina, fue perdiendo de a poco su ímpetu hasta volverse muy menor en la agenda de investigación en la última década del siglo XX. Como se mencionó anteriormente, alguna de las razones de esta caída pudo deberse a la predominancia del enfoque neoliberal en la economía de la región durante las décadas de 1980 y 1990, cuando la cuestión social comenzó a cobrar relevancia con los problemas de empleo, pobreza y exclusión social.

### Nuevos aires

Ya a comienzos del siglo XXI las investigaciones sobre clases sociales vuelven a la agenda de muchos institutos. Es que los procesos de cambio que se dieron en la región durante la primera década del dos mil dieron lugar a interrogantes acerca de sus efectos sobre la estructura de clases y la desigualdad social, que el enfoque de la estratificación social podía ayudar a responder.

En sintonía con la expansión de la sociología académica en la Argentina, la "teoría de clases" asumió una importancia primordial en los debates sociológicos durante fines de la década del cincuenta y hasta mediados de los '70. La investigación académica sobre estructura social fue un tema frecuente, cuando a partir la "escuela" de Germani [-@Germani1987] fue abordado con mayor sistematización y dio lugar a numerosos debates en la sociología argentina.

Durante la década de 1950 se impulsaron en América Latina una serie de investigaciones considerando a la clase media como el sector clave para la estabilidad social y el desarrollo, que se manifestaba y caracterizaba, entre otras cosas, por movilidad ascendente. Emparentado con una tradición idealista, Poviña [-@Povina1950] caracterizó en términos culturales y espirituales a la clase media, mientras que Bagú [-@Bagu1959] lo hizo en términos psicosociales. Germani [-@Germani1944; -@Germani1963; -@Germani1981], propició estudios con sólido sustento empírico y de largo plazo, llevando a cabo investigaciones bajo "indicadores objetivos de clase" y de autoidentificación, pensando a su vez las correspondencias entre movilidad y estratificación.

Durante la década del '60 y del '70 del siglo XX, diversos estudios centraron su atención en la relación entre orientación ideológica y acción política de la clase media [@Graciarena1971; @Tedesco1973]. Quizás el estudio más importante de la época lo constituyó el de de Ípola y Torrado [-@Ipola1976], quienes abordaron el análisis de las clases sociales a partir de una interpretación del fenómeno basado en una conceptualización renovada de las clases sociales desde materialismo histórico, trabajo que será retomado luego por Torrado [-@Torrado1992].

Durante los noventa y luego de la crisis del 2001, el debate acerca de las clases sociales comienza a expandirse, poniéndose "de moda" los estudios de acerca de las clases medias, con investigaciones que fueron dando cuenta del deterioro creciente de las condiciones de vida de este sector, producto de la implementación de políticas de ajuste durante la dictadura cívico-militar, extremadas en la última década del siglo XX.

Minujín y Anguita [-@Minujin2004] analizaron cómo el segmento social distintivo de la Argentina decae en los últimos treinta años del siglo XX. Efectivamente, hasta 1976 la Argentina mostró altos niveles de movilidad ascendente —intergeneracional e intrageneracional— corroborados en la jerarquía ocupacional y una movilidad ascendente del nivel de ingreso [@Torrado2007]. Luego de esa fecha, tanto la movilidad ocupacional como de ingresos mostraron flujos descendentes, siendo la ocupación y el trabajo precario nuevas modalidades de trabajo para este estrato [@Lindenboim2007; @Monza1986; @Orsatti1985].

Diversas publicaciones mostraron el proceso de pauperización creciente y los efectos del proceso de concentración que involucró el surgimiento de una nueva categoría, la de los "nuevos pobres" o "pobres por ingresos" donde se encontraban fracciones de la clase media afectadas por la precarización de las condiciones de trabajo y el desempleo [@Minujin1992; @Minujin1995; @Murmis1992], disminuyendo así, no sólo su peso relativo sino también mudándolo a ser un sector vulnerable a la pobreza [@Altimir1999; @Beccaria2007; @LoVuolo2004c].

El problema de la distribución del ingreso contribuyó largamente al análisis de los cambios observados en la clase media y en las clases sociales en general. Distintos trabajos mostraron las contradicciones y pujas en la estructura social de países como la Argentina -por ejemplo [@Lindenboim2007]- y dieron cuenta cómo este proceso se acentuó, como también lo hacía la desigualdad social, en niveles altamente diferentes con respecto al pasado [@Lopez2005a]. La expansión de la pobreza, proyectaba una clase media en retroceso cuantitativo, transformando los patrones de su estructura y movilidad, asimilando a la Argentina a otros países de América Latina. En líneas generales, los estudios especializados señalaron cómo aquel conjunto poblacional definido como la clase media presentaba movilidad tanto ascendente como descendente y al mismo tiempo cambios estructurales en convergencia con los culturales.

Desde el punto de vista del "giro cultural" que menciona Crompton diversos autores [@Garguin2009; @Losada2009; @Visacovsky2009; @Zimmermann2000] abordaron distintas dimensiones acerca de la formación de las clases medias argentinas, debate que hoy en día constituye un campo específico de los estudios de estratificación social en la Argentina. Adamovsky, por ejemplo, reflexionó acerca las condiciones históricas "subjetivas" que dieron origen a la clase media [@Adamovsky2009a, @Adamovsky2009b] y a las clases populares [-@Adamovsky2012] problematizando la formación histórica de las clases sociales. También fueron observadas a partir de sus consumos culturales o económicos —por ejemplo la investigación de Wortman ([-@Wortman2003]).

Desde el abordaje estadístico, por un lado, hubo una importante aparición de estudios que analizaron los impactos y las diferenciaciones que produjeron los cambios en el modelo de acumulación sobre la estructura de clases. En este sentido pueden nombrarse los aportes de @Benza2016, @ChavezMolina2015, @InigoCarrera1999, @Palomino.Dalle2012, @Pla.etal2018, @Sacco2019. Por otro lado, también volvió a retomar importancia el estudio de la movilidad social. En este caso, se destacan las investigaciones de Kessler y Espinoza [-@Kessler2007], Benza [-@Benza2012], Rodríguez de la Fuente [-@RodriguezdelaFuente2020] y las de los equipos del área laboral y de estratificación social del Instituto de Investigaciones Gino Germani [@ChavezMolina2009; @ChavezMolina2014; @Dalle2016; @Dalle.etal2018; @Pla2016; @GomezRojas.Riveiro2014; @Sautu2011].





<!--chapter:end:caps/01U.Rmd-->

# (PART) Fuentes de datos {-}

# Encuestas de hogares {#fuentes}  

Este capítulo introduce las características generales de la **Encuesta Permanente de Hogares** (EPH), elaborada por el [Instituto Nacional de Estadísticas y Censos(INDEC)](www.indec.gob.ar){target="_blank"}, en tanto herramienta central para el estudio de la estructura de clases en Argentina. Asimismo, se revisan otras encuestas de hogares alternativas para el estudio de la desigualdad social.

Se abordan las siguientes preguntas:

- ¿Cuáles son las principales características de la EPH?
- ¿Qué elementos presenta para el estudio de la estructura de clases argentina? 
- ¿Cuáles son las limitaciones que debemos considerar? ¿Qué cambios ha presentado a lo largo del tiempo?
- ¿Cuáles son las principales variables para el análisis de clase? 
- ¿Qué formas existen para acceder a los micro-datos?
- ¿Qué ventajas presenta cada forma de acceso? 
- ¿Por qué es necesario considerar otras fuentes de información a la hora de analizar las clases sociales?

Al completar este capítulo se espera que les lectores puedan:

1. Identificar las principales características, ventajas y desventajas en el uso de la EPH para el estudio de la estructura de clases en Argentina.
2. Aprender a localizar la información necesaria, incorporando distintos métodos de acceso a la misma (descarga de microdatos desde la web de INDEC y uso de paquete __```eph```__ para __`R`__).
3. Conocer otras fuentes de información existentes para el estudio de las clases sociales y diversas facetas de la desigualdad.
4. Incorporar las herramientas para abrir los micro-datos de EPH en `RStudio` y realizar exploraciones preliminares.

Para una mayor comprensión del capítulo recomendamos la lectura de los siguientes documentos:

- INDEC. [-@INDEC2020]. Encuesta Permanente de Hogares. Diseño de registro y estructura para las bases preliminares Hogar y Personas. INDEC. [Link de descarga](https://www.indec.gob.ar/ftp/cuadros/menusuperior/eph/EPH_registro_1t20.pdf).

- INDEC. [-@INDEC2003]. La nueva Encuesta Permanente de Hogares de Argentina: 2003. [Link de descarga](https://www.indec.gob.ar/ftp/cuadros/sociedad/metodologia_eph_continua.pdf).

- Kozlowski, D., Tiscornia, P., Weksler, G., Rosati, G., y Shokida, N. [-@kozlowski2020]. eph: Argentina’s permanent household survey data and manipulation utilities (manual). [Link de descarga](https://cloud.r-project.org/web/packages/eph/eph.pdf).  

- Minoldo, S., y Born, D. [-@Minoldo.Born2019]. Claroscuros: 9 años de datos bajo sospecha (EPH en Argentina entre 2007 y 2015). [Link de descarga](https://issuu.com/cieseditora/docs/claroscuros_minoldo-born).

## La Encuesta Permanente de Hogares. Características principales {#eph1}

La **Encuesta Permanente de Hogares** (EPH) se constituye como un programa nacional de producción sistemática y permanente de indicadores sociales que lleva a cabo el INDEC. que fundamentalmente permite conocer las características sociodemográficas y socioeconómicas de la población de manera periódica. Comenzó a aplicarse desde 1973, bajo una modalidad (puntual) que implicaba un doble relevamiento anual (mayo y octubre). Si bien hasta el año 1983 tenía una cobertura limitada al Gran Buenos Aires (GBA), paulatinamente fue ampliándose llegando en la actualidad a cubrir un total de 31 aglomerados:

- Gran La Plata 
- Bahía Blanca - Cerri 
- Gran Rosario
- Gran Santa Fé
- Gran Paraná
- Posadas
- Gran Resistencia
- Comodoro Rivadavia - Rada Tilly 
- Gran Mendoza
- Corrientes
- Gran Córdoba
- Concordia
- Formosa
- Neuquén – Plottier
- Santiago del Estero - La Banda
- Jujuy-Palpalá
- Río Gallegos
- Gran Catamarca
- Gran Salta
- La Rioja
- Gran San Luis
- Gran San Juan
- Gran Tucumán - Tafí Viejo
- Santa Rosa – Toay
- Ushuaia - Río Grande
- Ciudad Autónoma de Buenos Aires
- Partidos del GBA
- Mar del Plata - Batán
- Río Cuarto
- San Nicolás – Villa Constitución 
- Rawson – Trelew
- Viedma – Carmen de Patagones  

Respecto a la EPH puntual, existen distintos tipos de bases de datos oficiales publicadas, ordenadas según su nivel de complejidad y de desagregación de las variables: Base r2 usuarias (R2U), Base usuaria (BU), Base de trabajo (BT), Base usuaria ampliada (BUA).

### Características de la EPH continua
<!--habría que citar más acá todo esto-->
A partir de 2003, el INDEC reformuló integralmente a la EPH, dando lugar a lo que se conoce como "EPH continua". Específicamente podemos hablar de los siguientes cambios: 

* *Reformulación temática*: se realizaron cambios en la forma de captación de las principales dimensiones relevadas a los fines de medir en forma más precisa aquellos procesos sociales que sufrieron transformaciones en la última década del siglo XX.

* *Reformulación muestral*: la periodicidad de la encuesta paso a ser de cuatro estimaciones por año (trimestral), ampliando la cobertura geográfica y manteniéndose el diseño de panel (esquema de rotación de los hogares).

Actualmente la EPH releva específicamente a 31 aglomerados urbanos que representan el 70% de la población urbana del país. El instrumento de recolección consta de tres cuestionarios (vivienda, hogares y personas), aunque las bases de microdatos se presentan bajo el formato de hogares e individuos. Las principales dimensiones relevadas son:

* situación laboral
* características demográficas básicas
* migración
* características habitacionales
* educación
* ingresos  

El esquema de rotación del diseño de panel (2-2-2), implica que las viviendas de un área ingresan a la muestra para ser encuestadas en dos trimestres consecutivos, en el mes y semana asignados a esa área. Luego, se retiran por dos trimestres consecutivos y vuelven a la muestra para ser encuestadas en dos trimestres consecutivos en el mes y semana asignados a esa área.  

### La EPH como fuente de análisis de la estructura de clases

La EPH presenta, al menos, tres características fundamentales que la transforman en una fuente de datos predilecta para el estudio de la estructura de clases:

1. *Variables sociolaborales*: la encuesta cuenta con un conjunto de variables que relevan la dimensión sociolaboral que no son frecuentemente relevadas en otras las encuestas de hogares. Principalmente nos referimos a variables que permiten determinar la posición que los individuos ocupan en las relaciones de trabajo: la condición de actividad, la categoría ocupacional, la ocupación, el sector de actividad, la rama de actividad, el tamaño del establecimiento en el cual se ejerce el trabajo, la supervisión del empleo de otros trabajadores, etc. Todas estás variables son centrales para la construcción de la mayoría de los nomencladores socio-ocupacionales y esquemas de clase, más allá de su filiación teórica.

2. *Relevamiento continuo y generalizado*: el hecho de que la construcción de la información se realice en forma periódica y desde hace años, permite que la comparabilidad a lo largo del tiempo (no sin dificultades en los "empalmes" entre momentos en los que hubo cambios metodológicos significativos). A su vez, al relevar aproximadamente al 70% de los aglomerados urbanos de la Argentina, permite distintos niveles de comparabilidad a nivel regional, de ciudades u otras áreas geográficas.

3. *Relevamiento de otras dimensiones*: finalmente, el relevamiento de otras dimensiones tales como las características demográficas y de composición de los hogares, el hábitat, el logro educativo o los ingresos, permite la puesta en relación del posicionamiento de clase con otros tópicos centrales de la desigualdad.

Diversos trabajos recientes han utilizado la EPH, que, desde un enfoque de clases, tales como los de @Benza2016; @ChavezMolina2015; @Dalle.Stiberman2017; @Palomino.Dalle2012; @Pla.etal2018; @Sacco2019 y @Solis.etal2019. 

## Comenzando a utilizar la EPH {#eph2}

Existen diversas formas de descargar y abrir las bases de micro-datos de la EPH desde **`R`**. En primer lugar, a partir de la descarga manual desde la web de [INDEC](https://www.indec.gob.ar/indec/web/Institucional-Indec-BasesDeDatos){target="_blank"}. Este método permite acceder a todas las bases de la EPH disponibles oficialmente, desde 1974 a la actualidad. En segundo lugar, de acuerdo a algún programa. En este capítulo revisaremos el uso del paquete [eph](https://github.com/holatam/eph){target="_blank"} [@kozlowski2020], que nos simplifica el trabajo de acceso a micro-datos, así como el armado de _pools_ de datos. Temporalmente, su única limitación es que sólo podemos descargar las bases a partir de la primera onda de 1996. Utilizaremos las siguientes librerías de **`R`**:


```r
library(tidyverse)
library(eph)
library(haven)
library(foreign)
library(rmarkdown)
```
### El "método clásico"

#### Bases 2016-2020

Dependiendo del período que necesitemos analizar, encontraremos que las bases a descargar se encuentran en distintos formatos de archivo. Como ejemplo, podemos comenzar por una primera prueba descargando la base correspondiente al tercer trimestre de 2019 en formato `.txt` ([link de descarga](https://www.indec.gob.ar/ftp/cuadros/menusuperior/eph/EPH_usu_3_Trim_2019_txt.zip){target="_blank"}). El archivo `.zip` que descarguemos contendrá un archivo `.txt` referido a la base de individuos (Usu_individual_T319.txt) y otro referido a la base de hogares (Usu_hogar_T319.txt).

Como buena práctica en la organización de la información que vamos utilizando, es recomendable alojar los archivos (en este caso las bases que descarguemos) en la carpeta del proyecto con el que estemos trabajando en __`RStudio`__ (en este caso, le hemos puesto el nombre "bases"). En este caso utilizaremos el comando ```read.csv2```, ya que nos permite importar archivos de texto plano delimitados. Señalamos que el delimitador es `;` y que el archivo cuenta en su línea superior con los nombres de las variables ```(header = TRUE)```:


```r
eph_ind_319 <- read.csv2("bases/Usu_individual_T319.txt", header = TRUE, sep = ";",
    dec = ",")
```

Observando los primeros 15 registros de la base podemos dar cuenta que la misma se ha cargado correctamente y explorar las distintas variables que contiene. 

<br>

<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["CODUSU"],"name":[1],"type":["chr"],"align":["left"]},{"label":["ANO4"],"name":[2],"type":["int"],"align":["right"]},{"label":["TRIMESTRE"],"name":[3],"type":["int"],"align":["right"]},{"label":["NRO_HOGAR"],"name":[4],"type":["int"],"align":["right"]},{"label":["COMPONENTE"],"name":[5],"type":["int"],"align":["right"]},{"label":["H15"],"name":[6],"type":["int"],"align":["right"]},{"label":["REGION"],"name":[7],"type":["int"],"align":["right"]},{"label":["MAS_500"],"name":[8],"type":["chr"],"align":["left"]},{"label":["AGLOMERADO"],"name":[9],"type":["int"],"align":["right"]},{"label":["PONDERA"],"name":[10],"type":["int"],"align":["right"]},{"label":["CH03"],"name":[11],"type":["int"],"align":["right"]},{"label":["CH04"],"name":[12],"type":["int"],"align":["right"]},{"label":["CH05"],"name":[13],"type":["chr"],"align":["left"]},{"label":["CH06"],"name":[14],"type":["int"],"align":["right"]},{"label":["CH07"],"name":[15],"type":["int"],"align":["right"]},{"label":["CH08"],"name":[16],"type":["int"],"align":["right"]},{"label":["CH09"],"name":[17],"type":["int"],"align":["right"]},{"label":["CH10"],"name":[18],"type":["int"],"align":["right"]},{"label":["CH11"],"name":[19],"type":["int"],"align":["right"]},{"label":["CH12"],"name":[20],"type":["int"],"align":["right"]},{"label":["CH13"],"name":[21],"type":["int"],"align":["right"]},{"label":["CH14"],"name":[22],"type":["int"],"align":["right"]},{"label":["CH15"],"name":[23],"type":["int"],"align":["right"]},{"label":["CH15_COD"],"name":[24],"type":["int"],"align":["right"]},{"label":["CH16"],"name":[25],"type":["int"],"align":["right"]},{"label":["CH16_COD"],"name":[26],"type":["int"],"align":["right"]},{"label":["NIVEL_ED"],"name":[27],"type":["int"],"align":["right"]},{"label":["ESTADO"],"name":[28],"type":["int"],"align":["right"]},{"label":["CAT_OCUP"],"name":[29],"type":["int"],"align":["right"]},{"label":["CAT_INAC"],"name":[30],"type":["int"],"align":["right"]},{"label":["IMPUTA"],"name":[31],"type":["int"],"align":["right"]},{"label":["PP02C1"],"name":[32],"type":["int"],"align":["right"]},{"label":["PP02C2"],"name":[33],"type":["int"],"align":["right"]},{"label":["PP02C3"],"name":[34],"type":["int"],"align":["right"]},{"label":["PP02C4"],"name":[35],"type":["int"],"align":["right"]},{"label":["PP02C5"],"name":[36],"type":["int"],"align":["right"]},{"label":["PP02C6"],"name":[37],"type":["int"],"align":["right"]},{"label":["PP02C7"],"name":[38],"type":["int"],"align":["right"]},{"label":["PP02C8"],"name":[39],"type":["int"],"align":["right"]},{"label":["PP02E"],"name":[40],"type":["int"],"align":["right"]},{"label":["PP02H"],"name":[41],"type":["int"],"align":["right"]},{"label":["PP02I"],"name":[42],"type":["int"],"align":["right"]},{"label":["PP03C"],"name":[43],"type":["int"],"align":["right"]},{"label":["PP03D"],"name":[44],"type":["int"],"align":["right"]},{"label":["PP3E_TOT"],"name":[45],"type":["int"],"align":["right"]},{"label":["PP3F_TOT"],"name":[46],"type":["int"],"align":["right"]},{"label":["PP03G"],"name":[47],"type":["int"],"align":["right"]},{"label":["PP03H"],"name":[48],"type":["int"],"align":["right"]},{"label":["PP03I"],"name":[49],"type":["int"],"align":["right"]},{"label":["PP03J"],"name":[50],"type":["int"],"align":["right"]},{"label":["INTENSI"],"name":[51],"type":["int"],"align":["right"]},{"label":["PP04A"],"name":[52],"type":["int"],"align":["right"]},{"label":["PP04B_COD"],"name":[53],"type":["int"],"align":["right"]},{"label":["PP04B1"],"name":[54],"type":["int"],"align":["right"]},{"label":["PP04B2"],"name":[55],"type":["int"],"align":["right"]},{"label":["PP04B3_MES"],"name":[56],"type":["int"],"align":["right"]},{"label":["PP04B3_ANO"],"name":[57],"type":["int"],"align":["right"]},{"label":["PP04B3_DIA"],"name":[58],"type":["int"],"align":["right"]},{"label":["PP04C"],"name":[59],"type":["int"],"align":["right"]},{"label":["PP04C99"],"name":[60],"type":["int"],"align":["right"]},{"label":["PP04D_COD"],"name":[61],"type":["int"],"align":["right"]},{"label":["PP04G"],"name":[62],"type":["int"],"align":["right"]},{"label":["PP05B2_MES"],"name":[63],"type":["int"],"align":["right"]},{"label":["PP05B2_ANO"],"name":[64],"type":["int"],"align":["right"]},{"label":["PP05B2_DIA"],"name":[65],"type":["int"],"align":["right"]},{"label":["PP05C_1"],"name":[66],"type":["int"],"align":["right"]},{"label":["PP05C_2"],"name":[67],"type":["int"],"align":["right"]},{"label":["PP05C_3"],"name":[68],"type":["int"],"align":["right"]},{"label":["PP05E"],"name":[69],"type":["int"],"align":["right"]},{"label":["PP05F"],"name":[70],"type":["int"],"align":["right"]},{"label":["PP05H"],"name":[71],"type":["int"],"align":["right"]},{"label":["PP06A"],"name":[72],"type":["int"],"align":["right"]},{"label":["PP06C"],"name":[73],"type":["int"],"align":["right"]},{"label":["PP06D"],"name":[74],"type":["int"],"align":["right"]},{"label":["PP06E"],"name":[75],"type":["int"],"align":["right"]},{"label":["PP06H"],"name":[76],"type":["int"],"align":["right"]},{"label":["PP07A"],"name":[77],"type":["int"],"align":["right"]},{"label":["PP07C"],"name":[78],"type":["int"],"align":["right"]},{"label":["PP07D"],"name":[79],"type":["int"],"align":["right"]},{"label":["PP07E"],"name":[80],"type":["int"],"align":["right"]},{"label":["PP07F1"],"name":[81],"type":["int"],"align":["right"]},{"label":["PP07F2"],"name":[82],"type":["int"],"align":["right"]},{"label":["PP07F3"],"name":[83],"type":["int"],"align":["right"]},{"label":["PP07F4"],"name":[84],"type":["int"],"align":["right"]},{"label":["PP07F5"],"name":[85],"type":["int"],"align":["right"]},{"label":["PP07G1"],"name":[86],"type":["int"],"align":["right"]},{"label":["PP07G2"],"name":[87],"type":["int"],"align":["right"]},{"label":["PP07G3"],"name":[88],"type":["int"],"align":["right"]},{"label":["PP07G4"],"name":[89],"type":["int"],"align":["right"]},{"label":["PP07G_59"],"name":[90],"type":["int"],"align":["right"]},{"label":["PP07H"],"name":[91],"type":["int"],"align":["right"]},{"label":["PP07I"],"name":[92],"type":["int"],"align":["right"]},{"label":["PP07J"],"name":[93],"type":["int"],"align":["right"]},{"label":["PP07K"],"name":[94],"type":["int"],"align":["right"]},{"label":["PP08D1"],"name":[95],"type":["int"],"align":["right"]},{"label":["PP08D4"],"name":[96],"type":["int"],"align":["right"]},{"label":["PP08F1"],"name":[97],"type":["int"],"align":["right"]},{"label":["PP08F2"],"name":[98],"type":["int"],"align":["right"]},{"label":["PP08J1"],"name":[99],"type":["int"],"align":["right"]},{"label":["PP08J2"],"name":[100],"type":["int"],"align":["right"]},{"label":["PP08J3"],"name":[101],"type":["int"],"align":["right"]},{"label":["PP09A"],"name":[102],"type":["int"],"align":["right"]},{"label":["PP09A_ESP"],"name":[103],"type":["chr"],"align":["left"]},{"label":["PP09B"],"name":[104],"type":["int"],"align":["right"]},{"label":["PP09C"],"name":[105],"type":["int"],"align":["right"]},{"label":["PP09C_ESP"],"name":[106],"type":["chr"],"align":["left"]},{"label":["PP10A"],"name":[107],"type":["int"],"align":["right"]},{"label":["PP10C"],"name":[108],"type":["int"],"align":["right"]},{"label":["PP10D"],"name":[109],"type":["int"],"align":["right"]},{"label":["PP10E"],"name":[110],"type":["int"],"align":["right"]},{"label":["PP11A"],"name":[111],"type":["int"],"align":["right"]},{"label":["PP11B_COD"],"name":[112],"type":["int"],"align":["right"]},{"label":["PP11B1"],"name":[113],"type":["int"],"align":["right"]},{"label":["PP11B2_MES"],"name":[114],"type":["int"],"align":["right"]},{"label":["PP11B2_ANO"],"name":[115],"type":["int"],"align":["right"]},{"label":["PP11B2_DIA"],"name":[116],"type":["int"],"align":["right"]},{"label":["PP11C"],"name":[117],"type":["int"],"align":["right"]},{"label":["PP11C99"],"name":[118],"type":["int"],"align":["right"]},{"label":["PP11D_COD"],"name":[119],"type":["int"],"align":["right"]},{"label":["PP11G_ANO"],"name":[120],"type":["int"],"align":["right"]},{"label":["PP11G_MES"],"name":[121],"type":["int"],"align":["right"]},{"label":["PP11G_DIA"],"name":[122],"type":["int"],"align":["right"]},{"label":["PP11L"],"name":[123],"type":["int"],"align":["right"]},{"label":["PP11L1"],"name":[124],"type":["int"],"align":["right"]},{"label":["PP11M"],"name":[125],"type":["int"],"align":["right"]},{"label":["PP11N"],"name":[126],"type":["int"],"align":["right"]},{"label":["PP11O"],"name":[127],"type":["int"],"align":["right"]},{"label":["PP11P"],"name":[128],"type":["int"],"align":["right"]},{"label":["PP11Q"],"name":[129],"type":["int"],"align":["right"]},{"label":["PP11R"],"name":[130],"type":["int"],"align":["right"]},{"label":["PP11S"],"name":[131],"type":["int"],"align":["right"]},{"label":["PP11T"],"name":[132],"type":["int"],"align":["right"]},{"label":["P21"],"name":[133],"type":["int"],"align":["right"]},{"label":["DECOCUR"],"name":[134],"type":["int"],"align":["right"]},{"label":["IDECOCUR"],"name":[135],"type":["int"],"align":["right"]},{"label":["RDECOCUR"],"name":[136],"type":["int"],"align":["right"]},{"label":["GDECOCUR"],"name":[137],"type":["int"],"align":["right"]},{"label":["PDECOCUR"],"name":[138],"type":["int"],"align":["right"]},{"label":["ADECOCUR"],"name":[139],"type":["int"],"align":["right"]},{"label":["PONDIIO"],"name":[140],"type":["int"],"align":["right"]},{"label":["TOT_P12"],"name":[141],"type":["int"],"align":["right"]},{"label":["P47T"],"name":[142],"type":["int"],"align":["right"]},{"label":["DECINDR"],"name":[143],"type":["int"],"align":["right"]},{"label":["IDECINDR"],"name":[144],"type":["int"],"align":["right"]},{"label":["RDECINDR"],"name":[145],"type":["int"],"align":["right"]},{"label":["GDECINDR"],"name":[146],"type":["int"],"align":["right"]},{"label":["PDECINDR"],"name":[147],"type":["int"],"align":["right"]},{"label":["ADECINDR"],"name":[148],"type":["int"],"align":["right"]},{"label":["PONDII"],"name":[149],"type":["int"],"align":["right"]},{"label":["V2_M"],"name":[150],"type":["int"],"align":["right"]},{"label":["V3_M"],"name":[151],"type":["int"],"align":["right"]},{"label":["V4_M"],"name":[152],"type":["int"],"align":["right"]},{"label":["V5_M"],"name":[153],"type":["int"],"align":["right"]},{"label":["V8_M"],"name":[154],"type":["int"],"align":["right"]},{"label":["V9_M"],"name":[155],"type":["int"],"align":["right"]},{"label":["V10_M"],"name":[156],"type":["int"],"align":["right"]},{"label":["V11_M"],"name":[157],"type":["int"],"align":["right"]},{"label":["V12_M"],"name":[158],"type":["int"],"align":["right"]},{"label":["V18_M"],"name":[159],"type":["int"],"align":["right"]},{"label":["V19_AM"],"name":[160],"type":["int"],"align":["right"]},{"label":["V21_M"],"name":[161],"type":["int"],"align":["right"]},{"label":["T_VI"],"name":[162],"type":["int"],"align":["right"]},{"label":["ITF"],"name":[163],"type":["int"],"align":["right"]},{"label":["DECIFR"],"name":[164],"type":["int"],"align":["right"]},{"label":["IDECIFR"],"name":[165],"type":["int"],"align":["right"]},{"label":["RDECIFR"],"name":[166],"type":["int"],"align":["right"]},{"label":["GDECIFR"],"name":[167],"type":["int"],"align":["right"]},{"label":["PDECIFR"],"name":[168],"type":["int"],"align":["right"]},{"label":["ADECIFR"],"name":[169],"type":["int"],"align":["right"]},{"label":["IPCF"],"name":[170],"type":["dbl"],"align":["right"]},{"label":["DECCFR"],"name":[171],"type":["int"],"align":["right"]},{"label":["IDECCFR"],"name":[172],"type":["int"],"align":["right"]},{"label":["RDECCFR"],"name":[173],"type":["int"],"align":["right"]},{"label":["GDECCFR"],"name":[174],"type":["int"],"align":["right"]},{"label":["PDECCFR"],"name":[175],"type":["int"],"align":["right"]},{"label":["ADECCFR"],"name":[176],"type":["int"],"align":["right"]},{"label":["PONDIH"],"name":[177],"type":["int"],"align":["right"]}],"data":[{"1":"TQRMNOQXYHLMMLCDEFIAH00634891","2":"2019","3":"3","4":"1","5":"1","6":"1","7":"43","8":"S","9":"2","10":"547","11":"1","12":"1","13":"12/04/1963","14":"56","15":"2","16":"1","17":"1","18":"2","19":"0","20":"4","21":"1","22":"NA","23":"1","24":"NA","25":"1","26":"NA","27":"4","28":"1","29":"3","30":"0","31":"0","32":"0","33":"0","34":"0","35":"0","36":"0","37":"0","38":"0","39":"0","40":"0","41":"0","42":"0","43":"0","44":"0","45":"0","46":"0","47":"2","48":"0","49":"2","50":"2","51":"4","52":"1","53":"8401","54":"2","55":"0","56":"0","57":"0","58":"0","59":"7","60":"0","61":"34323","62":"4","63":"0","64":"0","65":"0","66":"0","67":"0","68":"0","69":"0","70":"0","71":"0","72":"0","73":"0","74":"0","75":"0","76":"0","77":"6","78":"2","79":"0","80":"0","81":"2","82":"2","83":"2","84":"2","85":"5","86":"1","87":"1","88":"1","89":"1","90":"0","91":"1","92":"0","93":"1","94":"1","95":"28000","96":"0","97":"0","98":"0","99":"0","100":"0","101":"0","102":"0","103":"","104":"0","105":"0","106":"","107":"NA","108":"NA","109":"NA","110":"NA","111":"NA","112":"NA","113":"NA","114":"NA","115":"NA","116":"NA","117":"NA","118":"NA","119":"NA","120":"NA","121":"NA","122":"NA","123":"NA","124":"NA","125":"NA","126":"NA","127":"NA","128":"NA","129":"NA","130":"NA","131":"NA","132":"NA","133":"28000","134":"7","135":"8","136":"7","137":"7","138":"NA","139":"7","140":"717","141":"700","142":"28700","143":"7","144":"7","145":"7","146":"7","147":"NA","148":"7","149":"859","150":"0","151":"0","152":"0","153":"0","154":"0","155":"0","156":"0","157":"0","158":"0","159":"0","160":"0","161":"0","162":"0","163":"0","164":"NA","165":"NA","166":"NA","167":"NA","168":"NA","169":"NA","170":"0","171":"NA","172":"NA","173":"NA","174":"NA","175":"NA","176":"NA","177":"0"},{"1":"TQRMNOQXYHLMMLCDEFIAH00634891","2":"2019","3":"3","4":"1","5":"2","6":"1","7":"43","8":"S","9":"2","10":"547","11":"2","12":"2","13":"24/09/1972","14":"46","15":"2","16":"1","17":"1","18":"2","19":"0","20":"4","21":"2","22":"3","23":"1","24":"NA","25":"1","26":"NA","27":"3","28":"1","29":"3","30":"0","31":"0","32":"0","33":"0","34":"0","35":"0","36":"0","37":"0","38":"0","39":"0","40":"0","41":"0","42":"0","43":"2","44":"2","45":"20","46":"9","47":"2","48":"0","49":"2","50":"1","51":"2","52":"2","53":"9700","54":"1","55":"2","56":"0","57":"1","58":"0","59":"0","60":"0","61":"55314","62":"0","63":"0","64":"0","65":"0","66":"0","67":"0","68":"0","69":"0","70":"0","71":"0","72":"0","73":"0","74":"0","75":"0","76":"0","77":"0","78":"0","79":"0","80":"0","81":"2","82":"2","83":"2","84":"2","85":"5","86":"1","87":"1","88":"1","89":"1","90":"0","91":"1","92":"0","93":"1","94":"1","95":"9500","96":"0","97":"0","98":"0","99":"0","100":"0","101":"0","102":"0","103":"","104":"0","105":"0","106":"","107":"NA","108":"NA","109":"NA","110":"NA","111":"NA","112":"NA","113":"NA","114":"NA","115":"NA","116":"NA","117":"NA","118":"NA","119":"NA","120":"NA","121":"NA","122":"NA","123":"NA","124":"NA","125":"NA","126":"NA","127":"NA","128":"NA","129":"NA","130":"NA","131":"NA","132":"NA","133":"9500","134":"2","135":"3","136":"2","137":"2","138":"NA","139":"3","140":"817","141":"3600","142":"13100","143":"4","144":"4","145":"4","146":"4","147":"NA","148":"4","149":"817","150":"0","151":"0","152":"0","153":"0","154":"0","155":"0","156":"0","157":"0","158":"0","159":"0","160":"0","161":"0","162":"0","163":"0","164":"NA","165":"NA","166":"NA","167":"NA","168":"NA","169":"NA","170":"0","171":"NA","172":"NA","173":"NA","174":"NA","175":"NA","176":"NA","177":"0"},{"1":"TQRMNOQXYHLMMLCDEFIAH00634891","2":"2019","3":"3","4":"1","5":"3","6":"1","7":"43","8":"S","9":"2","10":"547","11":"3","12":"2","13":"14/09/1998","14":"20","15":"1","16":"1","17":"1","18":"2","19":"0","20":"7","21":"2","22":"1","23":"1","24":"NA","25":"1","26":"NA","27":"5","28":"1","29":"3","30":"0","31":"0","32":"0","33":"0","34":"0","35":"0","36":"0","37":"0","38":"0","39":"0","40":"0","41":"0","42":"0","43":"1","44":"0","45":"10","46":"0","47":"1","48":"1","49":"1","50":"1","51":"1","52":"2","53":"1009","54":"2","55":"0","56":"0","57":"0","58":"0","59":"5","60":"0","61":"20333","62":"1","63":"0","64":"0","65":"0","66":"0","67":"0","68":"0","69":"0","70":"0","71":"0","72":"0","73":"0","74":"0","75":"0","76":"0","77":"5","78":"2","79":"0","80":"0","81":"2","82":"2","83":"2","84":"2","85":"5","86":"2","87":"2","88":"2","89":"2","90":"5","91":"2","92":"2","93":"2","94":"4","95":"0","96":"0","97":"-9","98":"0","99":"0","100":"0","101":"0","102":"0","103":"","104":"0","105":"0","106":"","107":"NA","108":"NA","109":"NA","110":"NA","111":"NA","112":"NA","113":"NA","114":"NA","115":"NA","116":"NA","117":"NA","118":"NA","119":"NA","120":"NA","121":"NA","122":"NA","123":"NA","124":"NA","125":"NA","126":"NA","127":"NA","128":"NA","129":"NA","130":"NA","131":"NA","132":"NA","133":"-9","134":"12","135":"12","136":"12","137":"12","138":"NA","139":"12","140":"0","141":"0","142":"-9","143":"12","144":"12","145":"12","146":"12","147":"NA","148":"12","149":"0","150":"0","151":"0","152":"0","153":"0","154":"0","155":"0","156":"0","157":"0","158":"0","159":"0","160":"0","161":"0","162":"0","163":"0","164":"NA","165":"NA","166":"NA","167":"NA","168":"NA","169":"NA","170":"0","171":"NA","172":"NA","173":"NA","174":"NA","175":"NA","176":"NA","177":"0"},{"1":"TQRMNOQXYHLMMLCDEFIAH00634891","2":"2019","3":"3","4":"1","5":"4","6":"1","7":"43","8":"S","9":"2","10":"547","11":"3","12":"1","13":"11/04/2007","14":"12","15":"5","16":"1","17":"1","18":"1","19":"2","20":"4","21":"2","22":"0","23":"1","24":"NA","25":"1","26":"NA","27":"3","28":"3","29":"0","30":"3","31":"0","32":"0","33":"0","34":"0","35":"0","36":"0","37":"0","38":"0","39":"0","40":"0","41":"2","42":"2","43":"NA","44":"NA","45":"NA","46":"NA","47":"NA","48":"NA","49":"NA","50":"NA","51":"NA","52":"NA","53":"NA","54":"NA","55":"NA","56":"NA","57":"NA","58":"NA","59":"NA","60":"NA","61":"NA","62":"NA","63":"NA","64":"NA","65":"NA","66":"NA","67":"NA","68":"NA","69":"NA","70":"NA","71":"NA","72":"NA","73":"NA","74":"NA","75":"NA","76":"NA","77":"NA","78":"NA","79":"NA","80":"NA","81":"NA","82":"NA","83":"NA","84":"NA","85":"NA","86":"NA","87":"NA","88":"NA","89":"NA","90":"NA","91":"NA","92":"NA","93":"NA","94":"NA","95":"NA","96":"NA","97":"NA","98":"NA","99":"NA","100":"NA","101":"NA","102":"NA","103":"","104":"NA","105":"NA","106":"","107":"NA","108":"NA","109":"NA","110":"NA","111":"NA","112":"NA","113":"NA","114":"NA","115":"NA","116":"NA","117":"NA","118":"NA","119":"NA","120":"NA","121":"NA","122":"NA","123":"NA","124":"NA","125":"NA","126":"NA","127":"NA","128":"NA","129":"NA","130":"NA","131":"NA","132":"NA","133":"0","134":"0","135":"0","136":"0","137":"0","138":"NA","139":"0","140":"547","141":"0","142":"0","143":"0","144":"0","145":"0","146":"0","147":"NA","148":"0","149":"547","150":"0","151":"0","152":"0","153":"0","154":"0","155":"0","156":"0","157":"0","158":"0","159":"0","160":"0","161":"0","162":"0","163":"0","164":"NA","165":"NA","166":"NA","167":"NA","168":"NA","169":"NA","170":"0","171":"NA","172":"NA","173":"NA","174":"NA","175":"NA","176":"NA","177":"0"},{"1":"TQRMNOQSTHLOLRCDEFIAH00634843","2":"2019","3":"3","4":"1","5":"2","6":"1","7":"43","8":"S","9":"2","10":"584","11":"2","12":"2","13":"03/03/1981","14":"38","15":"2","16":"4","17":"1","18":"2","19":"0","20":"4","21":"2","22":"2","23":"4","24":"202","25":"1","26":"NA","27":"3","28":"1","29":"2","30":"0","31":"0","32":"0","33":"0","34":"0","35":"0","36":"0","37":"0","38":"0","39":"0","40":"0","41":"0","42":"0","43":"1","44":"0","45":"54","46":"0","47":"2","48":"0","49":"2","50":"2","51":"3","52":"2","53":"4803","54":"2","55":"0","56":"0","57":"0","58":"0","59":"2","60":"0","61":"30113","62":"1","63":"0","64":"0","65":"0","66":"1","67":"1","68":"1","69":"1","70":"7","71":"5","72":"1","73":"0","74":"-9","75":"3","76":"1","77":"0","78":"0","79":"0","80":"0","81":"0","82":"0","83":"0","84":"0","85":"0","86":"0","87":"0","88":"0","89":"0","90":"0","91":"0","92":"0","93":"0","94":"0","95":"0","96":"0","97":"0","98":"0","99":"0","100":"0","101":"0","102":"0","103":"","104":"0","105":"0","106":"","107":"NA","108":"NA","109":"NA","110":"NA","111":"NA","112":"NA","113":"NA","114":"NA","115":"NA","116":"NA","117":"NA","118":"NA","119":"NA","120":"NA","121":"NA","122":"NA","123":"NA","124":"NA","125":"NA","126":"NA","127":"NA","128":"NA","129":"NA","130":"NA","131":"NA","132":"NA","133":"-9","134":"12","135":"12","136":"12","137":"12","138":"NA","139":"12","140":"0","141":"0","142":"-9","143":"12","144":"12","145":"12","146":"12","147":"NA","148":"12","149":"0","150":"0","151":"0","152":"0","153":"7125","154":"0","155":"0","156":"0","157":"0","158":"0","159":"0","160":"0","161":"0","162":"7125","163":"0","164":"NA","165":"NA","166":"NA","167":"NA","168":"NA","169":"NA","170":"0","171":"NA","172":"NA","173":"NA","174":"NA","175":"NA","176":"NA","177":"0"},{"1":"TQRMNOQSTHLOLRCDEFIAH00634843","2":"2019","3":"3","4":"1","5":"3","6":"0","7":"43","8":"S","9":"2","10":"584","11":"3","12":"2","13":"17/12/2011","14":"7","15":"5","16":"4","17":"1","18":"1","19":"1","20":"2","21":"2","22":"1","23":"1","24":"NA","25":"1","26":"NA","27":"1","28":"4","29":"0","30":"3","31":"0","32":"0","33":"0","34":"0","35":"0","36":"0","37":"0","38":"0","39":"0","40":"0","41":"0","42":"0","43":"NA","44":"NA","45":"NA","46":"NA","47":"NA","48":"NA","49":"NA","50":"NA","51":"NA","52":"NA","53":"NA","54":"NA","55":"NA","56":"NA","57":"NA","58":"NA","59":"NA","60":"NA","61":"NA","62":"NA","63":"NA","64":"NA","65":"NA","66":"NA","67":"NA","68":"NA","69":"NA","70":"NA","71":"NA","72":"NA","73":"NA","74":"NA","75":"NA","76":"NA","77":"NA","78":"NA","79":"NA","80":"NA","81":"NA","82":"NA","83":"NA","84":"NA","85":"NA","86":"NA","87":"NA","88":"NA","89":"NA","90":"NA","91":"NA","92":"NA","93":"NA","94":"NA","95":"NA","96":"NA","97":"NA","98":"NA","99":"NA","100":"NA","101":"NA","102":"NA","103":"","104":"NA","105":"NA","106":"","107":"NA","108":"NA","109":"NA","110":"NA","111":"NA","112":"NA","113":"NA","114":"NA","115":"NA","116":"NA","117":"NA","118":"NA","119":"NA","120":"NA","121":"NA","122":"NA","123":"NA","124":"NA","125":"NA","126":"NA","127":"NA","128":"NA","129":"NA","130":"NA","131":"NA","132":"NA","133":"0","134":"0","135":"0","136":"0","137":"0","138":"NA","139":"0","140":"584","141":"0","142":"0","143":"0","144":"0","145":"0","146":"0","147":"NA","148":"0","149":"584","150":"0","151":"0","152":"0","153":"0","154":"0","155":"0","156":"0","157":"0","158":"0","159":"0","160":"0","161":"0","162":"0","163":"0","164":"NA","165":"NA","166":"NA","167":"NA","168":"NA","169":"NA","170":"0","171":"NA","172":"NA","173":"NA","174":"NA","175":"NA","176":"NA","177":"0"},{"1":"TQRMNOQSTHLOLRCDEFIAH00634843","2":"2019","3":"3","4":"1","5":"4","6":"0","7":"43","8":"S","9":"2","10":"584","11":"3","12":"1","13":"10/12/2013","14":"5","15":"5","16":"4","17":"2","18":"1","19":"1","20":"1","21":"2","22":"4","23":"1","24":"NA","25":"1","26":"NA","27":"7","28":"4","29":"0","30":"5","31":"0","32":"0","33":"0","34":"0","35":"0","36":"0","37":"0","38":"0","39":"0","40":"0","41":"0","42":"0","43":"NA","44":"NA","45":"NA","46":"NA","47":"NA","48":"NA","49":"NA","50":"NA","51":"NA","52":"NA","53":"NA","54":"NA","55":"NA","56":"NA","57":"NA","58":"NA","59":"NA","60":"NA","61":"NA","62":"NA","63":"NA","64":"NA","65":"NA","66":"NA","67":"NA","68":"NA","69":"NA","70":"NA","71":"NA","72":"NA","73":"NA","74":"NA","75":"NA","76":"NA","77":"NA","78":"NA","79":"NA","80":"NA","81":"NA","82":"NA","83":"NA","84":"NA","85":"NA","86":"NA","87":"NA","88":"NA","89":"NA","90":"NA","91":"NA","92":"NA","93":"NA","94":"NA","95":"NA","96":"NA","97":"NA","98":"NA","99":"NA","100":"NA","101":"NA","102":"NA","103":"","104":"NA","105":"NA","106":"","107":"NA","108":"NA","109":"NA","110":"NA","111":"NA","112":"NA","113":"NA","114":"NA","115":"NA","116":"NA","117":"NA","118":"NA","119":"NA","120":"NA","121":"NA","122":"NA","123":"NA","124":"NA","125":"NA","126":"NA","127":"NA","128":"NA","129":"NA","130":"NA","131":"NA","132":"NA","133":"0","134":"0","135":"0","136":"0","137":"0","138":"NA","139":"0","140":"584","141":"0","142":"0","143":"0","144":"0","145":"0","146":"0","147":"NA","148":"0","149":"584","150":"0","151":"0","152":"0","153":"0","154":"0","155":"0","156":"0","157":"0","158":"0","159":"0","160":"0","161":"0","162":"0","163":"0","164":"NA","165":"NA","166":"NA","167":"NA","168":"NA","169":"NA","170":"0","171":"NA","172":"NA","173":"NA","174":"NA","175":"NA","176":"NA","177":"0"},{"1":"TQRMNOQSTHLOLRCDEFIAH00634843","2":"2019","3":"3","4":"1","5":"5","6":"0","7":"43","8":"S","9":"2","10":"584","11":"3","12":"1","13":"27/02/2016","14":"3","15":"5","16":"4","17":"2","18":"1","19":"1","20":"1","21":"2","22":"0","23":"1","24":"NA","25":"6","26":"NA","27":"7","28":"4","29":"0","30":"5","31":"0","32":"0","33":"0","34":"0","35":"0","36":"0","37":"0","38":"0","39":"0","40":"0","41":"0","42":"0","43":"NA","44":"NA","45":"NA","46":"NA","47":"NA","48":"NA","49":"NA","50":"NA","51":"NA","52":"NA","53":"NA","54":"NA","55":"NA","56":"NA","57":"NA","58":"NA","59":"NA","60":"NA","61":"NA","62":"NA","63":"NA","64":"NA","65":"NA","66":"NA","67":"NA","68":"NA","69":"NA","70":"NA","71":"NA","72":"NA","73":"NA","74":"NA","75":"NA","76":"NA","77":"NA","78":"NA","79":"NA","80":"NA","81":"NA","82":"NA","83":"NA","84":"NA","85":"NA","86":"NA","87":"NA","88":"NA","89":"NA","90":"NA","91":"NA","92":"NA","93":"NA","94":"NA","95":"NA","96":"NA","97":"NA","98":"NA","99":"NA","100":"NA","101":"NA","102":"NA","103":"","104":"NA","105":"NA","106":"","107":"NA","108":"NA","109":"NA","110":"NA","111":"NA","112":"NA","113":"NA","114":"NA","115":"NA","116":"NA","117":"NA","118":"NA","119":"NA","120":"NA","121":"NA","122":"NA","123":"NA","124":"NA","125":"NA","126":"NA","127":"NA","128":"NA","129":"NA","130":"NA","131":"NA","132":"NA","133":"0","134":"0","135":"0","136":"0","137":"0","138":"NA","139":"0","140":"584","141":"0","142":"0","143":"0","144":"0","145":"0","146":"0","147":"NA","148":"0","149":"584","150":"0","151":"0","152":"0","153":"0","154":"0","155":"0","156":"0","157":"0","158":"0","159":"0","160":"0","161":"0","162":"0","163":"0","164":"NA","165":"NA","166":"NA","167":"NA","168":"NA","169":"NA","170":"0","171":"NA","172":"NA","173":"NA","174":"NA","175":"NA","176":"NA","177":"0"},{"1":"TQRMNOSRQHLOLRCDEFIAH00634844","2":"2019","3":"3","4":"1","5":"1","6":"1","7":"43","8":"S","9":"2","10":"584","11":"1","12":"1","13":"15/07/1965","14":"54","15":"3","16":"4","17":"1","18":"2","19":"0","20":"2","21":"1","22":"NA","23":"3","24":"22","25":"1","26":"NA","27":"2","28":"1","29":"2","30":"0","31":"0","32":"0","33":"0","34":"0","35":"0","36":"0","37":"0","38":"0","39":"0","40":"0","41":"0","42":"0","43":"1","44":"0","45":"56","46":"0","47":"2","48":"0","49":"2","50":"2","51":"3","52":"2","53":"1009","54":"2","55":"0","56":"0","57":"0","58":"0","59":"2","60":"0","61":"30113","62":"1","63":"0","64":"0","65":"0","66":"1","67":"1","68":"1","69":"1","70":"7","71":"6","72":"1","73":"0","74":"-9","75":"3","76":"1","77":"0","78":"0","79":"0","80":"0","81":"0","82":"0","83":"0","84":"0","85":"0","86":"0","87":"0","88":"0","89":"0","90":"0","91":"0","92":"0","93":"0","94":"0","95":"0","96":"0","97":"0","98":"0","99":"0","100":"0","101":"0","102":"0","103":"","104":"0","105":"0","106":"","107":"NA","108":"NA","109":"NA","110":"NA","111":"NA","112":"NA","113":"NA","114":"NA","115":"NA","116":"NA","117":"NA","118":"NA","119":"NA","120":"NA","121":"NA","122":"NA","123":"NA","124":"NA","125":"NA","126":"NA","127":"NA","128":"NA","129":"NA","130":"NA","131":"NA","132":"NA","133":"-9","134":"12","135":"12","136":"12","137":"12","138":"NA","139":"12","140":"0","141":"0","142":"-9","143":"12","144":"12","145":"12","146":"12","147":"NA","148":"12","149":"0","150":"0","151":"0","152":"0","153":"0","154":"0","155":"0","156":"0","157":"0","158":"0","159":"0","160":"0","161":"0","162":"0","163":"0","164":"NA","165":"NA","166":"NA","167":"NA","168":"NA","169":"NA","170":"0","171":"NA","172":"NA","173":"NA","174":"NA","175":"NA","176":"NA","177":"0"},{"1":"TQRMNOSRQHLOLRCDEFIAH00634844","2":"2019","3":"3","4":"1","5":"2","6":"1","7":"43","8":"S","9":"2","10":"584","11":"3","12":"1","13":"19/08/2000","14":"19","15":"5","16":"4","17":"1","18":"1","19":"1","20":"4","21":"2","22":"5","23":"1","24":"NA","25":"1","26":"NA","27":"3","28":"1","29":"4","30":"0","31":"0","32":"0","33":"0","34":"0","35":"0","36":"0","37":"0","38":"0","39":"0","40":"0","41":"0","42":"0","43":"1","44":"0","45":"25","46":"0","47":"2","48":"0","49":"2","50":"2","51":"2","52":"2","53":"1009","54":"2","55":"0","56":"0","57":"0","58":"0","59":"2","60":"0","61":"30314","62":"1","63":"0","64":"1","65":"0","66":"0","67":"0","68":"0","69":"0","70":"0","71":"0","72":"0","73":"0","74":"0","75":"0","76":"0","77":"0","78":"0","79":"0","80":"0","81":"0","82":"0","83":"0","84":"0","85":"0","86":"0","87":"0","88":"0","89":"0","90":"0","91":"0","92":"0","93":"0","94":"0","95":"0","96":"0","97":"0","98":"0","99":"0","100":"0","101":"0","102":"0","103":"","104":"0","105":"0","106":"","107":"NA","108":"NA","109":"NA","110":"NA","111":"NA","112":"NA","113":"NA","114":"NA","115":"NA","116":"NA","117":"NA","118":"NA","119":"NA","120":"NA","121":"NA","122":"NA","123":"NA","124":"NA","125":"NA","126":"NA","127":"NA","128":"NA","129":"NA","130":"NA","131":"NA","132":"NA","133":"0","134":"0","135":"0","136":"0","137":"0","138":"NA","139":"0","140":"584","141":"0","142":"0","143":"0","144":"0","145":"0","146":"0","147":"NA","148":"0","149":"584","150":"0","151":"0","152":"0","153":"0","154":"0","155":"0","156":"0","157":"0","158":"0","159":"0","160":"0","161":"0","162":"0","163":"0","164":"NA","165":"NA","166":"NA","167":"NA","168":"NA","169":"NA","170":"0","171":"NA","172":"NA","173":"NA","174":"NA","175":"NA","176":"NA","177":"0"},{"1":"TQRMNOSRQHLOLRCDEFIAH00634844","2":"2019","3":"3","4":"1","5":"3","6":"1","7":"43","8":"S","9":"2","10":"584","11":"3","12":"2","13":"26/02/2006","14":"13","15":"5","16":"4","17":"1","18":"1","19":"1","20":"4","21":"2","22":"1","23":"1","24":"NA","25":"1","26":"NA","27":"3","28":"3","29":"0","30":"3","31":"0","32":"0","33":"0","34":"0","35":"0","36":"0","37":"0","38":"0","39":"0","40":"0","41":"2","42":"2","43":"NA","44":"NA","45":"NA","46":"NA","47":"NA","48":"NA","49":"NA","50":"NA","51":"NA","52":"NA","53":"NA","54":"NA","55":"NA","56":"NA","57":"NA","58":"NA","59":"NA","60":"NA","61":"NA","62":"NA","63":"NA","64":"NA","65":"NA","66":"NA","67":"NA","68":"NA","69":"NA","70":"NA","71":"NA","72":"NA","73":"NA","74":"NA","75":"NA","76":"NA","77":"NA","78":"NA","79":"NA","80":"NA","81":"NA","82":"NA","83":"NA","84":"NA","85":"NA","86":"NA","87":"NA","88":"NA","89":"NA","90":"NA","91":"NA","92":"NA","93":"NA","94":"NA","95":"NA","96":"NA","97":"NA","98":"NA","99":"NA","100":"NA","101":"NA","102":"NA","103":"","104":"NA","105":"NA","106":"","107":"NA","108":"NA","109":"NA","110":"NA","111":"NA","112":"NA","113":"NA","114":"NA","115":"NA","116":"NA","117":"NA","118":"NA","119":"NA","120":"NA","121":"NA","122":"NA","123":"NA","124":"NA","125":"NA","126":"NA","127":"NA","128":"NA","129":"NA","130":"NA","131":"NA","132":"NA","133":"0","134":"0","135":"0","136":"0","137":"0","138":"NA","139":"0","140":"584","141":"0","142":"0","143":"0","144":"0","145":"0","146":"0","147":"NA","148":"0","149":"584","150":"0","151":"0","152":"0","153":"0","154":"0","155":"0","156":"0","157":"0","158":"0","159":"0","160":"0","161":"0","162":"0","163":"0","164":"NA","165":"NA","166":"NA","167":"NA","168":"NA","169":"NA","170":"0","171":"NA","172":"NA","173":"NA","174":"NA","175":"NA","176":"NA","177":"0"},{"1":"TQRMNOSPWHJOLQCDEFIAH00611713","2":"2019","3":"3","4":"1","5":"1","6":"1","7":"43","8":"S","9":"2","10":"815","11":"1","12":"2","13":"25/01/1975","14":"44","15":"2","16":"4","17":"1","18":"1","19":"1","20":"4","21":"2","22":"2","23":"4","24":"221","25":"1","26":"NA","27":"3","28":"1","29":"3","30":"0","31":"0","32":"0","33":"0","34":"0","35":"0","36":"0","37":"0","38":"0","39":"0","40":"0","41":"0","42":"0","43":"1","44":"0","45":"15","46":"0","47":"2","48":"0","49":"2","50":"1","51":"2","52":"1","53":"8101","54":"2","55":"0","56":"0","57":"0","58":"0","59":"9","60":"0","61":"56314","62":"9","63":"0","64":"0","65":"0","66":"0","67":"0","68":"0","69":"0","70":"0","71":"0","72":"0","73":"0","74":"0","75":"0","76":"0","77":"5","78":"1","79":"9","80":"1","81":"2","82":"2","83":"2","84":"2","85":"5","86":"2","87":"2","88":"2","89":"2","90":"5","91":"2","92":"2","93":"1","94":"4","95":"5500","96":"0","97":"0","98":"0","99":"0","100":"0","101":"0","102":"0","103":"","104":"0","105":"0","106":"","107":"NA","108":"NA","109":"NA","110":"NA","111":"NA","112":"NA","113":"NA","114":"NA","115":"NA","116":"NA","117":"NA","118":"NA","119":"NA","120":"NA","121":"NA","122":"NA","123":"NA","124":"NA","125":"NA","126":"NA","127":"NA","128":"NA","129":"NA","130":"NA","131":"NA","132":"NA","133":"5500","134":"2","135":"2","136":"2","137":"2","138":"NA","139":"1","140":"973","141":"0","142":"7500","143":"2","144":"2","145":"2","146":"2","147":"NA","148":"2","149":"962","150":"0","151":"0","152":"0","153":"2000","154":"0","155":"0","156":"0","157":"0","158":"0","159":"0","160":"0","161":"0","162":"2000","163":"30000","164":"4","165":"5","166":"5","167":"4","168":"NA","169":"4","170":"7500","171":"3","172":"3","173":"2","174":"2","175":"NA","176":"2","177":"2202"},{"1":"TQRMNOSPWHJOLQCDEFIAH00611713","2":"2019","3":"3","4":"1","5":"2","6":"1","7":"43","8":"S","9":"2","10":"815","11":"3","12":"1","13":"21/06/2003","14":"16","15":"5","16":"4","17":"1","18":"1","19":"1","20":"4","21":"2","22":"4","23":"4","24":"221","25":"1","26":"NA","27":"3","28":"3","29":"0","30":"3","31":"0","32":"0","33":"0","34":"0","35":"0","36":"0","37":"0","38":"0","39":"0","40":"0","41":"2","42":"2","43":"NA","44":"NA","45":"NA","46":"NA","47":"NA","48":"NA","49":"NA","50":"NA","51":"NA","52":"NA","53":"NA","54":"NA","55":"NA","56":"NA","57":"NA","58":"NA","59":"NA","60":"NA","61":"NA","62":"NA","63":"NA","64":"NA","65":"NA","66":"NA","67":"NA","68":"NA","69":"NA","70":"NA","71":"NA","72":"NA","73":"NA","74":"NA","75":"NA","76":"NA","77":"NA","78":"NA","79":"NA","80":"NA","81":"NA","82":"NA","83":"NA","84":"NA","85":"NA","86":"NA","87":"NA","88":"NA","89":"NA","90":"NA","91":"NA","92":"NA","93":"NA","94":"NA","95":"NA","96":"NA","97":"NA","98":"NA","99":"NA","100":"NA","101":"NA","102":"NA","103":"","104":"NA","105":"NA","106":"","107":"NA","108":"NA","109":"NA","110":"NA","111":"NA","112":"NA","113":"NA","114":"NA","115":"NA","116":"NA","117":"NA","118":"NA","119":"NA","120":"NA","121":"NA","122":"NA","123":"NA","124":"NA","125":"NA","126":"NA","127":"NA","128":"NA","129":"NA","130":"NA","131":"NA","132":"NA","133":"0","134":"0","135":"0","136":"0","137":"0","138":"NA","139":"0","140":"815","141":"0","142":"0","143":"0","144":"0","145":"0","146":"0","147":"NA","148":"0","149":"815","150":"0","151":"0","152":"0","153":"0","154":"0","155":"0","156":"0","157":"0","158":"0","159":"0","160":"0","161":"0","162":"0","163":"30000","164":"4","165":"5","166":"5","167":"4","168":"NA","169":"4","170":"7500","171":"3","172":"3","173":"2","174":"2","175":"NA","176":"2","177":"2202"},{"1":"TQRMNOSPWHJOLQCDEFIAH00611713","2":"2019","3":"3","4":"1","5":"3","6":"0","7":"43","8":"S","9":"2","10":"815","11":"3","12":"1","13":"13/03/2013","14":"6","15":"5","16":"1","17":"1","18":"1","19":"1","20":"2","21":"2","22":"0","23":"1","24":"NA","25":"1","26":"NA","27":"1","28":"4","29":"0","30":"3","31":"0","32":"0","33":"0","34":"0","35":"0","36":"0","37":"0","38":"0","39":"0","40":"0","41":"0","42":"0","43":"NA","44":"NA","45":"NA","46":"NA","47":"NA","48":"NA","49":"NA","50":"NA","51":"NA","52":"NA","53":"NA","54":"NA","55":"NA","56":"NA","57":"NA","58":"NA","59":"NA","60":"NA","61":"NA","62":"NA","63":"NA","64":"NA","65":"NA","66":"NA","67":"NA","68":"NA","69":"NA","70":"NA","71":"NA","72":"NA","73":"NA","74":"NA","75":"NA","76":"NA","77":"NA","78":"NA","79":"NA","80":"NA","81":"NA","82":"NA","83":"NA","84":"NA","85":"NA","86":"NA","87":"NA","88":"NA","89":"NA","90":"NA","91":"NA","92":"NA","93":"NA","94":"NA","95":"NA","96":"NA","97":"NA","98":"NA","99":"NA","100":"NA","101":"NA","102":"NA","103":"","104":"NA","105":"NA","106":"","107":"NA","108":"NA","109":"NA","110":"NA","111":"NA","112":"NA","113":"NA","114":"NA","115":"NA","116":"NA","117":"NA","118":"NA","119":"NA","120":"NA","121":"NA","122":"NA","123":"NA","124":"NA","125":"NA","126":"NA","127":"NA","128":"NA","129":"NA","130":"NA","131":"NA","132":"NA","133":"0","134":"0","135":"0","136":"0","137":"0","138":"NA","139":"0","140":"815","141":"0","142":"0","143":"0","144":"0","145":"0","146":"0","147":"NA","148":"0","149":"815","150":"0","151":"0","152":"0","153":"0","154":"0","155":"0","156":"0","157":"0","158":"0","159":"0","160":"0","161":"0","162":"0","163":"30000","164":"4","165":"5","166":"5","167":"4","168":"NA","169":"4","170":"7500","171":"3","172":"3","173":"2","174":"2","175":"NA","176":"2","177":"2202"},{"1":"TQRMNOSPWHJOLQCDEFIAH00611713","2":"2019","3":"3","4":"1","5":"4","6":"1","7":"43","8":"S","9":"2","10":"815","11":"2","12":"1","13":"13/05/1988","14":"31","15":"2","16":"1","17":"1","18":"2","19":"0","20":"2","21":"2","22":"6","23":"1","24":"NA","25":"1","26":"NA","27":"1","28":"1","29":"3","30":"0","31":"0","32":"0","33":"0","34":"0","35":"0","36":"0","37":"0","38":"0","39":"0","40":"0","41":"0","42":"0","43":"1","44":"0","45":"48","46":"0","47":"2","48":"0","49":"2","50":"2","51":"3","52":"2","53":"4808","54":"2","55":"0","56":"0","57":"0","58":"0","59":"99","60":"9","61":"32314","62":"1","63":"0","64":"0","65":"0","66":"0","67":"0","68":"0","69":"0","70":"0","71":"0","72":"0","73":"0","74":"0","75":"0","76":"0","77":"6","78":"2","79":"0","80":"0","81":"2","82":"2","83":"2","84":"2","85":"5","86":"1","87":"1","88":"1","89":"1","90":"0","91":"1","92":"0","93":"1","94":"1","95":"15000","96":"0","97":"0","98":"0","99":"7500","100":"0","101":"0","102":"0","103":"","104":"0","105":"0","106":"","107":"NA","108":"NA","109":"NA","110":"NA","111":"NA","112":"NA","113":"NA","114":"NA","115":"NA","116":"NA","117":"NA","118":"NA","119":"NA","120":"NA","121":"NA","122":"NA","123":"NA","124":"NA","125":"NA","126":"NA","127":"NA","128":"NA","129":"NA","130":"NA","131":"NA","132":"NA","133":"15000","134":"4","135":"5","136":"4","137":"4","138":"NA","139":"4","140":"1406","141":"0","142":"22500","143":"6","144":"6","145":"6","146":"6","147":"NA","148":"6","149":"1468","150":"0","151":"0","152":"0","153":"0","154":"0","155":"0","156":"0","157":"0","158":"0","159":"0","160":"0","161":"0","162":"0","163":"30000","164":"4","165":"5","166":"5","167":"4","168":"NA","169":"4","170":"7500","171":"3","172":"3","173":"2","174":"2","175":"NA","176":"2","177":"2202"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>



<br>
La base cuenta con 57.229 registros-filas (individuos) y 177 columnas (variables):


```r
nrow(eph_ind_319)
```

```
## [1] 57229
```

```r
ncol(eph_ind_319)
```

```
## [1] 177
```

#### Bases 2003-2015

En el caso de las bases de microdatos pertenecientes al período 2003-2015, podemos encontrarlas en formato ```.sav``` (SPSS) y ```.dta``` (STATA). Ambos formatos pueden ser importados desde __`R`__ a través de la librería __```haven```__.

En este ejemplo utilizaremos la base de hogares del cuarto trimestre de 2014 ([Hogar_t414](https://www.indec.gob.ar/ftp/cuadros/menusuperior/eph/t414_sav.rar){target="_blank"}) y la descargaremos en formato ```.sav```.



Una de las ventajas de importar los datos desde el formato ```.sav``` o ```.dta``` es que generalmente están etiquetadas las variables. En el caso de la importación de archivos ```.txt``` o ```.csv``` esto no sucede.

<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["CODUSU"],"name":[1],"type":["chr"],"align":["left"]},{"label":["nro_hogar"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["realizada"],"name":[3],"type":["dbl+lbl"],"align":["right"]},{"label":["ano4"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["trimestre"],"name":[5],"type":["dbl+lbl"],"align":["right"]},{"label":["region"],"name":[6],"type":["dbl+lbl"],"align":["right"]},{"label":["mas_500"],"name":[7],"type":["chr+lbl"],"align":["right"]},{"label":["aglomerado"],"name":[8],"type":["dbl+lbl"],"align":["right"]},{"label":["pondera"],"name":[9],"type":["dbl"],"align":["right"]},{"label":["iv1"],"name":[10],"type":["dbl+lbl"],"align":["right"]},{"label":["iv1_esp"],"name":[11],"type":["chr"],"align":["left"]},{"label":["iv2"],"name":[12],"type":["dbl+lbl"],"align":["right"]},{"label":["iv3"],"name":[13],"type":["dbl+lbl"],"align":["right"]},{"label":["iv3_esp"],"name":[14],"type":["chr"],"align":["left"]},{"label":["iv4"],"name":[15],"type":["dbl+lbl"],"align":["right"]},{"label":["iv5"],"name":[16],"type":["dbl+lbl"],"align":["right"]},{"label":["iv6"],"name":[17],"type":["dbl+lbl"],"align":["right"]},{"label":["iv7"],"name":[18],"type":["dbl+lbl"],"align":["right"]},{"label":["iv7_esp"],"name":[19],"type":["chr"],"align":["left"]},{"label":["iv8"],"name":[20],"type":["dbl+lbl"],"align":["right"]},{"label":["iv9"],"name":[21],"type":["dbl+lbl"],"align":["right"]},{"label":["iv10"],"name":[22],"type":["dbl+lbl"],"align":["right"]},{"label":["iv11"],"name":[23],"type":["dbl+lbl"],"align":["right"]},{"label":["iv12_1"],"name":[24],"type":["dbl+lbl"],"align":["right"]},{"label":["iv12_2"],"name":[25],"type":["dbl+lbl"],"align":["right"]},{"label":["iv12_3"],"name":[26],"type":["dbl+lbl"],"align":["right"]},{"label":["ii1"],"name":[27],"type":["dbl+lbl"],"align":["right"]},{"label":["ii2"],"name":[28],"type":["dbl+lbl"],"align":["right"]},{"label":["ii3"],"name":[29],"type":["dbl+lbl"],"align":["right"]},{"label":["ii3_1"],"name":[30],"type":["dbl"],"align":["right"]},{"label":["ii4_1"],"name":[31],"type":["dbl+lbl"],"align":["right"]},{"label":["ii4_2"],"name":[32],"type":["dbl+lbl"],"align":["right"]},{"label":["ii4_3"],"name":[33],"type":["dbl+lbl"],"align":["right"]},{"label":["ii5"],"name":[34],"type":["dbl+lbl"],"align":["right"]},{"label":["ii5_1"],"name":[35],"type":["dbl"],"align":["right"]},{"label":["ii6"],"name":[36],"type":["dbl+lbl"],"align":["right"]},{"label":["ii6_1"],"name":[37],"type":["dbl"],"align":["right"]},{"label":["ii7"],"name":[38],"type":["dbl+lbl"],"align":["right"]},{"label":["ii7_esp"],"name":[39],"type":["chr"],"align":["left"]},{"label":["ii8"],"name":[40],"type":["dbl+lbl"],"align":["right"]},{"label":["ii8_esp"],"name":[41],"type":["chr"],"align":["left"]},{"label":["ii9"],"name":[42],"type":["dbl+lbl"],"align":["right"]},{"label":["v1"],"name":[43],"type":["dbl+lbl"],"align":["right"]},{"label":["v2"],"name":[44],"type":["dbl+lbl"],"align":["right"]},{"label":["v21"],"name":[45],"type":["dbl+lbl"],"align":["right"]},{"label":["v22"],"name":[46],"type":["dbl+lbl"],"align":["right"]},{"label":["v3"],"name":[47],"type":["dbl+lbl"],"align":["right"]},{"label":["v4"],"name":[48],"type":["dbl+lbl"],"align":["right"]},{"label":["v5"],"name":[49],"type":["dbl+lbl"],"align":["right"]},{"label":["v6"],"name":[50],"type":["dbl+lbl"],"align":["right"]},{"label":["v7"],"name":[51],"type":["dbl+lbl"],"align":["right"]},{"label":["v8"],"name":[52],"type":["dbl+lbl"],"align":["right"]},{"label":["v9"],"name":[53],"type":["dbl+lbl"],"align":["right"]},{"label":["v10"],"name":[54],"type":["dbl+lbl"],"align":["right"]},{"label":["v11"],"name":[55],"type":["dbl+lbl"],"align":["right"]},{"label":["v12"],"name":[56],"type":["dbl+lbl"],"align":["right"]},{"label":["v13"],"name":[57],"type":["dbl+lbl"],"align":["right"]},{"label":["v14"],"name":[58],"type":["dbl+lbl"],"align":["right"]},{"label":["v15"],"name":[59],"type":["dbl+lbl"],"align":["right"]},{"label":["v16"],"name":[60],"type":["dbl+lbl"],"align":["right"]},{"label":["v17"],"name":[61],"type":["dbl+lbl"],"align":["right"]},{"label":["v18"],"name":[62],"type":["dbl+lbl"],"align":["right"]},{"label":["v19_a"],"name":[63],"type":["dbl+lbl"],"align":["right"]},{"label":["v19_b"],"name":[64],"type":["dbl+lbl"],"align":["right"]},{"label":["ix_tot"],"name":[65],"type":["dbl"],"align":["right"]},{"label":["ix_men10"],"name":[66],"type":["dbl"],"align":["right"]},{"label":["ix_mayeq10"],"name":[67],"type":["dbl"],"align":["right"]},{"label":["itf"],"name":[68],"type":["dbl"],"align":["right"]},{"label":["decifr"],"name":[69],"type":["chr"],"align":["left"]},{"label":["idecifr"],"name":[70],"type":["chr"],"align":["left"]},{"label":["rdecifr"],"name":[71],"type":["chr"],"align":["left"]},{"label":["gdecifr"],"name":[72],"type":["chr"],"align":["left"]},{"label":["pdecifr"],"name":[73],"type":["chr"],"align":["left"]},{"label":["adecifr"],"name":[74],"type":["chr"],"align":["left"]},{"label":["ipcf"],"name":[75],"type":["dbl"],"align":["right"]},{"label":["deccfr"],"name":[76],"type":["chr"],"align":["left"]},{"label":["ideccfr"],"name":[77],"type":["chr"],"align":["left"]},{"label":["rdeccfr"],"name":[78],"type":["chr"],"align":["left"]},{"label":["gdeccfr"],"name":[79],"type":["chr"],"align":["left"]},{"label":["pdeccfr"],"name":[80],"type":["chr"],"align":["left"]},{"label":["adeccfr"],"name":[81],"type":["chr"],"align":["left"]},{"label":["vii1_1"],"name":[82],"type":["dbl+lbl"],"align":["right"]},{"label":["vii1_2"],"name":[83],"type":["dbl+lbl"],"align":["right"]},{"label":["vii2_1"],"name":[84],"type":["dbl+lbl"],"align":["right"]},{"label":["vii2_2"],"name":[85],"type":["dbl+lbl"],"align":["right"]},{"label":["vii2_3"],"name":[86],"type":["dbl+lbl"],"align":["right"]},{"label":["vii2_4"],"name":[87],"type":["dbl+lbl"],"align":["right"]},{"label":["idimph"],"name":[88],"type":["chr+lbl"],"align":["right"]}],"data":[{"1":"431969","2":"1","3":"1","4":"2014","5":"4","6":"44","7":"N","8":"93","9":"52","10":"1","11":"","12":"4","13":"2","14":"","15":"4","16":"1","17":"1","18":"1","19":"","20":"1","21":"1","22":"1","23":"3","24":"2","25":"2","26":"2","27":"4","28":"2","29":"1","30":"2","31":"2","32":"2","33":"2","34":"0","35":"0","36":"0","37":"0","38":"6","39":"","40":"1","41":"","42":"1","43":"2","44":"1","45":"2","46":"2","47":"2","48":"2","49":"2","50":"2","51":"2","52":"2","53":"2","54":"2","55":"2","56":"2","57":"2","58":"2","59":"2","60":"2","61":"2","62":"2","63":"2","64":"2","65":"1","66":"0","67":"1","68":"2000","69":"01","70":"01","71":"01","72":"","73":"01","74":"01","75":"2000","76":"03","77":"03","78":"02","79":"","80":"04","81":"03","82":"1","83":"0","84":"98","85":"0","86":"0","87":"0","88":"00000"},{"1":"431473","2":"1","3":"1","4":"2014","5":"4","6":"43","7":"N","8":"6","9":"131","10":"1","11":"","12":"3","13":"1","14":"","15":"2","16":"1","17":"1","18":"1","19":"","20":"1","21":"1","22":"1","23":"1","24":"2","25":"2","26":"2","27":"3","28":"2","29":"1","30":"2","31":"2","32":"2","33":"2","34":"0","35":"0","36":"0","37":"0","38":"8","39":"","40":"2","41":"","42":"1","43":"1","44":"2","45":"2","46":"2","47":"2","48":"2","49":"2","50":"2","51":"2","52":"2","53":"2","54":"2","55":"2","56":"2","57":"2","58":"2","59":"1","60":"1","61":"2","62":"2","63":"2","64":"2","65":"3","66":"0","67":"3","68":"8000","69":"05","70":"05","71":"05","72":"","73":"05","74":"04","75":"2667","76":"04","77":"05","78":"04","79":"","80":"05","81":"03","82":"1","83":"0","84":"98","85":"0","86":"0","87":"0","88":"00000"},{"1":"432893","2":"1","3":"1","4":"2014","5":"4","6":"43","7":"N","8":"3","9":"210","10":"2","11":"","12":"3","13":"1","14":"","15":"4","16":"1","17":"1","18":"1","19":"","20":"1","21":"1","22":"1","23":"1","24":"2","25":"2","26":"2","27":"3","28":"2","29":"1","30":"2","31":"2","32":"2","33":"2","34":"0","35":"0","36":"0","37":"0","38":"3","39":"","40":"1","41":"","42":"1","43":"1","44":"2","45":"2","46":"2","47":"2","48":"2","49":"2","50":"2","51":"2","52":"2","53":"2","54":"2","55":"2","56":"2","57":"2","58":"2","59":"2","60":"1","61":"2","62":"2","63":"2","64":"2","65":"3","66":"1","67":"2","68":"15500","69":"08","70":"08","71":"08","72":"","73":"08","74":"09","75":"5167","76":"08","77":"08","78":"08","79":"","80":"08","81":"07","82":"2","83":"0","84":"98","85":"0","86":"0","87":"0","88":"00000"},{"1":"427874","2":"1","3":"1","4":"2014","5":"4","6":"1","7":"S","8":"33","9":"101","10":"1","11":"","12":"3","13":"2","14":"","15":"4","16":"2","17":"1","18":"2","19":"","20":"1","21":"1","22":"1","23":"3","24":"2","25":"2","26":"2","27":"3","28":"2","29":"1","30":"2","31":"2","32":"2","33":"2","34":"0","35":"0","36":"0","37":"0","38":"4","39":"","40":"2","41":"","42":"1","43":"1","44":"1","45":"2","46":"2","47":"2","48":"2","49":"2","50":"2","51":"2","52":"2","53":"2","54":"2","55":"2","56":"2","57":"1","58":"1","59":"2","60":"1","61":"2","62":"2","63":"2","64":"2","65":"4","66":"0","67":"4","68":"5000","69":"03","70":"","71":"02","72":"03","73":"","74":"03","75":"1250","76":"02","77":"","78":"02","79":"02","80":"","81":"02","82":"2","83":"3","84":"98","85":"0","86":"0","87":"0","88":"00000"},{"1":"431556","2":"1","3":"1","4":"2014","5":"4","6":"43","7":"N","8":"3","9":"191","10":"1","11":"","12":"3","13":"1","14":"","15":"1","16":"1","17":"1","18":"1","19":"","20":"1","21":"1","22":"1","23":"1","24":"2","25":"2","26":"2","27":"3","28":"2","29":"1","30":"2","31":"2","32":"2","33":"2","34":"0","35":"0","36":"0","37":"0","38":"1","39":"","40":"1","41":"","42":"1","43":"1","44":"2","45":"2","46":"2","47":"2","48":"2","49":"2","50":"2","51":"2","52":"2","53":"2","54":"2","55":"2","56":"2","57":"2","58":"2","59":"2","60":"1","61":"2","62":"2","63":"2","64":"2","65":"1","66":"0","67":"1","68":"16000","69":"08","70":"09","71":"08","72":"","73":"09","74":"09","75":"16000","76":"10","77":"10","78":"10","79":"","80":"10","81":"10","82":"1","83":"0","84":"98","85":"0","86":"0","87":"0","88":"10000"},{"1":"432498","2":"1","3":"1","4":"2014","5":"4","6":"40","7":"N","8":"18","9":"207","10":"1","11":"","12":"3","13":"1","14":"","15":"1","16":"2","17":"1","18":"1","19":"","20":"1","21":"1","22":"1","23":"1","24":"2","25":"2","26":"2","27":"3","28":"2","29":"1","30":"2","31":"2","32":"2","33":"2","34":"0","35":"0","36":"0","37":"0","38":"1","39":"","40":"1","41":"","42":"1","43":"1","44":"2","45":"2","46":"2","47":"2","48":"2","49":"2","50":"2","51":"2","52":"2","53":"2","54":"2","55":"2","56":"2","57":"2","58":"2","59":"2","60":"1","61":"2","62":"2","63":"2","64":"2","65":"5","66":"0","67":"5","68":"8300","69":"05","70":"05","71":"06","72":"","73":"05","74":"08","75":"1660","76":"02","77":"03","78":"03","79":"","80":"03","81":"05","82":"2","83":"0","84":"98","85":"0","86":"0","87":"0","88":"00000"},{"1":"428754","2":"1","3":"1","4":"2014","5":"4","6":"40","7":"N","8":"18","9":"197","10":"1","11":"","12":"2","13":"1","14":"","15":"1","16":"2","17":"1","18":"1","19":"","20":"1","21":"1","22":"1","23":"1","24":"2","25":"2","26":"2","27":"2","28":"2","29":"1","30":"2","31":"2","32":"2","33":"2","34":"0","35":"0","36":"0","37":"0","38":"1","39":"","40":"1","41":"","42":"1","43":"2","44":"1","45":"2","46":"2","47":"2","48":"2","49":"2","50":"2","51":"2","52":"2","53":"2","54":"2","55":"2","56":"2","57":"2","58":"2","59":"2","60":"1","61":"2","62":"2","63":"2","64":"2","65":"1","66":"0","67":"1","68":"2700","69":"01","70":"01","71":"01","72":"","73":"01","74":"02","75":"2700","76":"04","77":"05","78":"06","79":"","80":"05","81":"07","82":"1","83":"0","84":"98","85":"0","86":"0","87":"0","88":"00000"},{"1":"389601","2":"1","3":"1","4":"2014","5":"4","6":"40","7":"N","8":"25","9":"116","10":"1","11":"","12":"1","13":"1","14":"","15":"9","16":"1","17":"1","18":"1","19":"","20":"1","21":"1","22":"1","23":"1","24":"2","25":"2","26":"2","27":"1","28":"2","29":"1","30":"1","31":"2","32":"2","33":"2","34":"0","35":"0","36":"0","37":"0","38":"1","39":"","40":"1","41":"","42":"1","43":"2","44":"1","45":"2","46":"2","47":"2","48":"2","49":"2","50":"2","51":"2","52":"2","53":"2","54":"2","55":"2","56":"2","57":"2","58":"2","59":"2","60":"1","61":"2","62":"2","63":"2","64":"2","65":"1","66":"0","67":"1","68":"5500","69":"03","70":"03","71":"03","72":"","73":"03","74":"03","75":"5500","76":"08","77":"08","78":"09","79":"","80":"08","81":"09","82":"1","83":"0","84":"97","85":"0","86":"0","87":"0","88":"00000"},{"1":"431820","2":"1","3":"1","4":"2014","5":"4","6":"40","7":"N","8":"22","9":"116","10":"1","11":"","12":"10","13":"1","14":"","15":"2","16":"1","17":"1","18":"1","19":"","20":"1","21":"1","22":"1","23":"2","24":"2","25":"2","26":"2","27":"10","28":"5","29":"2","30":"0","31":"1","32":"2","33":"1","34":"2","35":"0","36":"2","37":"0","38":"1","39":"","40":"1","41":"","42":"1","43":"1","44":"2","45":"2","46":"2","47":"2","48":"2","49":"1","50":"1","51":"1","52":"2","53":"2","54":"2","55":"2","56":"2","57":"2","58":"1","59":"1","60":"1","61":"2","62":"2","63":"2","64":"2","65":"8","66":"1","67":"7","68":"25940","69":"10","70":"10","71":"10","72":"","73":"10","74":"10","75":"3242","76":"05","77":"06","78":"07","79":"","80":"06","81":"06","82":"2","83":"0","84":"3","85":"0","86":"0","87":"0","88":"00000"},{"1":"429530","2":"1","3":"1","4":"2014","5":"4","6":"44","7":"N","8":"91","9":"121","10":"1","11":"","12":"10","13":"1","14":"","15":"4","16":"1","17":"1","18":"1","19":"","20":"1","21":"1","22":"1","23":"1","24":"1","25":"2","26":"2","27":"10","28":"3","29":"2","30":"0","31":"1","32":"1","33":"1","34":"2","35":"0","36":"2","37":"0","38":"1","39":"","40":"1","41":"","42":"1","43":"1","44":"1","45":"2","46":"2","47":"2","48":"2","49":"2","50":"2","51":"2","52":"2","53":"2","54":"2","55":"2","56":"2","57":"2","58":"2","59":"2","60":"2","61":"2","62":"2","63":"2","64":"2","65":"3","66":"0","67":"3","68":"35600","69":"10","70":"10","71":"10","72":"","73":"10","74":"10","75":"11867","76":"10","77":"10","78":"09","79":"","80":"10","81":"10","82":"2","83":"1","84":"98","85":"0","86":"0","87":"0","88":"00000"},{"1":"418981","2":"1","3":"1","4":"2014","5":"4","6":"43","7":"N","8":"6","9":"178","10":"1","11":"","12":"10","13":"1","14":"","15":"4","16":"1","17":"1","18":"1","19":"","20":"1","21":"1","22":"1","23":"1","24":"1","25":"2","26":"2","27":"10","28":"4","29":"2","30":"0","31":"1","32":"1","33":"1","34":"2","35":"0","36":"2","37":"0","38":"1","39":"","40":"1","41":"","42":"1","43":"1","44":"1","45":"2","46":"2","47":"2","48":"2","49":"2","50":"2","51":"2","52":"2","53":"2","54":"2","55":"2","56":"2","57":"2","58":"2","59":"2","60":"2","61":"2","62":"2","63":"2","64":"2","65":"4","66":"0","67":"4","68":"20000","69":"09","70":"09","71":"09","72":"","73":"09","74":"09","75":"5000","76":"07","77":"08","78":"07","79":"","80":"08","81":"07","82":"1","83":"0","84":"98","85":"0","86":"0","87":"0","88":"00000"},{"1":"420570","2":"1","3":"1","4":"2014","5":"4","6":"44","7":"N","8":"17","9":"238","10":"1","11":"","12":"10","13":"1","14":"","15":"2","16":"1","17":"1","18":"1","19":"","20":"1","21":"1","22":"1","23":"1","24":"2","25":"2","26":"2","27":"10","28":"3","29":"1","30":"1","31":"1","32":"2","33":"1","34":"2","35":"0","36":"2","37":"0","38":"1","39":"","40":"1","41":"","42":"1","43":"1","44":"2","45":"2","46":"2","47":"2","48":"2","49":"2","50":"2","51":"2","52":"2","53":"2","54":"2","55":"2","56":"1","57":"2","58":"1","59":"2","60":"1","61":"2","62":"2","63":"2","64":"2","65":"5","66":"1","67":"4","68":"19600","69":"09","70":"09","71":"08","72":"","73":"09","74":"09","75":"3920","76":"06","77":"07","78":"05","79":"","80":"07","81":"06","82":"1","83":"0","84":"3","85":"2","86":"0","87":"0","88":"10000"},{"1":"380774","2":"1","3":"1","4":"2014","5":"4","6":"40","7":"S","8":"23","9":"266","10":"1","11":"","12":"10","13":"1","14":"","15":"4","16":"2","17":"1","18":"1","19":"","20":"1","21":"1","22":"1","23":"1","24":"2","25":"2","26":"2","27":"10","28":"6","29":"1","30":"1","31":"1","32":"2","33":"1","34":"2","35":"0","36":"2","37":"0","38":"1","39":"","40":"1","41":"","42":"1","43":"1","44":"1","45":"2","46":"2","47":"2","48":"2","49":"1","50":"2","51":"2","52":"2","53":"2","54":"2","55":"1","56":"2","57":"2","58":"2","59":"2","60":"2","61":"2","62":"2","63":"2","64":"2","65":"8","66":"0","67":"8","68":"13680","69":"08","70":"08","71":"08","72":"07","73":"","74":"08","75":"1710","76":"02","77":"03","78":"04","79":"02","80":"","81":"04","82":"4","83":"2","84":"6","85":"5","86":"0","87":"0","88":"00000"},{"1":"385495","2":"1","3":"1","4":"2014","5":"4","6":"40","7":"S","8":"23","9":"234","10":"1","11":"","12":"10","13":"1","14":"","15":"2","16":"1","17":"1","18":"1","19":"","20":"1","21":"1","22":"1","23":"1","24":"2","25":"1","26":"2","27":"10","28":"4","29":"1","30":"1","31":"1","32":"2","33":"2","34":"2","35":"0","36":"2","37":"0","38":"1","39":"","40":"1","41":"","42":"1","43":"1","44":"1","45":"2","46":"2","47":"2","48":"2","49":"2","50":"2","51":"2","52":"2","53":"2","54":"2","55":"2","56":"2","57":"2","58":"2","59":"2","60":"2","61":"2","62":"2","63":"2","64":"2","65":"3","66":"0","67":"3","68":"42000","69":"10","70":"10","71":"10","72":"10","73":"","74":"10","75":"14000","76":"10","77":"10","78":"10","79":"10","80":"","81":"10","82":"97","83":"0","84":"98","85":"0","86":"0","87":"0","88":"00000"},{"1":"420473","2":"1","3":"1","4":"2014","5":"4","6":"44","7":"N","8":"17","9":"286","10":"1","11":"","12":"9","13":"1","14":"","15":"1","16":"1","17":"1","18":"1","19":"","20":"1","21":"1","22":"1","23":"1","24":"2","25":"2","26":"2","27":"9","28":"3","29":"1","30":"2","31":"1","32":"1","33":"1","34":"2","35":"0","36":"2","37":"0","38":"1","39":"","40":"1","41":"","42":"1","43":"1","44":"1","45":"2","46":"2","47":"2","48":"2","49":"2","50":"2","51":"2","52":"2","53":"2","54":"2","55":"2","56":"2","57":"2","58":"2","59":"2","60":"1","61":"2","62":"2","63":"2","64":"2","65":"3","66":"0","67":"3","68":"13500","69":"07","70":"08","71":"06","72":"","73":"08","74":"07","75":"4500","76":"07","77":"07","78":"05","79":"","80":"07","81":"06","82":"96","83":"0","84":"98","85":"0","86":"0","87":"0","88":"10010"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>



#### Bases 1974-2002

Finalmente probaremos descargar la base más antigua que se encuentra disponible en la página web del INDEC. Nos referimos a los microdatos de la base usuaria de individuos del año 1974 para el Gran Buenos Aires ([link de descarga](https://www.indec.gob.ar/dbindec/eph/bases/_usuarias/Bu01374.zip){target="_blank"}). 

Como hemos señalado, las bases anteriores a 2003 se encuentran únicamente en formato ```.dbf```. Para poder importarlas en `R` necesitaremos instalar y llamar a la librería __```foreign```__.



Aquí podemos ver los primeros 15 registros de la base:

<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["ONDA"],"name":[1],"type":["fct"],"align":["left"]},{"label":["ANO"],"name":[2],"type":["fct"],"align":["left"]},{"label":["AGLOMERADO"],"name":[3],"type":["int"],"align":["right"]},{"label":["COD"],"name":[4],"type":["int"],"align":["right"]},{"label":["COMPONENTE"],"name":[5],"type":["int"],"align":["right"]},{"label":["ACNOAUTO"],"name":[6],"type":["int"],"align":["right"]},{"label":["REALIZADA"],"name":[7],"type":["int"],"align":["right"]},{"label":["PONDERA"],"name":[8],"type":["int"],"align":["right"]},{"label":["ESTADO"],"name":[9],"type":["int"],"align":["right"]},{"label":["INACTIVO"],"name":[10],"type":["int"],"align":["right"]},{"label":["RELACION"],"name":[11],"type":["int"],"align":["right"]},{"label":["EDAD"],"name":[12],"type":["int"],"align":["right"]},{"label":["SEXO"],"name":[13],"type":["int"],"align":["right"]},{"label":["CIVIL"],"name":[14],"type":["int"],"align":["right"]},{"label":["OCUPACION"],"name":[15],"type":["int"],"align":["right"]},{"label":["INGRESO"],"name":[16],"type":["fct"],"align":["left"]},{"label":["ANTIGUE"],"name":[17],"type":["int"],"align":["right"]},{"label":["BENEF"],"name":[18],"type":["int"],"align":["right"]},{"label":["CATEGORIA"],"name":[19],"type":["int"],"align":["right"]},{"label":["RAMA"],"name":[20],"type":["int"],"align":["right"]},{"label":["TAMANO"],"name":[21],"type":["int"],"align":["right"]},{"label":["TAREA"],"name":[22],"type":["int"],"align":["right"]},{"label":["TIEMPO"],"name":[23],"type":["int"],"align":["right"]},{"label":["FORMA"],"name":[24],"type":["int"],"align":["right"]},{"label":["TIPODES"],"name":[25],"type":["int"],"align":["right"]},{"label":["TIPO"],"name":[26],"type":["int"],"align":["right"]},{"label":["FUENTE"],"name":[27],"type":["int"],"align":["right"]},{"label":["MONTO"],"name":[28],"type":["fct"],"align":["left"]},{"label":["ESPECIES"],"name":[29],"type":["int"],"align":["right"]},{"label":["ALFABETO"],"name":[30],"type":["int"],"align":["right"]},{"label":["ASISTE"],"name":[31],"type":["int"],"align":["right"]},{"label":["NIVEL"],"name":[32],"type":["int"],"align":["right"]},{"label":["DECIF"],"name":[33],"type":["fct"],"align":["left"]},{"label":["DECCF"],"name":[34],"type":["fct"],"align":["left"]},{"label":["INGHORA"],"name":[35],"type":["dbl"],"align":["right"]},{"label":["P47HOR"],"name":[36],"type":["dbl"],"align":["right"]}],"data":[{"1":"3","2":"74","3":"1","4":"1","5":"1","6":"0","7":"9","8":"1136","9":"3","10":"1","11":"1","12":"79","13":"1","14":"3","15":"NA","16":"NA","17":"NA","18":"NA","19":"NA","20":"NA","21":"NA","22":"NA","23":"NA","24":"NA","25":"NA","26":"1","27":"5","28":"2","29":"2","30":"1","31":"2","32":"12","33":"6","34":"6","35":"NA","36":"NA"},{"1":"3","2":"74","3":"1","4":"1","5":"2","6":"0","7":"9","8":"1136","9":"3","10":"4","11":"2","12":"74","13":"2","14":"3","15":"NA","16":"NA","17":"NA","18":"NA","19":"NA","20":"NA","21":"NA","22":"NA","23":"NA","24":"NA","25":"NA","26":"3","27":"23","28":"00","29":"2","30":"1","31":"2","32":"11","33":"6","34":"6","35":"NA","36":"NA"},{"1":"3","2":"74","3":"1","4":"1","5":"3","6":"0","7":"9","8":"1136","9":"1","10":"NA","11":"3","12":"55","13":"2","14":"1","15":"1","16":"7","17":"5","18":"4","19":"3","20":"6","21":"4","22":"23","23":"NA","24":"NA","25":"NA","26":"1","27":"1","28":"7","29":"2","30":"1","31":"2","32":"41","33":"6","34":"6","35":"140.00","36":"150.00"},{"1":"3","2":"74","3":"1","4":"2","5":"1","6":"0","7":"9","8":"1136","9":"3","10":"1","11":"1","12":"59","13":"2","14":"4","15":"NA","16":"NA","17":"NA","18":"NA","19":"NA","20":"NA","21":"NA","22":"NA","23":"NA","24":"NA","25":"NA","26":"1","27":"5","28":"2","29":"2","30":"1","31":"2","32":"11","33":"1","34":"5","35":"NA","36":"NA"},{"1":"3","2":"74","3":"1","4":"3","5":"1","6":"0","7":"9","8":"1136","9":"3","10":"1","11":"1","12":"70","13":"1","14":"3","15":"NA","16":"NA","17":"NA","18":"NA","19":"NA","20":"NA","21":"NA","22":"NA","23":"NA","24":"NA","25":"NA","26":"1","27":"5","28":"2","29":"2","30":"1","31":"2","32":"12","33":"1","34":"2","35":"NA","36":"NA"},{"1":"3","2":"74","3":"1","4":"3","5":"2","6":"0","7":"9","8":"1136","9":"3","10":"4","11":"2","12":"66","13":"2","14":"3","15":"NA","16":"NA","17":"NA","18":"NA","19":"NA","20":"NA","21":"NA","22":"NA","23":"NA","24":"NA","25":"NA","26":"3","27":"23","28":"00","29":"2","30":"1","31":"2","32":"12","33":"1","34":"2","35":"NA","36":"NA"},{"1":"3","2":"74","3":"1","4":"4","5":"1","6":"0","7":"9","8":"1136","9":"1","10":"NA","11":"1","12":"26","13":"1","14":"1","15":"1","16":"4","17":"4","18":"4","19":"3","20":"6","21":"3","22":"12","23":"NA","24":"NA","25":"NA","26":"1","27":"1","28":"5","29":"2","30":"1","31":"2","32":"22","33":"7","34":"9","35":"90.15","36":"96.59"},{"1":"3","2":"74","3":"1","4":"4","5":"2","6":"0","7":"9","8":"1136","9":"1","10":"NA","11":"8","12":"19","13":"1","14":"1","15":"1","16":"7","17":"1","18":"5","19":"3","20":"12","21":"2","22":"44","23":"NA","24":"NA","25":"NA","26":"1","27":"1","28":"7","29":"2","30":"1","31":"2","32":"12","33":"7","34":"9","35":"93.33","36":"100.00"},{"1":"3","2":"74","3":"1","4":"5","5":"1","6":"0","7":"9","8":"2163","9":"1","10":"NA","11":"1","12":"60","13":"2","14":"5","15":"1","16":"4","17":"5","18":"4","19":"3","20":"10","21":"2","22":"31","23":"NA","24":"NA","25":"NA","26":"1","27":"1","28":"5","29":"2","30":"1","31":"2","32":"31","33":"2","34":"8","35":"219.61","36":"235.29"},{"1":"3","2":"74","3":"1","4":"6","5":"1","6":"0","7":"9","8":"2163","9":"3","10":"1","11":"1","12":"84","13":"1","14":"3","15":"NA","16":"NA","17":"NA","18":"NA","19":"NA","20":"NA","21":"NA","22":"NA","23":"NA","24":"NA","25":"NA","26":"1","27":"5","28":"8","29":"2","30":"1","31":"2","32":"31","33":"5","34":"5","35":"NA","36":"NA"},{"1":"3","2":"74","3":"1","4":"6","5":"2","6":"0","7":"9","8":"2163","9":"3","10":"4","11":"2","12":"96","13":"2","14":"3","15":"NA","16":"NA","17":"NA","18":"NA","19":"NA","20":"NA","21":"NA","22":"NA","23":"NA","24":"NA","25":"NA","26":"3","27":"23","28":"00","29":"2","30":"0","31":"3","32":"NA","33":"5","34":"5","35":"NA","36":"NA"},{"1":"3","2":"74","3":"1","4":"6","5":"3","6":"0","7":"9","8":"2163","9":"1","10":"NA","11":"7","12":"32","13":"2","14":"1","15":"1","16":"1","17":"1","18":"5","19":"3","20":"21","21":"1","22":"44","23":"NA","24":"NA","25":"NA","26":"1","27":"1","28":"4","29":"2","30":"1","31":"2","32":"12","33":"5","34":"5","35":"15.00","36":"41.67"},{"1":"3","2":"74","3":"1","4":"7","5":"1","6":"0","7":"9","8":"1165","9":"3","10":"1","11":"1","12":"74","13":"1","14":"4","15":"NA","16":"NA","17":"NA","18":"NA","19":"NA","20":"NA","21":"NA","22":"NA","23":"NA","24":"NA","25":"NA","26":"1","27":"5","28":"4","29":"2","30":"1","31":"2","32":"21","33":"2","34":"7","35":"NA","36":"NA"},{"1":"3","2":"74","3":"1","4":"8","5":"1","6":"1","7":"9","8":"909","9":"1","10":"NA","11":"1","12":"42","13":"2","14":"5","15":"NA","16":"NA","17":"NA","18":"NA","19":"NA","20":"NA","21":"NA","22":"NA","23":"NA","24":"NA","25":"NA","26":"NA","27":"NA","28":"13","29":"NA","30":"NA","31":"NA","32":"NA","33":"13","34":"13","35":"NA","36":"NA"},{"1":"3","2":"74","3":"1","4":"8","5":"2","6":"1","7":"9","8":"909","9":"1","10":"NA","11":"3","12":"20","13":"2","14":"1","15":"NA","16":"NA","17":"NA","18":"NA","19":"NA","20":"NA","21":"NA","22":"NA","23":"NA","24":"NA","25":"NA","26":"NA","27":"NA","28":"13","29":"NA","30":"NA","31":"NA","32":"NA","33":"13","34":"13","35":"NA","36":"NA"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[15],"max":[15]},"pages":{}}}
  </script>
</div>



### El paquete `eph`

El paquete __```eph```__ es una gran herramienta para usuaries de `R` que utilicen con frecuencia la EPH. Permite no solo la descarga de las bases oficiales del INDEC, sino que también, entre varias funciones, nos habilita a incorporar las etiquetas a las variables y categorías, organizar _pools_ de datos en panel o calcular y estimar tasas de pobreza.

En este manual, aprenderemos a descargar las bases de la EPH a través del paquete y armar un _pool_ de datos, en el que dispondremos de distintas bases unidas, para diversos tipos de análisis.

En primer lugar probaremos descargar la base individual de la EPH para el 4to trimestre de 2019, a través de la función ```get_microdata```. Vale aclarar que, al momento de escritura de este manual, únicamente pueden descargarse las bases posteriores al año 1996:


```r
eph_ind_419 <- get_microdata(year = 2019, trimester = 4, type = "individual")
```

Como puede observarse, la función es sumamente intuitiva. Únicamente debemos modificar los parámetros ```year```, ```trimester``` y ```type```, para descargar la información deseada. En el caso de la EPH puntual, en lugar de usar el parámetro ```trimester``` utilizaremos ```wave```, que acepta los valores 1 y 2. En este caso, creamos el objeto `eph_ind_419` para guardar la base descargada.

Por _default_, la función nos devuelve todas las variables, si queremos realizar alguna selección de variables podríamos utilizar el parámetro ```vars```. Aquí un ejemplo:


```r
eph_estado <- get_microdata(year = 2019, trimester = 4, type = "individual", vars = c("CODUSU",
    "NRO_HOGAR", "ANO4", "ESTADO"))

names(eph_estado)
```

```
## [1] "CODUSU"    "NRO_HOGAR" "ANO4"      "ESTADO"
```

En el ejemplo anterior, elegimos únicamente descargar las variables CODUSU, NRO_HOGAR, ANO4 y ESTADO. Dicho parámetro es muy útil para descargar solo aquella información que realmente necesitamos y no ocupar la memoria RAM de datos innecesarios. Sobre todo cuando armemos _pools_ de datos y las bases construidas sean de un gran peso, el parámetro ```vars``` será de una gran utilidad.

Otra utilidad importante del paquete es que nos permite etiquetar las variables y las categorías automáticamente. Para ello se utiliza la función ```organize_labels```:


```r
eph_ind_419 <- organize_labels(eph_ind_419, type = "individual")
```

Por ejemplo, visualizaremos las etiquetas de la variable ESTADO:


```r
attributes(eph_ind_419$ESTADO)
```

```
## $label
## [1] "Condicion de actividad"
## 
## $class
## [1] "labelled" "integer" 
## 
## $labels
## Entrevista individual no realizada (no respuesta al cuestionario individual) 
##                                                                            0 
##                                                                      Ocupado 
##                                                                            1 
##                                                                   Desocupado 
##                                                                            2 
##                                                                     Inactivo 
##                                                                            3 
##                                                           Menor de 10 anios. 
##                                                                            4
```

La variable se encuentra etiquetada como "Condición de actividad". El tipo (`class`) de variable es `labelled` e `interger`, ya que si bien la variable es numérica entera también se encuentra etiquetada ("labelled"). Finalmente podemos ver las cuatro categorías de la variable: 0) Entrevista individual no realizada; 1) Ocupado; 2) Desocupado; 3) Inactivo; 4) Menor de 10 años.

Finalmente, la función ```get_microdata``` también nos permite descargar múltiples bases de la EPH y que luego podemos pegar a los fines de poder trabajarlas longitudinalmente. Mostraremos un ejemplo descargando la selección de variables que hemos realizado anteriormente, pero para todos los cuartos trimestres de los años 2017-2019:


```r
eph_estado_1719 <- get_microdata(year = 2017:2019, trimester = 4, type = "individual",
    vars = c("CODUSU", "NRO_HOGAR", "ANO4", "ESTADO"))  #Descargo las bases
```

En el segundo paso utilizamos las funciones ```dplyr::select``` y ```tidyr::unnest```. Podríamos haber descargado la información de todos los trimestres modificando el parámetro ```trimester``` con el valor `c(1:4)`.


```r
eph_estado_1719 <- eph_estado_1719 %>%
    select(microdata) %>%
    unnest(cols = c(microdata))  #Ya que la información descargada se guarda en un objeto de tipo 'lista', debemos des-anidar la columna 'microdata' en donde están las bases.
```

Como advertencia, al descargar un número importante de bases (y de variables), el proceso puede tornarse lento y, al mismo tiempo, su resultado satisfactorio puede depender de la cantidad de memoria RAM disponible que tengamos al momento.

## Primeros pasos en el estudio de las clases sociales a través de la EPH {#eph3} 

En esta sección exploraremos la EPH, identificando aquellas variables que tendremos que manipular, configurar y filtrar para comenzar a utilizar la encuesta. Específicamente presentaremos: 

- aquellas variables que nos permiten identificar viviendas y hogares, y que nos habilitarán a vincular la base de individuos con la de hogares;

- aquellas variables que nos permiten seleccionar a la población adecuada, según nuestros objetivos, en el estudio de clases (edad, aglomerado, condición de actividad, etc.);

- aquellas variables que nos permiten expandir y ponderar la muestra de datos.

### Uniendo las bases de individuos y hogares

Muchas veces debemos utilizar en forma combinada la información de la base de individuos y la base de hogares. Por ejemplo, en el estudio de las clases sociales, si queremos estudiar cómo se distribuyen las condiciones habitacionales según la posición de clase, es necesario "traer" algunas variables de dicha dimensión a la base de individuos, desde donde vamos a construir nuestro esquema de clases sociales (debido a que la información socio-laboral se encuentra ahí). Esto comúnmente se conoce como "unión" de bases y es una práctica frecuente en el uso de bases de datos.

Al unir las bases de la EPH debe atenderse al hecho de que, en términos metodológicos, estaremos transitando de una unidad de análisis a otra. Mientras que en la base de hogares las unidades de análisis son la vivienda y el hogar, en la base individual nos estaremos refiriendo a personas. Siguiendo el ejemplo señalado en el párrafo anterior, si transferimos algunas variables sobre condiciones habitacionales a la base de individuos, estaremos transformándolas en atributos de las personas y no de las viviendas.

En ambas bases existen dos variables que nos permiten identificar a los hogares, para así realizar una unión precisa: ```CODUSU``` y ```NRO_HOGAR```. Mientras que la primera es un `ID` que distingue viviendas, la segunda permite distinguir hogares al interior de las mismas. Ambas nos permitirán no solo identificar hogares e individuos que residen en dichos hogares entre ambas bases, sino que también permiten hacer el seguimiento de los hogares en el panel.

Como primer ejercicio, utilizando el paquete __```eph```__ descargaremos las bases de individuos y hogares del tercer trimestre de 2019.


```r
eph_ind_319 <- get_microdata(year = 2019, trimester = 3, type = "individual")
eph_hog_319 <- get_microdata(year = 2019, trimester = 3, type = "hogar")
```

Suponiendo que utilizaremos distintas variables de la base de hogares, probaremos "traer" todas las variables a la base de individuos. Para eso utilizaremos la función ```left_join``` del paquete __```dplyr```__ y crearemos un nuevo `dataframe` llamado `eph_319`:


```r
eph_319 <- eph_ind_319 %>%
    left_join(eph_hog_319, by = c("CODUSU", "NRO_HOGAR"))
```

Una vez unidas ambas bases, podemos visualizar el resultado. La función ```left_join``` al unir ambos `dataframes`, identifica con las siglas ```.x``` y ```.y``` a aquellas variables repetidas en ambas bases. Las que llevan la ```x``` corresponderán a la base de individuos y las que llevan ```y``` a la base de hogares. Ejemplo de esto son las variables de ponderación (`PONDERA`, `PONDIH`), las de identificación de la base (`ANO4`, `TRIMESTRES`, `NRO_HOGAR`) o las de ingresos (`ITF`, `IPCF`). Debido a que ambas presentan la misma información por caso, eliminaremos (mediante la función ```select(!(ends_with(".y")))```) las que finalizan con _y_:


```r
eph_319 <- eph_319 %>%
    select(!(ends_with(".y")))
```

Teniendo en cuenta los primeros 15 casos, podemos observar que el número de variables asciende a 242:

<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["CODUSU"],"name":[1],"type":["fct"],"align":["left"]},{"label":["ANO4.x"],"name":[2],"type":["int"],"align":["right"]},{"label":["TRIMESTRE.x"],"name":[3],"type":["int"],"align":["right"]},{"label":["NRO_HOGAR"],"name":[4],"type":["int"],"align":["right"]},{"label":["COMPONENTE"],"name":[5],"type":["int"],"align":["right"]},{"label":["H15"],"name":[6],"type":["int"],"align":["right"]},{"label":["REGION.x"],"name":[7],"type":["int"],"align":["right"]},{"label":["MAS_500.x"],"name":[8],"type":["fct"],"align":["left"]},{"label":["AGLOMERADO.x"],"name":[9],"type":["int"],"align":["right"]},{"label":["PONDERA.x"],"name":[10],"type":["int"],"align":["right"]},{"label":["CH03"],"name":[11],"type":["int"],"align":["right"]},{"label":["CH04"],"name":[12],"type":["int"],"align":["right"]},{"label":["CH05"],"name":[13],"type":["fct"],"align":["left"]},{"label":["CH06"],"name":[14],"type":["int"],"align":["right"]},{"label":["CH07"],"name":[15],"type":["int"],"align":["right"]},{"label":["CH08"],"name":[16],"type":["int"],"align":["right"]},{"label":["CH09"],"name":[17],"type":["int"],"align":["right"]},{"label":["CH10"],"name":[18],"type":["int"],"align":["right"]},{"label":["CH11"],"name":[19],"type":["int"],"align":["right"]},{"label":["CH12"],"name":[20],"type":["int"],"align":["right"]},{"label":["CH13"],"name":[21],"type":["int"],"align":["right"]},{"label":["CH14"],"name":[22],"type":["chr"],"align":["left"]},{"label":["CH15"],"name":[23],"type":["int"],"align":["right"]},{"label":["CH15_COD"],"name":[24],"type":["int"],"align":["right"]},{"label":["CH16"],"name":[25],"type":["int"],"align":["right"]},{"label":["CH16_COD"],"name":[26],"type":["int"],"align":["right"]},{"label":["NIVEL_ED"],"name":[27],"type":["int"],"align":["right"]},{"label":["ESTADO"],"name":[28],"type":["int"],"align":["right"]},{"label":["CAT_OCUP"],"name":[29],"type":["int"],"align":["right"]},{"label":["CAT_INAC"],"name":[30],"type":["int"],"align":["right"]},{"label":["IMPUTA"],"name":[31],"type":["int"],"align":["right"]},{"label":["PP02C1"],"name":[32],"type":["int"],"align":["right"]},{"label":["PP02C2"],"name":[33],"type":["int"],"align":["right"]},{"label":["PP02C3"],"name":[34],"type":["int"],"align":["right"]},{"label":["PP02C4"],"name":[35],"type":["int"],"align":["right"]},{"label":["PP02C5"],"name":[36],"type":["int"],"align":["right"]},{"label":["PP02C6"],"name":[37],"type":["int"],"align":["right"]},{"label":["PP02C7"],"name":[38],"type":["int"],"align":["right"]},{"label":["PP02C8"],"name":[39],"type":["int"],"align":["right"]},{"label":["PP02E"],"name":[40],"type":["int"],"align":["right"]},{"label":["PP02H"],"name":[41],"type":["int"],"align":["right"]},{"label":["PP02I"],"name":[42],"type":["int"],"align":["right"]},{"label":["PP03C"],"name":[43],"type":["int"],"align":["right"]},{"label":["PP03D"],"name":[44],"type":["int"],"align":["right"]},{"label":["PP3E_TOT"],"name":[45],"type":["int"],"align":["right"]},{"label":["PP3F_TOT"],"name":[46],"type":["int"],"align":["right"]},{"label":["PP03G"],"name":[47],"type":["int"],"align":["right"]},{"label":["PP03H"],"name":[48],"type":["int"],"align":["right"]},{"label":["PP03I"],"name":[49],"type":["int"],"align":["right"]},{"label":["PP03J"],"name":[50],"type":["int"],"align":["right"]},{"label":["INTENSI"],"name":[51],"type":["int"],"align":["right"]},{"label":["PP04A"],"name":[52],"type":["int"],"align":["right"]},{"label":["PP04B_COD"],"name":[53],"type":["chr"],"align":["left"]},{"label":["PP04B1"],"name":[54],"type":["int"],"align":["right"]},{"label":["PP04B2"],"name":[55],"type":["int"],"align":["right"]},{"label":["PP04B3_MES"],"name":[56],"type":["int"],"align":["right"]},{"label":["PP04B3_ANO"],"name":[57],"type":["int"],"align":["right"]},{"label":["PP04B3_DIA"],"name":[58],"type":["int"],"align":["right"]},{"label":["PP04C"],"name":[59],"type":["int"],"align":["right"]},{"label":["PP04C99"],"name":[60],"type":["int"],"align":["right"]},{"label":["PP04D_COD"],"name":[61],"type":["chr"],"align":["left"]},{"label":["PP04G"],"name":[62],"type":["int"],"align":["right"]},{"label":["PP05B2_MES"],"name":[63],"type":["int"],"align":["right"]},{"label":["PP05B2_ANO"],"name":[64],"type":["int"],"align":["right"]},{"label":["PP05B2_DIA"],"name":[65],"type":["int"],"align":["right"]},{"label":["PP05C_1"],"name":[66],"type":["int"],"align":["right"]},{"label":["PP05C_2"],"name":[67],"type":["int"],"align":["right"]},{"label":["PP05C_3"],"name":[68],"type":["int"],"align":["right"]},{"label":["PP05E"],"name":[69],"type":["int"],"align":["right"]},{"label":["PP05F"],"name":[70],"type":["int"],"align":["right"]},{"label":["PP05H"],"name":[71],"type":["int"],"align":["right"]},{"label":["PP06A"],"name":[72],"type":["int"],"align":["right"]},{"label":["PP06C"],"name":[73],"type":["int"],"align":["right"]},{"label":["PP06D"],"name":[74],"type":["int"],"align":["right"]},{"label":["PP06E"],"name":[75],"type":["int"],"align":["right"]},{"label":["PP06H"],"name":[76],"type":["int"],"align":["right"]},{"label":["PP07A"],"name":[77],"type":["int"],"align":["right"]},{"label":["PP07C"],"name":[78],"type":["int"],"align":["right"]},{"label":["PP07D"],"name":[79],"type":["int"],"align":["right"]},{"label":["PP07E"],"name":[80],"type":["int"],"align":["right"]},{"label":["PP07F1"],"name":[81],"type":["int"],"align":["right"]},{"label":["PP07F2"],"name":[82],"type":["int"],"align":["right"]},{"label":["PP07F3"],"name":[83],"type":["int"],"align":["right"]},{"label":["PP07F4"],"name":[84],"type":["int"],"align":["right"]},{"label":["PP07F5"],"name":[85],"type":["int"],"align":["right"]},{"label":["PP07G1"],"name":[86],"type":["int"],"align":["right"]},{"label":["PP07G2"],"name":[87],"type":["int"],"align":["right"]},{"label":["PP07G3"],"name":[88],"type":["int"],"align":["right"]},{"label":["PP07G4"],"name":[89],"type":["int"],"align":["right"]},{"label":["PP07G_59"],"name":[90],"type":["int"],"align":["right"]},{"label":["PP07H"],"name":[91],"type":["int"],"align":["right"]},{"label":["PP07I"],"name":[92],"type":["int"],"align":["right"]},{"label":["PP07J"],"name":[93],"type":["int"],"align":["right"]},{"label":["PP07K"],"name":[94],"type":["int"],"align":["right"]},{"label":["PP08D1"],"name":[95],"type":["int"],"align":["right"]},{"label":["PP08D4"],"name":[96],"type":["int"],"align":["right"]},{"label":["PP08F1"],"name":[97],"type":["int"],"align":["right"]},{"label":["PP08F2"],"name":[98],"type":["int"],"align":["right"]},{"label":["PP08J1"],"name":[99],"type":["int"],"align":["right"]},{"label":["PP08J2"],"name":[100],"type":["int"],"align":["right"]},{"label":["PP08J3"],"name":[101],"type":["int"],"align":["right"]},{"label":["PP09A"],"name":[102],"type":["int"],"align":["right"]},{"label":["PP09A_ESP"],"name":[103],"type":["fct"],"align":["left"]},{"label":["PP09B"],"name":[104],"type":["int"],"align":["right"]},{"label":["PP09C"],"name":[105],"type":["int"],"align":["right"]},{"label":["PP09C_ESP"],"name":[106],"type":["fct"],"align":["left"]},{"label":["PP10A"],"name":[107],"type":["int"],"align":["right"]},{"label":["PP10C"],"name":[108],"type":["int"],"align":["right"]},{"label":["PP10D"],"name":[109],"type":["int"],"align":["right"]},{"label":["PP10E"],"name":[110],"type":["int"],"align":["right"]},{"label":["PP11A"],"name":[111],"type":["int"],"align":["right"]},{"label":["PP11B_COD"],"name":[112],"type":["chr"],"align":["left"]},{"label":["PP11B1"],"name":[113],"type":["int"],"align":["right"]},{"label":["PP11B2_MES"],"name":[114],"type":["int"],"align":["right"]},{"label":["PP11B2_ANO"],"name":[115],"type":["int"],"align":["right"]},{"label":["PP11B2_DIA"],"name":[116],"type":["int"],"align":["right"]},{"label":["PP11C"],"name":[117],"type":["int"],"align":["right"]},{"label":["PP11C99"],"name":[118],"type":["int"],"align":["right"]},{"label":["PP11D_COD"],"name":[119],"type":["chr"],"align":["left"]},{"label":["PP11G_ANO"],"name":[120],"type":["int"],"align":["right"]},{"label":["PP11G_MES"],"name":[121],"type":["int"],"align":["right"]},{"label":["PP11G_DIA"],"name":[122],"type":["int"],"align":["right"]},{"label":["PP11L"],"name":[123],"type":["int"],"align":["right"]},{"label":["PP11L1"],"name":[124],"type":["int"],"align":["right"]},{"label":["PP11M"],"name":[125],"type":["int"],"align":["right"]},{"label":["PP11N"],"name":[126],"type":["int"],"align":["right"]},{"label":["PP11O"],"name":[127],"type":["int"],"align":["right"]},{"label":["PP11P"],"name":[128],"type":["int"],"align":["right"]},{"label":["PP11Q"],"name":[129],"type":["int"],"align":["right"]},{"label":["PP11R"],"name":[130],"type":["int"],"align":["right"]},{"label":["PP11S"],"name":[131],"type":["int"],"align":["right"]},{"label":["PP11T"],"name":[132],"type":["int"],"align":["right"]},{"label":["P21"],"name":[133],"type":["int"],"align":["right"]},{"label":["DECOCUR"],"name":[134],"type":["chr"],"align":["left"]},{"label":["IDECOCUR"],"name":[135],"type":["chr"],"align":["left"]},{"label":["RDECOCUR"],"name":[136],"type":["chr"],"align":["left"]},{"label":["GDECOCUR"],"name":[137],"type":["chr"],"align":["left"]},{"label":["PDECOCUR"],"name":[138],"type":["chr"],"align":["left"]},{"label":["ADECOCUR"],"name":[139],"type":["chr"],"align":["left"]},{"label":["PONDIIO"],"name":[140],"type":["int"],"align":["right"]},{"label":["TOT_P12"],"name":[141],"type":["int"],"align":["right"]},{"label":["P47T"],"name":[142],"type":["int"],"align":["right"]},{"label":["DECINDR"],"name":[143],"type":["chr"],"align":["left"]},{"label":["IDECINDR"],"name":[144],"type":["chr"],"align":["left"]},{"label":["RDECINDR"],"name":[145],"type":["chr"],"align":["left"]},{"label":["GDECINDR"],"name":[146],"type":["chr"],"align":["left"]},{"label":["PDECINDR"],"name":[147],"type":["chr"],"align":["left"]},{"label":["ADECINDR"],"name":[148],"type":["chr"],"align":["left"]},{"label":["PONDII"],"name":[149],"type":["int"],"align":["right"]},{"label":["V2_M"],"name":[150],"type":["int"],"align":["right"]},{"label":["V3_M"],"name":[151],"type":["int"],"align":["right"]},{"label":["V4_M"],"name":[152],"type":["int"],"align":["right"]},{"label":["V5_M"],"name":[153],"type":["int"],"align":["right"]},{"label":["V8_M"],"name":[154],"type":["int"],"align":["right"]},{"label":["V9_M"],"name":[155],"type":["int"],"align":["right"]},{"label":["V10_M"],"name":[156],"type":["int"],"align":["right"]},{"label":["V11_M"],"name":[157],"type":["int"],"align":["right"]},{"label":["V12_M"],"name":[158],"type":["int"],"align":["right"]},{"label":["V18_M"],"name":[159],"type":["int"],"align":["right"]},{"label":["V19_AM"],"name":[160],"type":["int"],"align":["right"]},{"label":["V21_M"],"name":[161],"type":["int"],"align":["right"]},{"label":["T_VI"],"name":[162],"type":["int"],"align":["right"]},{"label":["ITF.x"],"name":[163],"type":["int"],"align":["right"]},{"label":["DECIFR.x"],"name":[164],"type":["chr"],"align":["left"]},{"label":["IDECIFR.x"],"name":[165],"type":["chr"],"align":["left"]},{"label":["RDECIFR.x"],"name":[166],"type":["chr"],"align":["left"]},{"label":["GDECIFR.x"],"name":[167],"type":["chr"],"align":["left"]},{"label":["PDECIFR.x"],"name":[168],"type":["chr"],"align":["left"]},{"label":["ADECIFR.x"],"name":[169],"type":["chr"],"align":["left"]},{"label":["IPCF.x"],"name":[170],"type":["dbl"],"align":["right"]},{"label":["DECCFR.x"],"name":[171],"type":["chr"],"align":["left"]},{"label":["IDECCFR.x"],"name":[172],"type":["chr"],"align":["left"]},{"label":["RDECCFR.x"],"name":[173],"type":["chr"],"align":["left"]},{"label":["GDECCFR.x"],"name":[174],"type":["chr"],"align":["left"]},{"label":["PDECCFR.x"],"name":[175],"type":["chr"],"align":["left"]},{"label":["ADECCFR.x"],"name":[176],"type":["chr"],"align":["left"]},{"label":["PONDIH.x"],"name":[177],"type":["int"],"align":["right"]},{"label":["REALIZADA"],"name":[178],"type":["int"],"align":["right"]},{"label":["IV1"],"name":[179],"type":["int"],"align":["right"]},{"label":["IV1_ESP"],"name":[180],"type":["fct"],"align":["left"]},{"label":["IV2"],"name":[181],"type":["int"],"align":["right"]},{"label":["IV3"],"name":[182],"type":["int"],"align":["right"]},{"label":["IV3_ESP"],"name":[183],"type":["fct"],"align":["left"]},{"label":["IV4"],"name":[184],"type":["int"],"align":["right"]},{"label":["IV5"],"name":[185],"type":["int"],"align":["right"]},{"label":["IV6"],"name":[186],"type":["int"],"align":["right"]},{"label":["IV7"],"name":[187],"type":["int"],"align":["right"]},{"label":["IV7_ESP"],"name":[188],"type":["fct"],"align":["left"]},{"label":["IV8"],"name":[189],"type":["int"],"align":["right"]},{"label":["IV9"],"name":[190],"type":["int"],"align":["right"]},{"label":["IV10"],"name":[191],"type":["int"],"align":["right"]},{"label":["IV11"],"name":[192],"type":["int"],"align":["right"]},{"label":["IV12_1"],"name":[193],"type":["int"],"align":["right"]},{"label":["IV12_2"],"name":[194],"type":["int"],"align":["right"]},{"label":["IV12_3"],"name":[195],"type":["int"],"align":["right"]},{"label":["II1"],"name":[196],"type":["int"],"align":["right"]},{"label":["II2"],"name":[197],"type":["int"],"align":["right"]},{"label":["II3"],"name":[198],"type":["int"],"align":["right"]},{"label":["II3_1"],"name":[199],"type":["int"],"align":["right"]},{"label":["II4_1"],"name":[200],"type":["int"],"align":["right"]},{"label":["II4_2"],"name":[201],"type":["int"],"align":["right"]},{"label":["II4_3"],"name":[202],"type":["int"],"align":["right"]},{"label":["II5"],"name":[203],"type":["int"],"align":["right"]},{"label":["II5_1"],"name":[204],"type":["int"],"align":["right"]},{"label":["II6"],"name":[205],"type":["int"],"align":["right"]},{"label":["II6_1"],"name":[206],"type":["int"],"align":["right"]},{"label":["II7"],"name":[207],"type":["int"],"align":["right"]},{"label":["II7_ESP"],"name":[208],"type":["fct"],"align":["left"]},{"label":["II8"],"name":[209],"type":["int"],"align":["right"]},{"label":["II8_ESP"],"name":[210],"type":["fct"],"align":["left"]},{"label":["II9"],"name":[211],"type":["int"],"align":["right"]},{"label":["V1"],"name":[212],"type":["int"],"align":["right"]},{"label":["V2"],"name":[213],"type":["int"],"align":["right"]},{"label":["V21"],"name":[214],"type":["int"],"align":["right"]},{"label":["V22"],"name":[215],"type":["int"],"align":["right"]},{"label":["V3"],"name":[216],"type":["int"],"align":["right"]},{"label":["V4"],"name":[217],"type":["int"],"align":["right"]},{"label":["V5"],"name":[218],"type":["int"],"align":["right"]},{"label":["V6"],"name":[219],"type":["int"],"align":["right"]},{"label":["V7"],"name":[220],"type":["int"],"align":["right"]},{"label":["V8"],"name":[221],"type":["int"],"align":["right"]},{"label":["V9"],"name":[222],"type":["int"],"align":["right"]},{"label":["V10"],"name":[223],"type":["int"],"align":["right"]},{"label":["V11"],"name":[224],"type":["int"],"align":["right"]},{"label":["V12"],"name":[225],"type":["int"],"align":["right"]},{"label":["V13"],"name":[226],"type":["int"],"align":["right"]},{"label":["V14"],"name":[227],"type":["int"],"align":["right"]},{"label":["V15"],"name":[228],"type":["int"],"align":["right"]},{"label":["V16"],"name":[229],"type":["int"],"align":["right"]},{"label":["V17"],"name":[230],"type":["int"],"align":["right"]},{"label":["V18"],"name":[231],"type":["int"],"align":["right"]},{"label":["V19_A"],"name":[232],"type":["int"],"align":["right"]},{"label":["V19_B"],"name":[233],"type":["int"],"align":["right"]},{"label":["IX_TOT"],"name":[234],"type":["int"],"align":["right"]},{"label":["IX_MEN10"],"name":[235],"type":["int"],"align":["right"]},{"label":["IX_MAYEQ10"],"name":[236],"type":["int"],"align":["right"]},{"label":["VII1_1"],"name":[237],"type":["int"],"align":["right"]},{"label":["VII1_2"],"name":[238],"type":["int"],"align":["right"]},{"label":["VII2_1"],"name":[239],"type":["int"],"align":["right"]},{"label":["VII2_2"],"name":[240],"type":["int"],"align":["right"]},{"label":["VII2_3"],"name":[241],"type":["int"],"align":["right"]},{"label":["VII2_4"],"name":[242],"type":["int"],"align":["right"]}],"data":[{"1":"TQRMNOQXYHLMMLCDEFIAH00634891","2":"2019","3":"3","4":"1","5":"1","6":"1","7":"43","8":"S","9":"2","10":"547","11":"1","12":"1","13":"12/04/1963","14":"56","15":"2","16":"1","17":"1","18":"2","19":"0","20":"4","21":"1","22":"NA","23":"1","24":"NA","25":"1","26":"NA","27":"4","28":"1","29":"3","30":"0","31":"0","32":"0","33":"0","34":"0","35":"0","36":"0","37":"0","38":"0","39":"0","40":"0","41":"0","42":"0","43":"0","44":"0","45":"0","46":"0","47":"2","48":"0","49":"2","50":"2","51":"4","52":"1","53":"8401","54":"2","55":"0","56":"0","57":"0","58":"0","59":"7","60":"0","61":"34323","62":"4","63":"0","64":"0","65":"0","66":"0","67":"0","68":"0","69":"0","70":"0","71":"0","72":"0","73":"0","74":"0","75":"0","76":"0","77":"6","78":"2","79":"0","80":"0","81":"2","82":"2","83":"2","84":"2","85":"5","86":"1","87":"1","88":"1","89":"1","90":"0","91":"1","92":"0","93":"1","94":"1","95":"28000","96":"0","97":"0","98":"0","99":"0","100":"0","101":"0","102":"0","103":"","104":"0","105":"0","106":"","107":"NA","108":"NA","109":"NA","110":"NA","111":"NA","112":"NA","113":"NA","114":"NA","115":"NA","116":"NA","117":"NA","118":"NA","119":"NA","120":"NA","121":"NA","122":"NA","123":"NA","124":"NA","125":"NA","126":"NA","127":"NA","128":"NA","129":"NA","130":"NA","131":"NA","132":"NA","133":"28000","134":"7","135":"8","136":"7","137":"7","138":"NA","139":"7","140":"717","141":"700","142":"28700","143":"7","144":"7","145":"7","146":"7","147":"NA","148":"7","149":"859","150":"0","151":"0","152":"0","153":"0","154":"0","155":"0","156":"0","157":"0","158":"0","159":"0","160":"0","161":"0","162":"0","163":"0","164":"NA","165":"NA","166":"NA","167":"NA","168":"NA","169":"NA","170":"0","171":"NA","172":"NA","173":"NA","174":"NA","175":"NA","176":"NA","177":"0","178":"1","179":"1","180":"","181":"2","182":"1","183":"","184":"4","185":"1","186":"1","187":"2","188":"","189":"1","190":"1","191":"1","192":"2","193":"1","194":"1","195":"2","196":"2","197":"2","198":"2","199":"0","200":"1","201":"2","202":"2","203":"2","204":"0","205":"2","206":"0","207":"1","208":"","209":"1","210":"","211":"1","212":"1","213":"2","214":"2","215":"2","216":"2","217":"2","218":"2","219":"2","220":"2","221":"2","222":"2","223":"2","224":"2","225":"2","226":"1","227":"2","228":"2","229":"2","230":"2","231":"2","232":"2","233":"2","234":"6","235":"1","236":"5","237":"1","238":"2","239":"3","240":"4","241":"0","242":"0"},{"1":"TQRMNOQXYHLMMLCDEFIAH00634891","2":"2019","3":"3","4":"1","5":"2","6":"1","7":"43","8":"S","9":"2","10":"547","11":"2","12":"2","13":"24/09/1972","14":"46","15":"2","16":"1","17":"1","18":"2","19":"0","20":"4","21":"2","22":"3","23":"1","24":"NA","25":"1","26":"NA","27":"3","28":"1","29":"3","30":"0","31":"0","32":"0","33":"0","34":"0","35":"0","36":"0","37":"0","38":"0","39":"0","40":"0","41":"0","42":"0","43":"2","44":"2","45":"20","46":"9","47":"2","48":"0","49":"2","50":"1","51":"2","52":"2","53":"9700","54":"1","55":"2","56":"0","57":"1","58":"0","59":"0","60":"0","61":"55314","62":"0","63":"0","64":"0","65":"0","66":"0","67":"0","68":"0","69":"0","70":"0","71":"0","72":"0","73":"0","74":"0","75":"0","76":"0","77":"0","78":"0","79":"0","80":"0","81":"2","82":"2","83":"2","84":"2","85":"5","86":"1","87":"1","88":"1","89":"1","90":"0","91":"1","92":"0","93":"1","94":"1","95":"9500","96":"0","97":"0","98":"0","99":"0","100":"0","101":"0","102":"0","103":"","104":"0","105":"0","106":"","107":"NA","108":"NA","109":"NA","110":"NA","111":"NA","112":"NA","113":"NA","114":"NA","115":"NA","116":"NA","117":"NA","118":"NA","119":"NA","120":"NA","121":"NA","122":"NA","123":"NA","124":"NA","125":"NA","126":"NA","127":"NA","128":"NA","129":"NA","130":"NA","131":"NA","132":"NA","133":"9500","134":"2","135":"3","136":"2","137":"2","138":"NA","139":"3","140":"817","141":"3600","142":"13100","143":"4","144":"4","145":"4","146":"4","147":"NA","148":"4","149":"817","150":"0","151":"0","152":"0","153":"0","154":"0","155":"0","156":"0","157":"0","158":"0","159":"0","160":"0","161":"0","162":"0","163":"0","164":"NA","165":"NA","166":"NA","167":"NA","168":"NA","169":"NA","170":"0","171":"NA","172":"NA","173":"NA","174":"NA","175":"NA","176":"NA","177":"0","178":"1","179":"1","180":"","181":"2","182":"1","183":"","184":"4","185":"1","186":"1","187":"2","188":"","189":"1","190":"1","191":"1","192":"2","193":"1","194":"1","195":"2","196":"2","197":"2","198":"2","199":"0","200":"1","201":"2","202":"2","203":"2","204":"0","205":"2","206":"0","207":"1","208":"","209":"1","210":"","211":"1","212":"1","213":"2","214":"2","215":"2","216":"2","217":"2","218":"2","219":"2","220":"2","221":"2","222":"2","223":"2","224":"2","225":"2","226":"1","227":"2","228":"2","229":"2","230":"2","231":"2","232":"2","233":"2","234":"6","235":"1","236":"5","237":"1","238":"2","239":"3","240":"4","241":"0","242":"0"},{"1":"TQRMNOQXYHLMMLCDEFIAH00634891","2":"2019","3":"3","4":"1","5":"3","6":"1","7":"43","8":"S","9":"2","10":"547","11":"3","12":"2","13":"14/09/1998","14":"20","15":"1","16":"1","17":"1","18":"2","19":"0","20":"7","21":"2","22":"1","23":"1","24":"NA","25":"1","26":"NA","27":"5","28":"1","29":"3","30":"0","31":"0","32":"0","33":"0","34":"0","35":"0","36":"0","37":"0","38":"0","39":"0","40":"0","41":"0","42":"0","43":"1","44":"0","45":"10","46":"0","47":"1","48":"1","49":"1","50":"1","51":"1","52":"2","53":"1009","54":"2","55":"0","56":"0","57":"0","58":"0","59":"5","60":"0","61":"20333","62":"1","63":"0","64":"0","65":"0","66":"0","67":"0","68":"0","69":"0","70":"0","71":"0","72":"0","73":"0","74":"0","75":"0","76":"0","77":"5","78":"2","79":"0","80":"0","81":"2","82":"2","83":"2","84":"2","85":"5","86":"2","87":"2","88":"2","89":"2","90":"5","91":"2","92":"2","93":"2","94":"4","95":"0","96":"0","97":"-9","98":"0","99":"0","100":"0","101":"0","102":"0","103":"","104":"0","105":"0","106":"","107":"NA","108":"NA","109":"NA","110":"NA","111":"NA","112":"NA","113":"NA","114":"NA","115":"NA","116":"NA","117":"NA","118":"NA","119":"NA","120":"NA","121":"NA","122":"NA","123":"NA","124":"NA","125":"NA","126":"NA","127":"NA","128":"NA","129":"NA","130":"NA","131":"NA","132":"NA","133":"-9","134":"12","135":"12","136":"12","137":"12","138":"NA","139":"12","140":"0","141":"0","142":"-9","143":"12","144":"12","145":"12","146":"12","147":"NA","148":"12","149":"0","150":"0","151":"0","152":"0","153":"0","154":"0","155":"0","156":"0","157":"0","158":"0","159":"0","160":"0","161":"0","162":"0","163":"0","164":"NA","165":"NA","166":"NA","167":"NA","168":"NA","169":"NA","170":"0","171":"NA","172":"NA","173":"NA","174":"NA","175":"NA","176":"NA","177":"0","178":"1","179":"1","180":"","181":"2","182":"1","183":"","184":"4","185":"1","186":"1","187":"2","188":"","189":"1","190":"1","191":"1","192":"2","193":"1","194":"1","195":"2","196":"2","197":"2","198":"2","199":"0","200":"1","201":"2","202":"2","203":"2","204":"0","205":"2","206":"0","207":"1","208":"","209":"1","210":"","211":"1","212":"1","213":"2","214":"2","215":"2","216":"2","217":"2","218":"2","219":"2","220":"2","221":"2","222":"2","223":"2","224":"2","225":"2","226":"1","227":"2","228":"2","229":"2","230":"2","231":"2","232":"2","233":"2","234":"6","235":"1","236":"5","237":"1","238":"2","239":"3","240":"4","241":"0","242":"0"},{"1":"TQRMNOQXYHLMMLCDEFIAH00634891","2":"2019","3":"3","4":"1","5":"4","6":"1","7":"43","8":"S","9":"2","10":"547","11":"3","12":"1","13":"11/04/2007","14":"12","15":"5","16":"1","17":"1","18":"1","19":"2","20":"4","21":"2","22":"0","23":"1","24":"NA","25":"1","26":"NA","27":"3","28":"3","29":"0","30":"3","31":"0","32":"0","33":"0","34":"0","35":"0","36":"0","37":"0","38":"0","39":"0","40":"0","41":"2","42":"2","43":"NA","44":"NA","45":"NA","46":"NA","47":"NA","48":"NA","49":"NA","50":"NA","51":"NA","52":"NA","53":"NA","54":"NA","55":"NA","56":"NA","57":"NA","58":"NA","59":"NA","60":"NA","61":"NA","62":"NA","63":"NA","64":"NA","65":"NA","66":"NA","67":"NA","68":"NA","69":"NA","70":"NA","71":"NA","72":"NA","73":"NA","74":"NA","75":"NA","76":"NA","77":"NA","78":"NA","79":"NA","80":"NA","81":"NA","82":"NA","83":"NA","84":"NA","85":"NA","86":"NA","87":"NA","88":"NA","89":"NA","90":"NA","91":"NA","92":"NA","93":"NA","94":"NA","95":"NA","96":"NA","97":"NA","98":"NA","99":"NA","100":"NA","101":"NA","102":"NA","103":"","104":"NA","105":"NA","106":"","107":"NA","108":"NA","109":"NA","110":"NA","111":"NA","112":"NA","113":"NA","114":"NA","115":"NA","116":"NA","117":"NA","118":"NA","119":"NA","120":"NA","121":"NA","122":"NA","123":"NA","124":"NA","125":"NA","126":"NA","127":"NA","128":"NA","129":"NA","130":"NA","131":"NA","132":"NA","133":"0","134":"0","135":"0","136":"0","137":"0","138":"NA","139":"0","140":"547","141":"0","142":"0","143":"0","144":"0","145":"0","146":"0","147":"NA","148":"0","149":"547","150":"0","151":"0","152":"0","153":"0","154":"0","155":"0","156":"0","157":"0","158":"0","159":"0","160":"0","161":"0","162":"0","163":"0","164":"NA","165":"NA","166":"NA","167":"NA","168":"NA","169":"NA","170":"0","171":"NA","172":"NA","173":"NA","174":"NA","175":"NA","176":"NA","177":"0","178":"1","179":"1","180":"","181":"2","182":"1","183":"","184":"4","185":"1","186":"1","187":"2","188":"","189":"1","190":"1","191":"1","192":"2","193":"1","194":"1","195":"2","196":"2","197":"2","198":"2","199":"0","200":"1","201":"2","202":"2","203":"2","204":"0","205":"2","206":"0","207":"1","208":"","209":"1","210":"","211":"1","212":"1","213":"2","214":"2","215":"2","216":"2","217":"2","218":"2","219":"2","220":"2","221":"2","222":"2","223":"2","224":"2","225":"2","226":"1","227":"2","228":"2","229":"2","230":"2","231":"2","232":"2","233":"2","234":"6","235":"1","236":"5","237":"1","238":"2","239":"3","240":"4","241":"0","242":"0"},{"1":"TQRMNOQSTHLOLRCDEFIAH00634843","2":"2019","3":"3","4":"1","5":"2","6":"1","7":"43","8":"S","9":"2","10":"584","11":"2","12":"2","13":"03/03/1981","14":"38","15":"2","16":"4","17":"1","18":"2","19":"0","20":"4","21":"2","22":"2","23":"4","24":"202","25":"1","26":"NA","27":"3","28":"1","29":"2","30":"0","31":"0","32":"0","33":"0","34":"0","35":"0","36":"0","37":"0","38":"0","39":"0","40":"0","41":"0","42":"0","43":"1","44":"0","45":"54","46":"0","47":"2","48":"0","49":"2","50":"2","51":"3","52":"2","53":"4803","54":"2","55":"0","56":"0","57":"0","58":"0","59":"2","60":"0","61":"30113","62":"1","63":"0","64":"0","65":"0","66":"1","67":"1","68":"1","69":"1","70":"7","71":"5","72":"1","73":"0","74":"-9","75":"3","76":"1","77":"0","78":"0","79":"0","80":"0","81":"0","82":"0","83":"0","84":"0","85":"0","86":"0","87":"0","88":"0","89":"0","90":"0","91":"0","92":"0","93":"0","94":"0","95":"0","96":"0","97":"0","98":"0","99":"0","100":"0","101":"0","102":"0","103":"","104":"0","105":"0","106":"","107":"NA","108":"NA","109":"NA","110":"NA","111":"NA","112":"NA","113":"NA","114":"NA","115":"NA","116":"NA","117":"NA","118":"NA","119":"NA","120":"NA","121":"NA","122":"NA","123":"NA","124":"NA","125":"NA","126":"NA","127":"NA","128":"NA","129":"NA","130":"NA","131":"NA","132":"NA","133":"-9","134":"12","135":"12","136":"12","137":"12","138":"NA","139":"12","140":"0","141":"0","142":"-9","143":"12","144":"12","145":"12","146":"12","147":"NA","148":"12","149":"0","150":"0","151":"0","152":"0","153":"7125","154":"0","155":"0","156":"0","157":"0","158":"0","159":"0","160":"0","161":"0","162":"7125","163":"0","164":"NA","165":"NA","166":"NA","167":"NA","168":"NA","169":"NA","170":"0","171":"NA","172":"NA","173":"NA","174":"NA","175":"NA","176":"NA","177":"0","178":"1","179":"1","180":"","181":"1","182":"2","183":"","184":"2","185":"2","186":"1","187":"1","188":"","189":"1","190":"2","191":"2","192":"3","193":"2","194":"1","195":"2","196":"1","197":"1","198":"2","199":"0","200":"1","201":"2","202":"1","203":"2","204":"0","205":"2","206":"0","207":"1","208":"","209":"2","210":"","211":"1","212":"1","213":"2","214":"2","215":"2","216":"2","217":"2","218":"1","219":"2","220":"2","221":"2","222":"2","223":"2","224":"2","225":"2","226":"1","227":"2","228":"2","229":"2","230":"2","231":"2","232":"2","233":"2","234":"5","235":"3","236":"2","237":"1","238":"2","239":"98","240":"0","241":"0","242":"0"},{"1":"TQRMNOQSTHLOLRCDEFIAH00634843","2":"2019","3":"3","4":"1","5":"3","6":"0","7":"43","8":"S","9":"2","10":"584","11":"3","12":"2","13":"17/12/2011","14":"7","15":"5","16":"4","17":"1","18":"1","19":"1","20":"2","21":"2","22":"1","23":"1","24":"NA","25":"1","26":"NA","27":"1","28":"4","29":"0","30":"3","31":"0","32":"0","33":"0","34":"0","35":"0","36":"0","37":"0","38":"0","39":"0","40":"0","41":"0","42":"0","43":"NA","44":"NA","45":"NA","46":"NA","47":"NA","48":"NA","49":"NA","50":"NA","51":"NA","52":"NA","53":"NA","54":"NA","55":"NA","56":"NA","57":"NA","58":"NA","59":"NA","60":"NA","61":"NA","62":"NA","63":"NA","64":"NA","65":"NA","66":"NA","67":"NA","68":"NA","69":"NA","70":"NA","71":"NA","72":"NA","73":"NA","74":"NA","75":"NA","76":"NA","77":"NA","78":"NA","79":"NA","80":"NA","81":"NA","82":"NA","83":"NA","84":"NA","85":"NA","86":"NA","87":"NA","88":"NA","89":"NA","90":"NA","91":"NA","92":"NA","93":"NA","94":"NA","95":"NA","96":"NA","97":"NA","98":"NA","99":"NA","100":"NA","101":"NA","102":"NA","103":"","104":"NA","105":"NA","106":"","107":"NA","108":"NA","109":"NA","110":"NA","111":"NA","112":"NA","113":"NA","114":"NA","115":"NA","116":"NA","117":"NA","118":"NA","119":"NA","120":"NA","121":"NA","122":"NA","123":"NA","124":"NA","125":"NA","126":"NA","127":"NA","128":"NA","129":"NA","130":"NA","131":"NA","132":"NA","133":"0","134":"0","135":"0","136":"0","137":"0","138":"NA","139":"0","140":"584","141":"0","142":"0","143":"0","144":"0","145":"0","146":"0","147":"NA","148":"0","149":"584","150":"0","151":"0","152":"0","153":"0","154":"0","155":"0","156":"0","157":"0","158":"0","159":"0","160":"0","161":"0","162":"0","163":"0","164":"NA","165":"NA","166":"NA","167":"NA","168":"NA","169":"NA","170":"0","171":"NA","172":"NA","173":"NA","174":"NA","175":"NA","176":"NA","177":"0","178":"1","179":"1","180":"","181":"1","182":"2","183":"","184":"2","185":"2","186":"1","187":"1","188":"","189":"1","190":"2","191":"2","192":"3","193":"2","194":"1","195":"2","196":"1","197":"1","198":"2","199":"0","200":"1","201":"2","202":"1","203":"2","204":"0","205":"2","206":"0","207":"1","208":"","209":"2","210":"","211":"1","212":"1","213":"2","214":"2","215":"2","216":"2","217":"2","218":"1","219":"2","220":"2","221":"2","222":"2","223":"2","224":"2","225":"2","226":"1","227":"2","228":"2","229":"2","230":"2","231":"2","232":"2","233":"2","234":"5","235":"3","236":"2","237":"1","238":"2","239":"98","240":"0","241":"0","242":"0"},{"1":"TQRMNOQSTHLOLRCDEFIAH00634843","2":"2019","3":"3","4":"1","5":"4","6":"0","7":"43","8":"S","9":"2","10":"584","11":"3","12":"1","13":"10/12/2013","14":"5","15":"5","16":"4","17":"2","18":"1","19":"1","20":"1","21":"2","22":"4","23":"1","24":"NA","25":"1","26":"NA","27":"7","28":"4","29":"0","30":"5","31":"0","32":"0","33":"0","34":"0","35":"0","36":"0","37":"0","38":"0","39":"0","40":"0","41":"0","42":"0","43":"NA","44":"NA","45":"NA","46":"NA","47":"NA","48":"NA","49":"NA","50":"NA","51":"NA","52":"NA","53":"NA","54":"NA","55":"NA","56":"NA","57":"NA","58":"NA","59":"NA","60":"NA","61":"NA","62":"NA","63":"NA","64":"NA","65":"NA","66":"NA","67":"NA","68":"NA","69":"NA","70":"NA","71":"NA","72":"NA","73":"NA","74":"NA","75":"NA","76":"NA","77":"NA","78":"NA","79":"NA","80":"NA","81":"NA","82":"NA","83":"NA","84":"NA","85":"NA","86":"NA","87":"NA","88":"NA","89":"NA","90":"NA","91":"NA","92":"NA","93":"NA","94":"NA","95":"NA","96":"NA","97":"NA","98":"NA","99":"NA","100":"NA","101":"NA","102":"NA","103":"","104":"NA","105":"NA","106":"","107":"NA","108":"NA","109":"NA","110":"NA","111":"NA","112":"NA","113":"NA","114":"NA","115":"NA","116":"NA","117":"NA","118":"NA","119":"NA","120":"NA","121":"NA","122":"NA","123":"NA","124":"NA","125":"NA","126":"NA","127":"NA","128":"NA","129":"NA","130":"NA","131":"NA","132":"NA","133":"0","134":"0","135":"0","136":"0","137":"0","138":"NA","139":"0","140":"584","141":"0","142":"0","143":"0","144":"0","145":"0","146":"0","147":"NA","148":"0","149":"584","150":"0","151":"0","152":"0","153":"0","154":"0","155":"0","156":"0","157":"0","158":"0","159":"0","160":"0","161":"0","162":"0","163":"0","164":"NA","165":"NA","166":"NA","167":"NA","168":"NA","169":"NA","170":"0","171":"NA","172":"NA","173":"NA","174":"NA","175":"NA","176":"NA","177":"0","178":"1","179":"1","180":"","181":"1","182":"2","183":"","184":"2","185":"2","186":"1","187":"1","188":"","189":"1","190":"2","191":"2","192":"3","193":"2","194":"1","195":"2","196":"1","197":"1","198":"2","199":"0","200":"1","201":"2","202":"1","203":"2","204":"0","205":"2","206":"0","207":"1","208":"","209":"2","210":"","211":"1","212":"1","213":"2","214":"2","215":"2","216":"2","217":"2","218":"1","219":"2","220":"2","221":"2","222":"2","223":"2","224":"2","225":"2","226":"1","227":"2","228":"2","229":"2","230":"2","231":"2","232":"2","233":"2","234":"5","235":"3","236":"2","237":"1","238":"2","239":"98","240":"0","241":"0","242":"0"},{"1":"TQRMNOQSTHLOLRCDEFIAH00634843","2":"2019","3":"3","4":"1","5":"5","6":"0","7":"43","8":"S","9":"2","10":"584","11":"3","12":"1","13":"27/02/2016","14":"3","15":"5","16":"4","17":"2","18":"1","19":"1","20":"1","21":"2","22":"0","23":"1","24":"NA","25":"6","26":"NA","27":"7","28":"4","29":"0","30":"5","31":"0","32":"0","33":"0","34":"0","35":"0","36":"0","37":"0","38":"0","39":"0","40":"0","41":"0","42":"0","43":"NA","44":"NA","45":"NA","46":"NA","47":"NA","48":"NA","49":"NA","50":"NA","51":"NA","52":"NA","53":"NA","54":"NA","55":"NA","56":"NA","57":"NA","58":"NA","59":"NA","60":"NA","61":"NA","62":"NA","63":"NA","64":"NA","65":"NA","66":"NA","67":"NA","68":"NA","69":"NA","70":"NA","71":"NA","72":"NA","73":"NA","74":"NA","75":"NA","76":"NA","77":"NA","78":"NA","79":"NA","80":"NA","81":"NA","82":"NA","83":"NA","84":"NA","85":"NA","86":"NA","87":"NA","88":"NA","89":"NA","90":"NA","91":"NA","92":"NA","93":"NA","94":"NA","95":"NA","96":"NA","97":"NA","98":"NA","99":"NA","100":"NA","101":"NA","102":"NA","103":"","104":"NA","105":"NA","106":"","107":"NA","108":"NA","109":"NA","110":"NA","111":"NA","112":"NA","113":"NA","114":"NA","115":"NA","116":"NA","117":"NA","118":"NA","119":"NA","120":"NA","121":"NA","122":"NA","123":"NA","124":"NA","125":"NA","126":"NA","127":"NA","128":"NA","129":"NA","130":"NA","131":"NA","132":"NA","133":"0","134":"0","135":"0","136":"0","137":"0","138":"NA","139":"0","140":"584","141":"0","142":"0","143":"0","144":"0","145":"0","146":"0","147":"NA","148":"0","149":"584","150":"0","151":"0","152":"0","153":"0","154":"0","155":"0","156":"0","157":"0","158":"0","159":"0","160":"0","161":"0","162":"0","163":"0","164":"NA","165":"NA","166":"NA","167":"NA","168":"NA","169":"NA","170":"0","171":"NA","172":"NA","173":"NA","174":"NA","175":"NA","176":"NA","177":"0","178":"1","179":"1","180":"","181":"1","182":"2","183":"","184":"2","185":"2","186":"1","187":"1","188":"","189":"1","190":"2","191":"2","192":"3","193":"2","194":"1","195":"2","196":"1","197":"1","198":"2","199":"0","200":"1","201":"2","202":"1","203":"2","204":"0","205":"2","206":"0","207":"1","208":"","209":"2","210":"","211":"1","212":"1","213":"2","214":"2","215":"2","216":"2","217":"2","218":"1","219":"2","220":"2","221":"2","222":"2","223":"2","224":"2","225":"2","226":"1","227":"2","228":"2","229":"2","230":"2","231":"2","232":"2","233":"2","234":"5","235":"3","236":"2","237":"1","238":"2","239":"98","240":"0","241":"0","242":"0"},{"1":"TQRMNOSRQHLOLRCDEFIAH00634844","2":"2019","3":"3","4":"1","5":"1","6":"1","7":"43","8":"S","9":"2","10":"584","11":"1","12":"1","13":"15/07/1965","14":"54","15":"3","16":"4","17":"1","18":"2","19":"0","20":"2","21":"1","22":"NA","23":"3","24":"22","25":"1","26":"NA","27":"2","28":"1","29":"2","30":"0","31":"0","32":"0","33":"0","34":"0","35":"0","36":"0","37":"0","38":"0","39":"0","40":"0","41":"0","42":"0","43":"1","44":"0","45":"56","46":"0","47":"2","48":"0","49":"2","50":"2","51":"3","52":"2","53":"1009","54":"2","55":"0","56":"0","57":"0","58":"0","59":"2","60":"0","61":"30113","62":"1","63":"0","64":"0","65":"0","66":"1","67":"1","68":"1","69":"1","70":"7","71":"6","72":"1","73":"0","74":"-9","75":"3","76":"1","77":"0","78":"0","79":"0","80":"0","81":"0","82":"0","83":"0","84":"0","85":"0","86":"0","87":"0","88":"0","89":"0","90":"0","91":"0","92":"0","93":"0","94":"0","95":"0","96":"0","97":"0","98":"0","99":"0","100":"0","101":"0","102":"0","103":"","104":"0","105":"0","106":"","107":"NA","108":"NA","109":"NA","110":"NA","111":"NA","112":"NA","113":"NA","114":"NA","115":"NA","116":"NA","117":"NA","118":"NA","119":"NA","120":"NA","121":"NA","122":"NA","123":"NA","124":"NA","125":"NA","126":"NA","127":"NA","128":"NA","129":"NA","130":"NA","131":"NA","132":"NA","133":"-9","134":"12","135":"12","136":"12","137":"12","138":"NA","139":"12","140":"0","141":"0","142":"-9","143":"12","144":"12","145":"12","146":"12","147":"NA","148":"12","149":"0","150":"0","151":"0","152":"0","153":"0","154":"0","155":"0","156":"0","157":"0","158":"0","159":"0","160":"0","161":"0","162":"0","163":"0","164":"NA","165":"NA","166":"NA","167":"NA","168":"NA","169":"NA","170":"0","171":"NA","172":"NA","173":"NA","174":"NA","175":"NA","176":"NA","177":"0","178":"1","179":"1","180":"","181":"4","182":"2","183":"","184":"2","185":"2","186":"1","187":"1","188":"","189":"1","190":"1","191":"1","192":"2","193":"2","194":"2","195":"2","196":"4","197":"3","198":"2","199":"0","200":"1","201":"1","202":"1","203":"2","204":"0","205":"2","206":"0","207":"1","208":"","209":"2","210":"","211":"1","212":"1","213":"2","214":"2","215":"2","216":"2","217":"2","218":"2","219":"2","220":"2","221":"2","222":"2","223":"2","224":"2","225":"2","226":"1","227":"2","228":"1","229":"2","230":"2","231":"2","232":"2","233":"2","234":"3","235":"0","236":"3","237":"1","238":"2","239":"3","240":"0","241":"0","242":"0"},{"1":"TQRMNOSRQHLOLRCDEFIAH00634844","2":"2019","3":"3","4":"1","5":"2","6":"1","7":"43","8":"S","9":"2","10":"584","11":"3","12":"1","13":"19/08/2000","14":"19","15":"5","16":"4","17":"1","18":"1","19":"1","20":"4","21":"2","22":"5","23":"1","24":"NA","25":"1","26":"NA","27":"3","28":"1","29":"4","30":"0","31":"0","32":"0","33":"0","34":"0","35":"0","36":"0","37":"0","38":"0","39":"0","40":"0","41":"0","42":"0","43":"1","44":"0","45":"25","46":"0","47":"2","48":"0","49":"2","50":"2","51":"2","52":"2","53":"1009","54":"2","55":"0","56":"0","57":"0","58":"0","59":"2","60":"0","61":"30314","62":"1","63":"0","64":"1","65":"0","66":"0","67":"0","68":"0","69":"0","70":"0","71":"0","72":"0","73":"0","74":"0","75":"0","76":"0","77":"0","78":"0","79":"0","80":"0","81":"0","82":"0","83":"0","84":"0","85":"0","86":"0","87":"0","88":"0","89":"0","90":"0","91":"0","92":"0","93":"0","94":"0","95":"0","96":"0","97":"0","98":"0","99":"0","100":"0","101":"0","102":"0","103":"","104":"0","105":"0","106":"","107":"NA","108":"NA","109":"NA","110":"NA","111":"NA","112":"NA","113":"NA","114":"NA","115":"NA","116":"NA","117":"NA","118":"NA","119":"NA","120":"NA","121":"NA","122":"NA","123":"NA","124":"NA","125":"NA","126":"NA","127":"NA","128":"NA","129":"NA","130":"NA","131":"NA","132":"NA","133":"0","134":"0","135":"0","136":"0","137":"0","138":"NA","139":"0","140":"584","141":"0","142":"0","143":"0","144":"0","145":"0","146":"0","147":"NA","148":"0","149":"584","150":"0","151":"0","152":"0","153":"0","154":"0","155":"0","156":"0","157":"0","158":"0","159":"0","160":"0","161":"0","162":"0","163":"0","164":"NA","165":"NA","166":"NA","167":"NA","168":"NA","169":"NA","170":"0","171":"NA","172":"NA","173":"NA","174":"NA","175":"NA","176":"NA","177":"0","178":"1","179":"1","180":"","181":"4","182":"2","183":"","184":"2","185":"2","186":"1","187":"1","188":"","189":"1","190":"1","191":"1","192":"2","193":"2","194":"2","195":"2","196":"4","197":"3","198":"2","199":"0","200":"1","201":"1","202":"1","203":"2","204":"0","205":"2","206":"0","207":"1","208":"","209":"2","210":"","211":"1","212":"1","213":"2","214":"2","215":"2","216":"2","217":"2","218":"2","219":"2","220":"2","221":"2","222":"2","223":"2","224":"2","225":"2","226":"1","227":"2","228":"1","229":"2","230":"2","231":"2","232":"2","233":"2","234":"3","235":"0","236":"3","237":"1","238":"2","239":"3","240":"0","241":"0","242":"0"},{"1":"TQRMNOSRQHLOLRCDEFIAH00634844","2":"2019","3":"3","4":"1","5":"3","6":"1","7":"43","8":"S","9":"2","10":"584","11":"3","12":"2","13":"26/02/2006","14":"13","15":"5","16":"4","17":"1","18":"1","19":"1","20":"4","21":"2","22":"1","23":"1","24":"NA","25":"1","26":"NA","27":"3","28":"3","29":"0","30":"3","31":"0","32":"0","33":"0","34":"0","35":"0","36":"0","37":"0","38":"0","39":"0","40":"0","41":"2","42":"2","43":"NA","44":"NA","45":"NA","46":"NA","47":"NA","48":"NA","49":"NA","50":"NA","51":"NA","52":"NA","53":"NA","54":"NA","55":"NA","56":"NA","57":"NA","58":"NA","59":"NA","60":"NA","61":"NA","62":"NA","63":"NA","64":"NA","65":"NA","66":"NA","67":"NA","68":"NA","69":"NA","70":"NA","71":"NA","72":"NA","73":"NA","74":"NA","75":"NA","76":"NA","77":"NA","78":"NA","79":"NA","80":"NA","81":"NA","82":"NA","83":"NA","84":"NA","85":"NA","86":"NA","87":"NA","88":"NA","89":"NA","90":"NA","91":"NA","92":"NA","93":"NA","94":"NA","95":"NA","96":"NA","97":"NA","98":"NA","99":"NA","100":"NA","101":"NA","102":"NA","103":"","104":"NA","105":"NA","106":"","107":"NA","108":"NA","109":"NA","110":"NA","111":"NA","112":"NA","113":"NA","114":"NA","115":"NA","116":"NA","117":"NA","118":"NA","119":"NA","120":"NA","121":"NA","122":"NA","123":"NA","124":"NA","125":"NA","126":"NA","127":"NA","128":"NA","129":"NA","130":"NA","131":"NA","132":"NA","133":"0","134":"0","135":"0","136":"0","137":"0","138":"NA","139":"0","140":"584","141":"0","142":"0","143":"0","144":"0","145":"0","146":"0","147":"NA","148":"0","149":"584","150":"0","151":"0","152":"0","153":"0","154":"0","155":"0","156":"0","157":"0","158":"0","159":"0","160":"0","161":"0","162":"0","163":"0","164":"NA","165":"NA","166":"NA","167":"NA","168":"NA","169":"NA","170":"0","171":"NA","172":"NA","173":"NA","174":"NA","175":"NA","176":"NA","177":"0","178":"1","179":"1","180":"","181":"4","182":"2","183":"","184":"2","185":"2","186":"1","187":"1","188":"","189":"1","190":"1","191":"1","192":"2","193":"2","194":"2","195":"2","196":"4","197":"3","198":"2","199":"0","200":"1","201":"1","202":"1","203":"2","204":"0","205":"2","206":"0","207":"1","208":"","209":"2","210":"","211":"1","212":"1","213":"2","214":"2","215":"2","216":"2","217":"2","218":"2","219":"2","220":"2","221":"2","222":"2","223":"2","224":"2","225":"2","226":"1","227":"2","228":"1","229":"2","230":"2","231":"2","232":"2","233":"2","234":"3","235":"0","236":"3","237":"1","238":"2","239":"3","240":"0","241":"0","242":"0"},{"1":"TQRMNOSPWHJOLQCDEFIAH00611713","2":"2019","3":"3","4":"1","5":"1","6":"1","7":"43","8":"S","9":"2","10":"815","11":"1","12":"2","13":"25/01/1975","14":"44","15":"2","16":"4","17":"1","18":"1","19":"1","20":"4","21":"2","22":"2","23":"4","24":"221","25":"1","26":"NA","27":"3","28":"1","29":"3","30":"0","31":"0","32":"0","33":"0","34":"0","35":"0","36":"0","37":"0","38":"0","39":"0","40":"0","41":"0","42":"0","43":"1","44":"0","45":"15","46":"0","47":"2","48":"0","49":"2","50":"1","51":"2","52":"1","53":"8101","54":"2","55":"0","56":"0","57":"0","58":"0","59":"9","60":"0","61":"56314","62":"9","63":"0","64":"0","65":"0","66":"0","67":"0","68":"0","69":"0","70":"0","71":"0","72":"0","73":"0","74":"0","75":"0","76":"0","77":"5","78":"1","79":"9","80":"1","81":"2","82":"2","83":"2","84":"2","85":"5","86":"2","87":"2","88":"2","89":"2","90":"5","91":"2","92":"2","93":"1","94":"4","95":"5500","96":"0","97":"0","98":"0","99":"0","100":"0","101":"0","102":"0","103":"","104":"0","105":"0","106":"","107":"NA","108":"NA","109":"NA","110":"NA","111":"NA","112":"NA","113":"NA","114":"NA","115":"NA","116":"NA","117":"NA","118":"NA","119":"NA","120":"NA","121":"NA","122":"NA","123":"NA","124":"NA","125":"NA","126":"NA","127":"NA","128":"NA","129":"NA","130":"NA","131":"NA","132":"NA","133":"5500","134":"2","135":"2","136":"2","137":"2","138":"NA","139":"1","140":"973","141":"0","142":"7500","143":"2","144":"2","145":"2","146":"2","147":"NA","148":"2","149":"962","150":"0","151":"0","152":"0","153":"2000","154":"0","155":"0","156":"0","157":"0","158":"0","159":"0","160":"0","161":"0","162":"2000","163":"30000","164":"4","165":"5","166":"5","167":"4","168":"NA","169":"4","170":"7500","171":"3","172":"3","173":"2","174":"2","175":"NA","176":"2","177":"2202","178":"1","179":"1","180":"","181":"3","182":"2","183":"","184":"4","185":"2","186":"1","187":"1","188":"","189":"1","190":"1","191":"2","192":"3","193":"1","194":"1","195":"2","196":"3","197":"2","198":"2","199":"0","200":"1","201":"2","202":"2","203":"2","204":"0","205":"2","206":"0","207":"1","208":"","209":"2","210":"","211":"1","212":"1","213":"2","214":"2","215":"2","216":"2","217":"2","218":"1","219":"2","220":"1","221":"2","222":"2","223":"2","224":"2","225":"2","226":"2","227":"2","228":"2","229":"1","230":"2","231":"2","232":"2","233":"2","234":"4","235":"1","236":"3","237":"1","238":"0","239":"98","240":"0","241":"0","242":"0"},{"1":"TQRMNOSPWHJOLQCDEFIAH00611713","2":"2019","3":"3","4":"1","5":"2","6":"1","7":"43","8":"S","9":"2","10":"815","11":"3","12":"1","13":"21/06/2003","14":"16","15":"5","16":"4","17":"1","18":"1","19":"1","20":"4","21":"2","22":"4","23":"4","24":"221","25":"1","26":"NA","27":"3","28":"3","29":"0","30":"3","31":"0","32":"0","33":"0","34":"0","35":"0","36":"0","37":"0","38":"0","39":"0","40":"0","41":"2","42":"2","43":"NA","44":"NA","45":"NA","46":"NA","47":"NA","48":"NA","49":"NA","50":"NA","51":"NA","52":"NA","53":"NA","54":"NA","55":"NA","56":"NA","57":"NA","58":"NA","59":"NA","60":"NA","61":"NA","62":"NA","63":"NA","64":"NA","65":"NA","66":"NA","67":"NA","68":"NA","69":"NA","70":"NA","71":"NA","72":"NA","73":"NA","74":"NA","75":"NA","76":"NA","77":"NA","78":"NA","79":"NA","80":"NA","81":"NA","82":"NA","83":"NA","84":"NA","85":"NA","86":"NA","87":"NA","88":"NA","89":"NA","90":"NA","91":"NA","92":"NA","93":"NA","94":"NA","95":"NA","96":"NA","97":"NA","98":"NA","99":"NA","100":"NA","101":"NA","102":"NA","103":"","104":"NA","105":"NA","106":"","107":"NA","108":"NA","109":"NA","110":"NA","111":"NA","112":"NA","113":"NA","114":"NA","115":"NA","116":"NA","117":"NA","118":"NA","119":"NA","120":"NA","121":"NA","122":"NA","123":"NA","124":"NA","125":"NA","126":"NA","127":"NA","128":"NA","129":"NA","130":"NA","131":"NA","132":"NA","133":"0","134":"0","135":"0","136":"0","137":"0","138":"NA","139":"0","140":"815","141":"0","142":"0","143":"0","144":"0","145":"0","146":"0","147":"NA","148":"0","149":"815","150":"0","151":"0","152":"0","153":"0","154":"0","155":"0","156":"0","157":"0","158":"0","159":"0","160":"0","161":"0","162":"0","163":"30000","164":"4","165":"5","166":"5","167":"4","168":"NA","169":"4","170":"7500","171":"3","172":"3","173":"2","174":"2","175":"NA","176":"2","177":"2202","178":"1","179":"1","180":"","181":"3","182":"2","183":"","184":"4","185":"2","186":"1","187":"1","188":"","189":"1","190":"1","191":"2","192":"3","193":"1","194":"1","195":"2","196":"3","197":"2","198":"2","199":"0","200":"1","201":"2","202":"2","203":"2","204":"0","205":"2","206":"0","207":"1","208":"","209":"2","210":"","211":"1","212":"1","213":"2","214":"2","215":"2","216":"2","217":"2","218":"1","219":"2","220":"1","221":"2","222":"2","223":"2","224":"2","225":"2","226":"2","227":"2","228":"2","229":"1","230":"2","231":"2","232":"2","233":"2","234":"4","235":"1","236":"3","237":"1","238":"0","239":"98","240":"0","241":"0","242":"0"},{"1":"TQRMNOSPWHJOLQCDEFIAH00611713","2":"2019","3":"3","4":"1","5":"3","6":"0","7":"43","8":"S","9":"2","10":"815","11":"3","12":"1","13":"13/03/2013","14":"6","15":"5","16":"1","17":"1","18":"1","19":"1","20":"2","21":"2","22":"0","23":"1","24":"NA","25":"1","26":"NA","27":"1","28":"4","29":"0","30":"3","31":"0","32":"0","33":"0","34":"0","35":"0","36":"0","37":"0","38":"0","39":"0","40":"0","41":"0","42":"0","43":"NA","44":"NA","45":"NA","46":"NA","47":"NA","48":"NA","49":"NA","50":"NA","51":"NA","52":"NA","53":"NA","54":"NA","55":"NA","56":"NA","57":"NA","58":"NA","59":"NA","60":"NA","61":"NA","62":"NA","63":"NA","64":"NA","65":"NA","66":"NA","67":"NA","68":"NA","69":"NA","70":"NA","71":"NA","72":"NA","73":"NA","74":"NA","75":"NA","76":"NA","77":"NA","78":"NA","79":"NA","80":"NA","81":"NA","82":"NA","83":"NA","84":"NA","85":"NA","86":"NA","87":"NA","88":"NA","89":"NA","90":"NA","91":"NA","92":"NA","93":"NA","94":"NA","95":"NA","96":"NA","97":"NA","98":"NA","99":"NA","100":"NA","101":"NA","102":"NA","103":"","104":"NA","105":"NA","106":"","107":"NA","108":"NA","109":"NA","110":"NA","111":"NA","112":"NA","113":"NA","114":"NA","115":"NA","116":"NA","117":"NA","118":"NA","119":"NA","120":"NA","121":"NA","122":"NA","123":"NA","124":"NA","125":"NA","126":"NA","127":"NA","128":"NA","129":"NA","130":"NA","131":"NA","132":"NA","133":"0","134":"0","135":"0","136":"0","137":"0","138":"NA","139":"0","140":"815","141":"0","142":"0","143":"0","144":"0","145":"0","146":"0","147":"NA","148":"0","149":"815","150":"0","151":"0","152":"0","153":"0","154":"0","155":"0","156":"0","157":"0","158":"0","159":"0","160":"0","161":"0","162":"0","163":"30000","164":"4","165":"5","166":"5","167":"4","168":"NA","169":"4","170":"7500","171":"3","172":"3","173":"2","174":"2","175":"NA","176":"2","177":"2202","178":"1","179":"1","180":"","181":"3","182":"2","183":"","184":"4","185":"2","186":"1","187":"1","188":"","189":"1","190":"1","191":"2","192":"3","193":"1","194":"1","195":"2","196":"3","197":"2","198":"2","199":"0","200":"1","201":"2","202":"2","203":"2","204":"0","205":"2","206":"0","207":"1","208":"","209":"2","210":"","211":"1","212":"1","213":"2","214":"2","215":"2","216":"2","217":"2","218":"1","219":"2","220":"1","221":"2","222":"2","223":"2","224":"2","225":"2","226":"2","227":"2","228":"2","229":"1","230":"2","231":"2","232":"2","233":"2","234":"4","235":"1","236":"3","237":"1","238":"0","239":"98","240":"0","241":"0","242":"0"},{"1":"TQRMNOSPWHJOLQCDEFIAH00611713","2":"2019","3":"3","4":"1","5":"4","6":"1","7":"43","8":"S","9":"2","10":"815","11":"2","12":"1","13":"13/05/1988","14":"31","15":"2","16":"1","17":"1","18":"2","19":"0","20":"2","21":"2","22":"6","23":"1","24":"NA","25":"1","26":"NA","27":"1","28":"1","29":"3","30":"0","31":"0","32":"0","33":"0","34":"0","35":"0","36":"0","37":"0","38":"0","39":"0","40":"0","41":"0","42":"0","43":"1","44":"0","45":"48","46":"0","47":"2","48":"0","49":"2","50":"2","51":"3","52":"2","53":"4808","54":"2","55":"0","56":"0","57":"0","58":"0","59":"99","60":"9","61":"32314","62":"1","63":"0","64":"0","65":"0","66":"0","67":"0","68":"0","69":"0","70":"0","71":"0","72":"0","73":"0","74":"0","75":"0","76":"0","77":"6","78":"2","79":"0","80":"0","81":"2","82":"2","83":"2","84":"2","85":"5","86":"1","87":"1","88":"1","89":"1","90":"0","91":"1","92":"0","93":"1","94":"1","95":"15000","96":"0","97":"0","98":"0","99":"7500","100":"0","101":"0","102":"0","103":"","104":"0","105":"0","106":"","107":"NA","108":"NA","109":"NA","110":"NA","111":"NA","112":"NA","113":"NA","114":"NA","115":"NA","116":"NA","117":"NA","118":"NA","119":"NA","120":"NA","121":"NA","122":"NA","123":"NA","124":"NA","125":"NA","126":"NA","127":"NA","128":"NA","129":"NA","130":"NA","131":"NA","132":"NA","133":"15000","134":"4","135":"5","136":"4","137":"4","138":"NA","139":"4","140":"1406","141":"0","142":"22500","143":"6","144":"6","145":"6","146":"6","147":"NA","148":"6","149":"1468","150":"0","151":"0","152":"0","153":"0","154":"0","155":"0","156":"0","157":"0","158":"0","159":"0","160":"0","161":"0","162":"0","163":"30000","164":"4","165":"5","166":"5","167":"4","168":"NA","169":"4","170":"7500","171":"3","172":"3","173":"2","174":"2","175":"NA","176":"2","177":"2202","178":"1","179":"1","180":"","181":"3","182":"2","183":"","184":"4","185":"2","186":"1","187":"1","188":"","189":"1","190":"1","191":"2","192":"3","193":"1","194":"1","195":"2","196":"3","197":"2","198":"2","199":"0","200":"1","201":"2","202":"2","203":"2","204":"0","205":"2","206":"0","207":"1","208":"","209":"2","210":"","211":"1","212":"1","213":"2","214":"2","215":"2","216":"2","217":"2","218":"1","219":"2","220":"1","221":"2","222":"2","223":"2","224":"2","225":"2","226":"2","227":"2","228":"2","229":"1","230":"2","231":"2","232":"2","233":"2","234":"4","235":"1","236":"3","237":"1","238":"0","239":"98","240":"0","241":"0","242":"0"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>



De este modo, el `dataframe` resultante (`eph_319`) presenta la estructura de la base de individuos y para cada registro (individuo), se agrega la información correspondiente a su hogar. Por último, etiquetaremos las variables y categorías de las bases con la función ```organize_labels```.


```r
eph_ind_319 <- organize_labels(eph_ind_319, type = "individual")
eph_hog_319 <- organize_labels(eph_hog_319, type = "hogar")
```

### Población bajo análisis

En los estudios de clases sociales no es lo mismo trabajar con individuos u hogares, jóvenes o viejos, habitantes de la totalidad del país o de una ciudad particular. Varias decisiones respecto al universo de estudio, las unidades de análisis y el enfoque temporal, deben hacerse en forma previa para realizar posteriormente un análisis preciso según las preguntas de investigación. En este apartado exploraremos algunas filtros que son aplicados comúnmente en este tipo de investigaciones.

#### Selección temporal

Una primera decisión será definir sobre qué **período temporal** trabajaremos en nuestra investigación. En este caso, tomando la base de individuos que hemos descargado, nos ceñiremos al tercer trimestre de 2019.

Sin embargo, nuestros objetivos pueden corresponderse a preguntas de tipo longitudinal, por lo cual nuestra selección podría abarcar un mayor período de tiempo, en términos de trimestres o de años. Por ejemplo, anteriormente descargamos tres bases de datos que correspondían a los cuartos trimestres de 2017 a 2019. En ese caso, podemos analizar los cambios ocurridos en la estructura de clases, observando la distribución de las mismas en cada cuarto trimestre durante tres años.

#### Selección espacial

En segundo lugar deberemos definir sobre que **espacio**, en términos geográficos o de jurisdicción (políticos), estaremos haciendo nuestro análisis. Como señalamos, la EPH recaba información sobre los principales aglomerados del país, cubriendo aproximadamente a un 70% de la población nacional total. La población se encuentra clasificada según su aglomerado de residencia en la variable ```AGLOMERADO```:


```r
attributes(eph_ind_319$AGLOMERADO)
```

```
## $label
## [1] "Codigo de Aglomerado"
## 
## $class
## [1] "labelled" "integer" 
## 
## $labels
##                    Gran La Plata             Bahia Blanca - Cerri 
##                                2                                3 
##                     Gran Rosario                    Gran Santa Fe 
##                                4                                5 
##                      Gran Parana                          Posadas 
##                                6                                7 
##                 Gran Resistencia        Cdro. Rivadavia - R.Tilly 
##                                8                                9 
##                     Gran Mendoza                       Corrientes 
##                               10                               12 
##                     Gran Cordoba                        Concordia 
##                               13                               14 
##                          Formosa               Neuquen - Plottier 
##                               15                               17 
##         S. del Estero - La Banda                  Jujuy - Palpala 
##                               18                               19 
##                     Rio Gallegos                   Gran Catamarca 
##                               20                               22 
##                            Salta                         La Rioja 
##                               23                               25 
##          San Luis - El Chorrillo                    Gran San Juan 
##                               26                               27 
##          Gran Tucuman - T. Viejo                Santa Rosa - Toay 
##                               29                               30 
##             Ushuaia - Rio Grande           Ciudad de Buenos Aires 
##                               31                               32 
##                 Partidos del GBA            Mar del Plata - Batan 
##                               33                               34 
##                       Rio Cuarto San Nicolas - Villa Constitucion 
##                               36                               38 
##                  Rawson - Trelew    Viedma - Carmen de Patagones. 
##                               91                               93
```

A partir de los atributos de esta variable podemos reconocer los códigos que identifican a cada aglomerado. Supongamos ahora que queremos crear un nuevo objeto que nos guarde una selección determinada: la población que reside en el aglomerado _Gran Mendoza_. A través de la función ```dplyr::filter``` vamos a filtrar a dicho aglomerado y lo guardaremos en el objeto `eph_ind_319_sel`. 


```r
eph_ind_319_sel <- eph_ind_319 %>%
    filter(AGLOMERADO == 10)
```

De esta forma el número de casos efectivos relevados por la EPH en el tercer trimestre de 2019 es de 2.354.


```r
nrow(eph_ind_319_sel)
```

```
## [1] 2354
```

Otra variable a considerar para realizar selecciones de tipo espacial es la de ```region```, que presenta los siguientes atributos:


```r
attributes(eph_ind_319$REGION)
```

```
## $label
## [1] "Codigo de Region"
## 
## $class
## [1] "labelled" "integer" 
## 
## $labels
## Gran Buenos Aires          Noroeste          Nordeste              Cuyo 
##               "1"              "40"              "41"              "42" 
##          Pampeana                   
##              "43"      "Patagonica"
```

#### Selecciones en base a características etarias

La **edad** es otra característica comúnmente utilizada como elemento de recorte analítico. Hay estudios sobre estratificación social [@Erikson1992] que consideran que debe estudiarse aquella población mayor a 30 o 35 años, debido a que es a esa edad en donde se produce un proceso de consolidación laboral, y por ende, los sujetos se asientan, de algún modo, en una posición de clase. En contraposición, otros investigadores interesados en los procesos de estructuración de clase en juventudes optan por considerar la posición que asumen los mismos en las relaciones de trabajo.

Estás son decisiones que operan en base a los objetivos del análisis que se quiere emprender y deben ser consideradas. En este caso, como ejemplo, sobre la base de la selección realizada sobre el aglomerado _Gran Mendoza_, filtraremos a aquella población mayor a 25 años, suponiendo que con mayor probabilidad ya se encuentra inserta en el mercado de trabajo. Utilizaremos la variable ```CH06``` en donde se recaba la edad en años cumplidos:


```r
eph_ind_319_sel <- eph_ind_319_sel %>%
    filter(CH06 >= 25)

nrow(eph_ind_319_sel)
```

```
## [1] 1476
```

Luego de aplicar la selección por edad, la base quedará con 1.476 casos.

#### Selección por condición de actividad  

Otra gran pregunta que ha sentado debates en el estudio de las clases sociales es sobre si debe o no considerarse a la población desocupada o inactiva en tanto grupo capaz de ser clasificado en una determinada posición de clase.

Por un lado, algunos trabajos han saldado este problema considerando únicamente a la población ocupada, mientras que otros han identificado a la **población económicamente activa (PEA)**, en tanto grupo posible a ser estudiado [@Torrado1998]. Es necesario señalar que la EPH recaba información acerca de las características de la última ocupación realizada por la población desocupada, por lo cual dichos insumos pueden ser utilizados para su posicionamiento en un esquema de clases.

Por otro lado, la población inactiva difícilmente puede clasificarse directamente en una posición de clase, ya que por definición dichos individuos no se encuentran insertos en relaciones laborales. Algunas cuestiones sobre este problema serán retomadas en los próximos capítulos, cuando abordemos específicamente la construcción y medición de las clases.

Como ejemplo, sobre la selección anteriormente realizada, filtraremos únicamente a la PEA. Para esto utilizaremos la variable ```estado``` que mide la condición de actividad de las personas. Si exploramos la variable, la PEA estará conformada por las categorías 1 (ocupados) y 2 (desocupados):


```r
attributes(eph_ind_319$ESTADO)
```

```
## $label
## [1] "Condicion de actividad"
## 
## $class
## [1] "labelled" "integer" 
## 
## $labels
## Entrevista individual no realizada (no respuesta al cuestionario individual) 
##                                                                            0 
##                                                                      Ocupado 
##                                                                            1 
##                                                                   Desocupado 
##                                                                            2 
##                                                                     Inactivo 
##                                                                            3 
##                                                           Menor de 10 anios. 
##                                                                            4
```


```r
eph_ind_319_sel <- eph_ind_319_sel %>%
    filter(ESTADO == 1 | ESTADO == 2)

nrow(eph_ind_319_sel)
```

```
## [1] 987
```

Luego de seleccionar la PEA, la base quedará conformada por 987 casos.

#### ¿Hogares o individuos?

Finalmente, una decisión importante que debemos realizar, es si trabajaremos con los **individuos u hogares** en tanto unidades de análisis. Al igual que con la consideración de la población desocupada y/o inactiva, la respuesta a este interrogante es principalmente teórica. Retomaremos este problema en los próximos capítulos.

De momento, y según nuestros fines metodológicos, podemos señalar que hasta aquí, en la base que estamos construyendo, consideramos a los individuos como unidades de análisis. Una opción posible para trabajar desde los hogares, a partir de información de los individuos, es teniendo en cuenta al jefe/a de hogar como agente representante del grupo familiar. Esta es una práctica frecuente utilizada en los estudios de clases sociales, sobre la cual también existen considerables críticas.

Siguiendo con nuestro ejemplo, filtraremos únicamente a la población que es jefe/a de hogar, buscando consolidar una aproximación a la unidad de análisis "hogar". Para ello utilizaremos la variable ```CH03``` que releva a la relación de parentesco de los miembros de cada hogar:


```r
attributes(eph_ind_319$CH03)
```

```
## $label
## [1] "Relacion de parentesco"
## 
## $class
## [1] "labelled" "integer" 
## 
## $labels
##            Jefe/a  Conyuge / Pareja Hijo/a Hijastro/a       Yerno/Nuera 
##                 1                 2                 3                 4 
##          Nietro/a       Madre/Padre          Suegro/a         Hermano/a 
##                 5                 6                 7                 8 
##  Otros Familiares     No familiares 
##                 9                10
```


```r
eph_ind_319_sel <- eph_ind_319_sel %>%
    filter(CH03 == 1)

nrow(eph_ind_319_sel)
```

```
## [1] 509
```

Al centrarnos en les jefes/as de hogares la base quedará conformada por 509 casos.

### Ponderación y expansión de la muestra

Tal como hemos señalado en la caracterización de la EPH, nos estamos refiriendo a una encuesta de tipo probabilística que es representativa de la población que reside en los grandes aglomerados urbanos de Argentina. Por ello, para realizar de manera correcta los procesamientos y análisis de datos, la encuesta incluye diversos ponderadores que permiten tanto una recalibración de la muestra, debido a errores procedentes de la sobre o subrepresentación de diversos grupos poblacionales, y también, para expandir el número efectivo de casos al número total poblacional.

La variable ```PONDERA``` es la que permite realizar esta operación cuando estamos trabajando con la mayor parte de las variables de la base. La misma es numérica e indica el número de personas u hogares del universo en estudio representada por cada persona u hogar de la muestra (corregidas por no respuesta). Por ejemplo, si queremos conocer el número de población expandida y ponderada de la muestra que hemos estado construyendo, haremos lo siguiente:


```r
eph_ind_319_selP <- eph_ind_319_sel %>%
    tally(PONDERA)
```

Al ponderar y expandir la muestra que hemos ido construyendo podemos observar que la misma da cuenta de 220.084 casos.

En el caso de los relevamientos posteriores a 2016, encontraremos otros ponderadores que tienen como principal función la corrección en la no respuesta de las variables de ingresos:

- ```PONDII``` para el tratamiento del ingreso total individual(p47t, decindr, adecindr, rdecindr, pdecindr,
gdecindr, idecindr).  

- ```PONDIIO``` para el ingreso de la ocupación principal (p21, pp06c, pp06d, pp08d1, pp08d4, pp08f1, pp08f2, pp08j1, pp08j2,pp08j3, decocur, adecocur, rdecocur, pdecocur, gdecocur, idecocur).

- ```PONDIH``` para el ingreso total familiar (ITF, decifr, adecifr, rdecifr, pdecifr, gdecifr, idecifr), el ingreso per cápita familiar (IPCF, deccfr, adecifr, rdecifr, pdecifr, gdecifr, idecifr).

## Otras encuestas de hogares para el estudio de la estructura de clases {#otras}

Una de las principales características que deben cumplir las encuestas de hogares para poder abordar, a través de ellas, la problemática de las clases sociales de acuerdo a distintas opciones teóricas, es que deben relevar una serie de indicadores socio-laborales. Específicamente la condición ocupacional, la ocupación, la categoría ocupacional, entre otras. Asimismo, algunas encuestas especializadas en el estudio de la estructura de clases, cubren dimensiones específicas que permiten el análisis de la autopercepción de clase, la movilidad social o una delimitación más articulada de los posicionamientos de clase.

En este último apartado, presentaremos otras encuestas de hogares que pueden utilizarse para el estudio de las clases sociales y su vinculación con otras problemáticas sociales en la Argentina. Tienen como desventaja que, en su mayoría, no son de tipo continuas, y por ende, su relevamiento permite el abordaje de un momento determinado. Sin embargo, a diferencia de la EPH, nos permitirán el análisis de la estructura de clases y su relación con múltiples aspectos de la realidad social. El listado no es exhaustivo pero reúne a las principales fuentes de información disponibles:

- **Encuesta Nacional sobre la Estructura Social (ENES)**: es una encuesta de hogares y personas cuyo cuestionario modularizado permitió recabar información sobre distintas cuestiones vinculadas al estudio de las clases sociales: vivienda y hábitat, acceso a bienes, servicios y ayudas de otros, trabajo / trabajo doméstico, movilidad social y autopercepción de clase. La misma fue elaborada por el Programa de Investigación sobre la Sociedad Argentina Contemporánea (PISAC), es abierta a todo público y es parte de una serie de otros relevamientos que se realizarán. Puede encontrarse en  [http://pisac.mincyt.gob.ar/datos.php](http://pisac.mincyt.gob.ar/datos.php){target="_blank"}.  

- **Encuesta Anual de Hogares Urbanos (EAHU)**: fue un programa nacional del INDEC (entre 2010 y 2014), que se basó en una extensión de la EPH durante los terceros trimestres abarcando aglomerados de más de 2000 habitantes. Mantiene las mismas variables relevadas en la EPH. Puede encontrarse en [https://www.indec.gob.ar/indec/web/Institucional-Indec-BasesDeDatos](https://www.indec.gob.ar/indec/web/Institucional-Indec-BasesDeDatos){target="_blank"}.

- **Encuesta Nacional de Gastos de los Hogares (ENGHo)**: entre varias de sus funciones, la ENGHo desarrollada por el INDEC permite conocer acerca de los gastos y los ingresos de los hogares y sus características sociodemográficas. De este modo, es una buena fuente para analizar la relación entre el posicionamiento de clase y los patrones de consumo y gasto. Dicho relevamiento se realiza, aproximadamente, cada 10 años, existiendo microdatos desde 1985-1986. La última versión data de 2017-2018 y cuenta con la información socio-ocupacional necesaria para la medición de las clases sociales, condición que la edición de 2012-2013 no cumplía, debido al no relevamiento de la variable ocupación. Puede encontrarse en [https://www.indec.gob.ar/indec/web/Institucional-Indec-BasesDeDatos-4](https://www.indec.gob.ar/indec/web/Institucional-Indec-BasesDeDatos-4){target="_blank"}.  

- **Módulos especiales de la EPH y EAHU**: existen distintos módulos que se agregan a la EPH o a la EAHU que permiten el abordaje de problemáticas específicas. En este caso identificamos dos módulos que pueden ser de sumo interés en su relación con la estructura de clases:
	+ Módulo de la EAHU sobre Trabajo No Remunerado y Uso del Tiempo - Tercer trimestre 2013 [https://www.indec.gob.ar/indec/web/Institucional-Indec-BasesDeDatos-5](https://www.indec.gob.ar/indec/web/Institucional-Indec-BasesDeDatos-5){target="_blank"};
	+ Encuesta Nacional sobre Acceso y Uso de Tecnologías de la Información y la Comunicación (ENTIC) [https://www.indec.gob.ar/indec/web/Institucional-Indec-BasesDeDatos-5](https://www.indec.gob.ar/indec/web/Institucional-Indec-BasesDeDatos-5){target="_blank"} y su actualización en el Módulo de Acceso y Uso de Tecnologías de la Información y la Comunicación (EPH) [https://www.indec.gob.ar/indec/web/Institucional-Indec-BasesDeDatos-3](https://www.indec.gob.ar/indec/web/Institucional-Indec-BasesDeDatos-3){target="_blank"}.
	
- **Encuesta Anual de Hogares (EAH)**: es una encuesta anual que realiza la Dirección General de Estadísticas y Censos de la Ciudad Autónoma de Buenos desde el año 2002. Al igual que la EPH, dicho relevamiento indaga sobre los aspectos demográficos, la educación, la salud y el mercado de trabajo de la población de la Ciudad de Buenos Aires. A nivel geográfico permite un nivel de desagregación por comuna. Puede encontrarse en [https://www.estadisticaciudad.gob.ar/eyc/?cat=93](https://www.estadisticaciudad.gob.ar/eyc/?cat=93){target="_blank"}.

- **International Social Survey Programme (ISSP)**: existen al menos dos relevamientos de dicho programa, para el 2007 y el 2009, que se han realizado en Argentina y en otros países, que permiten el estudio de la estructura de clases y su relación con otros fenómenos: movilidad social, autopercepción de clase, tiempo libre, desigualdades sociales, entre otros. Específicamente, las ondas de [2007](https://dbk.gesis.org/dbksearch/sdesc2.asp?no=4850&search=issp%202007&search2=&field=all&field2=&DB=e&tab=0&notabs=&nf=1&af=&ll=10){target="_blank"} y [2009](https://dbk.gesis.org/dbksearch/sdesc2.asp?no=5400&search=issp%202009&search2=&field=all&field2=&DB=e&tab=0&notabs=&nf=1&af=&ll=10){target="_blank"}). Una de las ventajas de estas encuestas es que se insertan en programas internacionales de investigación que permiten la comparabilidad entre países.

<!--chapter:end:caps/02U.Rmd-->

# Los censos de población modernos {#fuentes2}

Este capítulo tiene como propósito presentar a los censos de población modernos (1960-2010), llevados a cabo por el [Instituto Nacional de Estadísticas y Censos](www.indec.gob.ar){target="_blank"} (INDEC), para mostrar sus características, posibilidades y limitaciones en tanto fuente para el estudio de la estructura de clases en Argentina.

Se abordan las siguientes preguntas:

- ¿Cuáles son las principales características de los censos modernos?
- ¿Qué elementos presentan para el estudio de la estructura de clases argentina? 
- ¿Cuáles son sus limitaciones? ¿Qué cambios han presentado a lo largo del tiempo?
- ¿Cuáles son las principales variables que debemos considerar en el análisis de clase? 
- ¿Qué formas existen para acceder a los microdatos?
- ¿Qué ventajas presenta cada forma de acceso?

Al completar este capítulo se espera que les lectores puedan:

1. Identificar las principales características, ventajas y desventajas en el uso de los censos de población modernos para el estudio de la estructura de clases en Argentina.
2. Aprender a localizar la información necesaria, incorporando distintos métodos de acceso a la misma (descarga de microdatos desde distintos sitios y uso de paquete **`ipumsr`** para **`R`**).
3. Navegar los microdatos de los censos de población en `RStudio` y realizar exploraciones preliminares.

Para una mayor comprensión del capítulo recomendamos la lectura de los siguientes documentos:  

De Grande, P. (2016): "El formato Redatam". _Estudios demográficos y urbanos_, Vol. 31, Núm. 3 (93), pp. 811-832. [Link](https://estudiosdemograficosyurbanos.colmex.mx/index.php/edu/article/view/15/pdf){target="_blank"}.  

Observatorio Latinoamericano de Censos de Población [OLAC](https://observatoriocensal.org/){target="_blank"}.  

Robert McCaa, Albert Esteve, Steven Ruggles y Matthew Sobek (2004): "La integración de los microdatos censales de América Latina: el proyecto IPUMS-América Latina", _Estudios Demográficos y Urbanos_, 20(1), 37-70.  

Sacco, N. (2017): “¿Cierran los números con la gente adentro?”. _Estudios Demográficos y Urbanos_, 32(96), 631-667. doi: 10.24201/edu.v32i3.1648.  

Torrado, S. (1992):'Para leer "Estructura social de la Argentina"' en Jorrat, J. R. & Sautu, R. (Eds.) _Después de Germani: Exploraciones sobre estructura social de la Argentina_, Paidós.

## Clases sociales y censos de población {#clases3}

¿Qué pueden decirnos los censos de población sobre la estructura de clases? Las estadísticas oficiales en la Argentina nunca ofrecieron tabulados con la variable clase social, o en todo caso, por grupos-socioeconómicos o socio-ocupacionales. Una gran parte de los estudios sobre estructura social en base a datos censales que se han realizado en la Argentina han utilizado o bien la variable ocupación o bien algún cruce de las “características económicas” disponibles en cada censo para construir clases sociales.

De acuerdo a los datos de los censos 1869, 1895, 1914 y 1947 pero también utilizando prácticamente todo lo disponible en el Sistema Estadístico Nacional de la época, Germani [-@Germani1987] agrupó categorías ocupacionales según criterios teóricos y empíricos provenientes de la teoría de la modernización en su análisis de los procesos de movilidad y cambio social de la Argentina moderna. Después de Germani, los estudios de Torrado [-@Torrado1992; -@Torrado2003a] abordaron nuevamente el análisis de la evolución del volumen y estructura de las clases sociales, en base a los censos de 1947, 1960, 1970 y 1980, esta vez de acuerdo a una conceptualización proveniente de un enfoque histórico-estructural.

La disponibilidad de otras fuentes adicionales a los censos para el estudio de la desigualdad social fue escasa en Argentina durante buena parte del Siglo XX, salvo a partir del último tercio. Los censos de población fueron el principal _corpus_ que tanto Germani como Torrado y otros especialistas encontraron para responder sus preguntas, lo que les permitió abordar el estudio de la estratificación social en base a datos ocupaciones desagregados, cubriendo todo el país.

### Antecedentes

Como se abordó en el [capítulo 2](#analisis1), la clase social, como marco teórico, representa un enfoque complementario de la estratificación social al incorporar las relaciones sociales de propiedad y control sobre factores productivos al análisis de las desigualdades de recursos económicos, políticos y sociales [@Kerbo2003]. A pesar de su elaboración relativamente lejana en el tiempo, la aplicación de esta conceptualización en distintas investigaciones, por ejemplo las de Torrado [-@Torrado1992], mostró una significativa capacidad interpretativa, sobre todo si se tienen en cuenta los problemas y limitaciones que posee el estudio de la desigualdad social en relación a la alta dependencia de la información empírica disponible, casi siempre incompatible para ser utilizada por marcos teóricos y metodológicos ajenos a los cuales fue construida.

Esta orientación  —predominante— que utilizó censos de población para el estudio de clases en Argentina se ubica dentro de lo que Crompton [-@Crompton2008] denominó “enfoque ocupacional-agregado” de la estratificación social. Pensado para el particular contexto latinoamericano de disponibilidad de información, en este sentido, se diferencia con respecto a otros desarrollos teóricos más recientes, por ejemplo, de Wright [-@Wright1997; -@Wright2005] o Goldthorpe [-@Goldthorpe1995], donde, por la carencia presupuestaria fundamentamente, gran parte del esfuerzo conceptual estuvo dirigido a resolver el problema del dato a utilizar, es decir, en cómo desplegar la teoría con fuentes secundarias y no en base a datos _ad-hoc_ (primarios) para una teoría específica.

La elección de este enfoque se debió, además, a que si bien la preocupación sobre el análisis y medición de las clases sociales en la Argentina en base a estadísticas oficiales se inició desde la propia llegada de la sociología como disciplina académica, su desarrollo no alcanzó ni la expansión ni la recepción social que se esperaban y a pesar de que durante el fin del Siglo XX las ciencias sociales asistieron a un renovado debate sobre la estructura social [@Kerbo2003; @Martinez2005; @Crompton2008], el amplio disenso teórico acerca de esta cuestión no reavivó la pregunta sobre las posibilidades analíticas de las estadísticas oficiales para el estudio de las clases sociales. Durante un largo período la Argentina careció de estudios sobre estructura social de largo aliento, de alcance nacional y de espíritu comparativo y la pregunta sobre la estratificación social tuvo menos respuestas empíricas de las que se esperaban.

El programa de investigación de Torrado [-@Torrado1992], corresponde la excepción a esta situación quien abordó, 37 años después de la publicación de Germani, nuevamente, el análisis de la evolución del volumen y estructura de las clases sociales, esta vez, de acuerdo a una conceptualización proveniente del materialismo histórico, en base a los censos de 1947, 1960, 1970 y 1980. Como Germani, el estudio de Torrado efectuó una profunda evaluación de las fuentes y los datos disponibles en los censos —véase por ejemplo Torrado y Orsatti [-@Torrado1985] y Torrado y Rofman [-@Torrado1988]–, realizando ajustes a las estimaciones del volumen total de clases sociales de Germani para 1947. 

### Practicidad

Las razones de incluir a estos censos de población son múltiples. El argumento principal es que son, dado el contexto de producción y oferta de estadísticas oficiales en Argentina, prácticamente la única fuente del Sistema Estadístico Nacional (SEN) que permite estudiar, de un modo agregado, la desigualdad social.

Más allá de la imposibilidad de recurrir a instrumentos _ad-hoc_, limitación debida sobre todo a las restricciones presupuestarias de investigación en Argentina, o, en su defecto, recurrir a la información provista por la EPH, cualquier encuesta de hogares disponible, sea oficial, académica o privada, posee distintos obstáculos para el estudio global y a largo plazo sobre la estructura de clases.

Las encuestas a hogares –que están, en su gran mayoría, limitadas a los grandes centros urbanos– podrían pensarse como las fuentes primordiales para el estudio de la desigualdad social. Su continua actualización permitiría enriquecer el conocimiento del perfil de la estratificación social en base a datos ocupacionales desagregados y en los distintos niveles de ingresos, ya que relevan información sobre variables no contempladas en los censos, vinculadas principalmente a los mercados de trabajo y a las diversas formas de ingreso monetario.

Sin embargo, aquellos aspectos relativos a la desigualdad social no son cabalmente contempladas por estas fuentes, o en todo caso, si integran algunas de sus dimensiones, no lo hacen con la magnitud, tanto teórica como empírica, con la cual lo llevan adelante los censos. La posibilidad de análisis desagregados es notoriamente más permisible en los censos que en las encuestas, a nivel nacional y/o de agregados regionales.

En otro orden de razones, los datos censales utilizados pueden dar continuidad a la explotación del tipo de fuente que fue materia prima de estudios previos, cuyos límites empírico-temporales finalizan hacia el censo de 1980. A a la vez, los censos de 1991, 2001 y 2010 conllevan un corpus conceptual común (con importantes diferencias conceptuales) cuyos límites y alcances son compartidos.

## Censos de población modernos. Características principales {#censos}

Los censos de población modernos, aquellos llevados a cabo en 1960, 1970, 1980, 1991, 2001, de acuerdo a la definición de Guisti [-@Giusti2007] —siguiendo esta caracterización, podemos también agregar el de 2010— constituyen, casi de forma similar a la EPH, un programa nacional de producción sistemática y permanente de indicadores sociales, económicos y demográficos que lleva a cabo el INDEC, y que fundamentalmente, permite conocer las características sociodemográficas y socioeconómicas de la población de acuerdo a estándares internacionales. Para más información sobre estos aspectos de los censos, se recomienda visitar el sitio web del Observatorio Latinoamericano de Censos de Población [OLAC](https://observatoriocensal.org/){target="_blank"}.

### Las características económicas en los censos de población

Las preguntas referidas a las variables económicas de la población tuvieron un acrecentamiento importante a lo largo de los censos de población [@Minujin1987, p. 49]. Desde una simple pregunta abierta en 1869 se pasó, ya para 1980, a una batería de seis preguntas que permitirían una captación más amplia de la población económicamente activa (PEA), al mismo tiempo que se complejizó la estructura de las preguntas, así como su instrucción y codificación. En la Tabla \@ref(fig:censos1) se observa el conjunto de información sobre las *características económicas* de la población que se relevaron a lo largo de los censos modernos, quienes se basaron (exceptuado al censo de 1947) en las recomendaciones internacionales para la conceptualización de las variables económicas siguiendo el enfoque de fuerza de trabajo, que sugiere el registro de la ocupación *actual* en un periodo breve y reciente. La cobertura temática cubrió una amplia gama de variables.

```{=html}
<template id="85c44791-3bb5-4bf7-b137-6b33f167b575"><style>
.tabwid table{
  border-spacing:0px !important;
  border-collapse:collapse;
  line-height:1;
  margin-left:auto;
  margin-right:auto;
  border-width: 0;
  display: table;
  margin-top: 1.275em;
  margin-bottom: 1.275em;
  border-color: transparent;
}
.tabwid_left table{
  margin-left:0;
}
.tabwid_right table{
  margin-right:0;
}
.tabwid td {
    padding: 0;
}
.tabwid a {
  text-decoration: none;
}
.tabwid thead {
    background-color: transparent;
}
.tabwid tfoot {
    background-color: transparent;
}
.tabwid table tr {
background-color: transparent;
}
</style><div class="tabwid"><style>.cl-b7d021e0{table-layout:auto;width:70%;}.cl-b7c950ae{font-family:'Helvetica';font-size:10pt;font-weight:bold;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-b7c950e0{font-family:'Helvetica';font-size:10pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-b7c950ea{font-family:'Helvetica';font-size:9pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-b7c968c8{margin:0;text-align:center;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-b7c968d2{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-b7c9bc7e{background-color:transparent;vertical-align: middle;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 1pt solid rgba(0, 0, 0, 1.00);border-left: 1pt solid rgba(0, 0, 0, 1.00);border-right: 1pt solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-b7c9bc88{background-color:transparent;vertical-align: middle;border-bottom: 0 solid rgba(255, 255, 255, 0.00);border-top: 0 solid rgba(255, 255, 255, 0.00);border-left: 0 solid rgba(255, 255, 255, 0.00);border-right: 0 solid rgba(255, 255, 255, 0.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}</style><table class='cl-b7d021e0'>
```

```{=html}
<thead><tr style="overflow-wrap:break-word;"><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950ae">Variables</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950ae">1947</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950ae">1960</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950ae">1970</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950ae">1980</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950ae">1991</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950ae">2001</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950ae">2010</span></p></td></tr></thead><tbody><tr style="overflow-wrap:break-word;"><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">Condición de actividad</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">X</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">X</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">X</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">X</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">X</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">X</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">X</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">Categoría ocupacional</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">X</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">X</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">X</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">X</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">X</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">X</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">X</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">Profesión u oficio/ Ocupación</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">X</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">X</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">X</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">X</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">X</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">X</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">X</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">Ocupación secundaria</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0"> </span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">X</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0"> </span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0"> </span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0"> </span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0"> </span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0"> </span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">Rama de actividad</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">X</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0"> </span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">X</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">X</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">X</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">X</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">X</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">Dedicación del establecimiento</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0"> </span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0"> </span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0"> </span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">X</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0"> </span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0"> </span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0"> </span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">Tamaño del establecimiento</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0"> </span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0"> </span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0"> </span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">X</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">X</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">X</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">X</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">Jurisdicción</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0"> </span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0"> </span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0"> </span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0"> </span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">X</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">X</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">X</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">Ubicación del lugar de trabajo</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0"> </span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0"> </span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0"> </span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">X</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0"> </span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0"> </span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0"> </span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">Descuento jubilatorio</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0"> </span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0"> </span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0"> </span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0"> </span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">X</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">X</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">X</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">Mayor ingreso del hogar</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0"> </span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0"> </span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">X</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0"> </span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0"> </span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0"> </span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0"> </span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0">Propietarios</span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0"> </span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0"> </span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0"> </span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0"> </span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0"> </span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0"> </span></p></td><td class="cl-b7c9bc7e"><p class="cl-b7c968c8"><span class="cl-b7c950e0"> </span></p></td></tr></tbody><tfoot><tr style="overflow-wrap:break-word;"><td  colspan="8"class="cl-b7c9bc88"><p class="cl-b7c968d2"><span class="cl-b7c950ea">Giusti (2007, p. 224)</span></p></td></tr></tfoot></table></div></template>
<div class="flextable-shadow-host" id="0cf131b8-ec0d-439e-9deb-5a79cf4c6ae2"></div>
<script>
var dest = document.getElementById("0cf131b8-ec0d-439e-9deb-5a79cf4c6ae2");
var template = document.getElementById("85c44791-3bb5-4bf7-b137-6b33f167b575");
var caption = template.content.querySelector("caption");
if(caption) {
  caption.style.cssText = "display:block;text-align:center;";
  var newcapt = document.createElement("p");
  newcapt.appendChild(caption)
  dest.parentNode.insertBefore(newcapt, dest.previousSibling);
}
var fantome = dest.attachShadow({mode: 'open'});
var templateContent = template.content;
fantome.appendChild(templateContent);
</script>

```

Esta perspectiva no está exenta de críticas, ya que se le suele señalar que fue delineada de acuerdo al modelo de economías centrales capitalistas de alta industrialización, con ocupaciones estables y por ello, no adecuada para países en desarrollo, es decir, imposibilitada de captar ciertas franjas laborales (por ejemplo, economías agrícolas, de subsistencia, trabajo esporádico, discontinuo). Kritz [-@Kritz1987] señaló que los supuestos de este enfoque asumen que: i) es exógena la oferta de mano de obra (estabilidad de las tasas de participación dependientes de atributos asociados a la situación demográfica); ii) la demanda depende de agentes económicos diferentes de los oferentes; iii) homogeneidad del mercado de trabajo (no segmentación); iv) la situación ocupacional es bipolar (supuestos que no se darían en la Argentina).

De acuerdo a lo esquematizado en la Tabla \@ref(fig:censos2), las variables, sus sistemas clasificatorios y los universos de observación presentan divergencias entre los censos de 1980 a 2010. 

```{=html}
<template id="a58bc32f-cb1f-42ea-9f72-d99fd7567afa"><style>
.tabwid table{
  border-spacing:0px !important;
  border-collapse:collapse;
  line-height:1;
  margin-left:auto;
  margin-right:auto;
  border-width: 0;
  display: table;
  margin-top: 1.275em;
  margin-bottom: 1.275em;
  border-color: transparent;
}
.tabwid_left table{
  margin-left:0;
}
.tabwid_right table{
  margin-right:0;
}
.tabwid td {
    padding: 0;
}
.tabwid a {
  text-decoration: none;
}
.tabwid thead {
    background-color: transparent;
}
.tabwid tfoot {
    background-color: transparent;
}
.tabwid table tr {
background-color: transparent;
}
</style><div class="tabwid"><style>.cl-b7ecc5b6{table-layout:auto;width:70%;}.cl-b7e613ce{font-family:'Helvetica';font-size:10pt;font-weight:bold;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-b7e613e2{font-family:'Helvetica';font-size:10pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-b7e613ec{font-family:'Helvetica';font-size:9pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-b7e624b8{margin:0;text-align:center;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-b7e624c2{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-b7e65974{background-color:transparent;vertical-align: middle;border-bottom: 1pt solid rgba(0, 0, 0, 1.00);border-top: 1pt solid rgba(0, 0, 0, 1.00);border-left: 1pt solid rgba(0, 0, 0, 1.00);border-right: 1pt solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-b7e65988{background-color:transparent;vertical-align: middle;border-bottom: 0 solid rgba(255, 255, 255, 0.00);border-top: 0 solid rgba(255, 255, 255, 0.00);border-left: 0 solid rgba(255, 255, 255, 0.00);border-right: 0 solid rgba(255, 255, 255, 0.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}</style><table class='cl-b7ecc5b6'>
```

```{=html}
<thead><tr style="overflow-wrap:break-word;"><td class="cl-b7e65974"><p class="cl-b7e624b8"><span class="cl-b7e613ce">Variables</span></p></td><td class="cl-b7e65974"><p class="cl-b7e624b8"><span class="cl-b7e613ce">CEN-80</span></p></td><td class="cl-b7e65974"><p class="cl-b7e624b8"><span class="cl-b7e613ce">CEN-91</span></p></td><td class="cl-b7e65974"><p class="cl-b7e624b8"><span class="cl-b7e613ce">CEN-01</span></p></td><td class="cl-b7e65974"><p class="cl-b7e624b8"><span class="cl-b7e613ce">CEN-10</span></p></td></tr></thead><tbody><tr style="overflow-wrap:break-word;"><td class="cl-b7e65974"><p class="cl-b7e624b8"><span class="cl-b7e613e2">Condición de Actividad</span></p></td><td class="cl-b7e65974"><p class="cl-b7e624b8"><span class="cl-b7e613e2">Actividad ejercida en la semana anterior a la enumeración</span></p></td><td class="cl-b7e65974"><p class="cl-b7e624b8"><span class="cl-b7e613e2">Actividad ejercida en la semana anterior a la enumeración</span></p></td><td class="cl-b7e65974"><p class="cl-b7e624b8"><span class="cl-b7e613e2">Actividad ejercida en la semana anterior a la enumeración</span></p></td><td class="cl-b7e65974"><p class="cl-b7e624b8"><span class="cl-b7e613e2">Actividad ejercida en la semana anterior a la enumeración</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-b7e65974"><p class="cl-b7e624b8"><span class="cl-b7e613e2">Categoría de Ocupación</span></p></td><td class="cl-b7e65974"><p class="cl-b7e624b8"><span class="cl-b7e613e2">Obrero o empleado/ Patrón/Empleado en servicio doméstico/Trabajador por cuenta propia/Trabajador familiar sin remuneración fija</span></p></td><td class="cl-b7e65974"><p class="cl-b7e624b8"><span class="cl-b7e613e2">Obrero o empleado/ Patrón/Empleado en servicio doméstico/Trabajador por cuenta propia/Trabajador familiar sin remuneración fija</span></p></td><td class="cl-b7e65974"><p class="cl-b7e624b8"><span class="cl-b7e613e2">Obrero o empleado/ Patrón/Trabajador por cuenta propia/Trabajador familiar</span></p></td><td class="cl-b7e65974"><p class="cl-b7e624b8"><span class="cl-b7e613e2">Obrero o empleado/ Patrón/Trabajador por cuenta propia/Trabajador familiar</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-b7e65974"><p class="cl-b7e624b8"><span class="cl-b7e613e2">Rama de Actividad</span></p></td><td class="cl-b7e65974"><p class="cl-b7e624b8"><span class="cl-b7e613e2">Pregunta abierta</span></p></td><td class="cl-b7e65974"><p class="cl-b7e624b8"><span class="cl-b7e613e2">Pregunta abierta</span></p></td><td class="cl-b7e65974"><p class="cl-b7e624b8"><span class="cl-b7e613e2">Pregunta abierta</span></p></td><td class="cl-b7e65974"><p class="cl-b7e624b8"><span class="cl-b7e613e2">Pregunta abierta</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-b7e65974"><p class="cl-b7e624b8"><span class="cl-b7e613e2">Tamaño</span></p></td><td class="cl-b7e65974"><p class="cl-b7e624b8"><span class="cl-b7e613e2">Pregunta cerrada con 2 alternativas (hasta 5/ más de 5)</span></p></td><td class="cl-b7e65974"><p class="cl-b7e624b8"><span class="cl-b7e613e2">Pregunta cerrada con 2 alternativas (hasta 5/ más de 5)</span></p></td><td class="cl-b7e65974"><p class="cl-b7e624b8"><span class="cl-b7e613e2">Pregunta cerrada con 3 alternativas (hasta 5/ entre 6 y 39/ más de 39)</span></p></td><td class="cl-b7e65974"><p class="cl-b7e624b8"><span class="cl-b7e613e2">Pregunta cerrada con 4 alternativas (hasta 5/ entre 6 a 25/ de 26 a 100/ más de 100)</span></p></td></tr></tbody><tfoot><tr style="overflow-wrap:break-word;"><td  colspan="5"class="cl-b7e65988"><p class="cl-b7e624c2"><span class="cl-b7e613ec">Elaboración propia en base a censos nacionales de población.</span></p></td></tr></tfoot></table></div></template>
<div class="flextable-shadow-host" id="7bb3a33c-5c00-4a9a-82d4-d0d95b751442"></div>
<script>
var dest = document.getElementById("7bb3a33c-5c00-4a9a-82d4-d0d95b751442");
var template = document.getElementById("a58bc32f-cb1f-42ea-9f72-d99fd7567afa");
var caption = template.content.querySelector("caption");
if(caption) {
  caption.style.cssText = "display:block;text-align:center;";
  var newcapt = document.createElement("p");
  newcapt.appendChild(caption)
  dest.parentNode.insertBefore(newcapt, dest.previousSibling);
}
var fantome = dest.attachShadow({mode: 'open'});
var templateContent = template.content;
fantome.appendChild(templateContent);
</script>

```

Se volverá sobre este tema en el [Capítulo 4](#ocupacion). 

## Censos modernos: acceso diferencial {#censos2}

En el estudio de la realidad social y económica en Argentina los censos de población cumplen funciones esenciales para el funcionamiento de los sistemas estadísticos nacionales, la implementación de servicios gubernamentales, la asignación de recursos públicos, la inversión privada y la investigación académica. Como se mencionó previamente, el gran valor socio-histórico de los censos se debe a su vez al hecho de que fueron prácticamente la única fuente de datos secundaria sobre cuestiones sociales durante mucho tiempo en Argentina. Además de sus conocidas bondades para poder examinar los fenómenos a nivel de áreas geográficas menores o para subpoblaciones pequeñas, los censos han sido utilizados habitualmente para el análisis comparado entre países o de un mismo país a lo largo del tiempo.

El INDEC ha modificado las herramientas que ofrece a usuarios para el acceso a las bases de datos oficiales de los censos de población modernos. Hace relativamente unos pocos años que es posible acceder a microdatos y bases completas en línea de algunos de los censos modernos: el de 2001 y 2010, a través de sitio web del INDEC. Sin embargo, estas bases se publican en distintos formatos, y prácticamente sin una descripción de los metadatos, las variables corregidas, o un análisis de calidad, que quedan, en su gran parte, a criterio de los usuarios. En Argentina, los investigadores tienen que evaluar por su cuenta la utilidad de estos datos. 

La formas (cambiantes) de publicar del INDEC son un aviso para los profesionales e investigadores con respecto a las herramientas disponibles para extraer datos públicos. En esta sección del, revisamo las diferentes formas de extraer o construir datos de las bases de datos del INDEC, al menos, conocidas. Las siguientes líneas proporcionarán instrucciones sobre cómo utilizar diferentes herramientas para la extracción de datos públicos.

En esta parte del capítulo se explora como:

- Adquirir datos de los censos de población modernos en Argentina, a través de diferentes alternativas:
	- sitios web:
	- Paquetes **`R`**:
				- [`ipumsr`](https://cran.r-project.org/web/packages/ipumsr/vignettes/ipums.html){target="_blank"}.
	- Procesar datos del censo de Argentina con herramientas de `R` como el [`tidyverse`](https://www.tidyverse.org/){target="_blank"}.
- Generar y analizar datos de la muestra de microdatos de uso público del censo decenal de Argentina (PUMS) del INDEC y/o IPUMS con **`ipumsr`**.

Los lenguajes de programación como **`R`**, aunque menos fáciles de usar y con una interfaz de usuario más disuasiva, poseen la capacidad de reproducir análisis repetidamente con conjuntos de datos muy diferentes, y tienen un gran impacto en la productividad, al tiempo que ofrecen algunas de las ventajas del código: control de versión y ciencia abierta. Por el contrario, las herramientas de apuntar y hacer clic con el _mouse_ para la extracción, el análisis o la visualización de datos son populares y más fáciles de usar, pero no son reproducibles ni escalables. Si los usuarios están realizando un trabajo que no es tan complejo o no se basa en una gran cantidad de datos, no es necesario utilizar un entorno de programación. De cualquier manera, el objetivo del uso de estas herramientas debe ser minimizar la posibilidad de un error y maximizar la posibilidad de detectar un error y..."terminar las cosas".

### Modos de acceso

Las formas de acceso a los datos censales en Argentina son diversas. Las modalidades posibles conocidas, poseen ventajas y desventajas, que serán detalladas más adelante. A raíz de la reciente circulación de bases de datos “no oficiales” publicadas por usuarixs anónimos antes que por el INDEC, es importante debatir las modalidades de acceso a los censos, tanto desde la perspectiva de los usuarios como la de los propios institutos oficiales. La magnitud de la difusión de microdatos censales para el desarrollo y la investigación, con garantías adecuadas para proteger la privacidad y garantizar la confidencialidad, es sistemáticamente señalada por la [Dirección de Población de Naciones Unidas](https://www.un.org/development/desa/es/about/desa-divisions/population.html){target="_blank"}, dado su potencial para ampliar significativamente los usos de la información.

La realización de censos de población no se limita a las extensas fases de organización, implementación del operativo de campo, posterior evaluación y difusión de cifras oficiales definitivas. Dentro de las tareas del INDEC en tanto rector del SEN así como ejecutor de los censos de población, se deben desarrollar y difundir los “productos censales”: tabulaciones básicas, mapas e informes temáticos, entre otros. Dentro del amplio conjunto de potenciales usuarios de los datos censales, existe un subconjunto —a veces denominado de “usuarios calificados”— cuya demanda de información no se ve satisfecha a partir de los productos de información predefinidos por el INDEC, por ende, requiere del acceso a los microdatos censales. Además, en una época de creciente uso de la información social para la toma de decisiones y de mayor disponibilidad de herramientas para su análisis, este tipo de usuarios —así como sus necesidades de información— se encuentra en aumento.

Asimismo, la disponibilidad de microdatos para el procesamiento por parte de les usuaries calificados puede reducir sensiblemente la demanda potencial de pedidos de datos al INDEC, liberando recursos que pueden ser de utilidad en otras áreas de trabajo.

¿Cómo se accede al procesamiento de datos censales en Argentina? ¿Qué tipo de respuestas ofrece el INDEC en esta materia? ¿Cuáles son las alternativas? ¿Cuál es el panorama y cuáles son las perspectivas a futuro?

### Es lo que hay

Más allá de los tabulados disponibles y publicaciones con resultados discriminados temáticamente, existen, al menos, cuatro modalidades de acceso a los datos censales en Argentina, a través de:

- el uso de herramientas de procesamiento en línea;
- la descarga de los microdatos censales disponibles en el sitios web del INDEC;
- la descarga de una muestra de microdatos censales del proyecto IPUMS International (IPUMS-I de la Universidad de Minnesota);
- la solicitud directa de microdatos o tabulados al INDEC y
- métodos no oficiales.

Mientras que en las primeras tres se trata de recursos disponibles en internet, la ante-última demanda diferentes tipos de procedimiento para dar trámite a la solicitud de datos, que pueden implicar la presencia física en el INDEC e incluso el cobro de haberes por el servicio. Asimismo, mientras que la mayoría de estas modalidades de difusión y liberación de datos censales son definidas y gestionadas por el INDEC, la opción de utilizar los datos disponibles en IPUMS-I requiere aceptar una serie de condiciones dispuestas por la Universidad de Minnesota (registración, cita, etc.). Se describe a continuación cada caso en particular.

### Procesamiento de datos en línea^[Nota: parte de esta sección fue tomada de del sitio web de OLAC.]

Las herramientas de procesamiento de datos censales en línea han significado un gran avance para los usuarios interesados en producir rápidamente un conjunto de tabulados básicos de interés. Esta estrategia consiste en la posibilidad de acceder remotamente a las bases datos y a un conjunto de variables censales, definir qué variables se quieren utilizar en el análisis descriptivo y su desagregación territorial, y la posterior descarga de los tabulados en distintos formatos. 

El procesamiento de los censos en línea ha sido la modalidad más utilizada por el INDEC durante las últimas dos rondas censales para hacer públicos sus datos y contemplar las distintas demandas de información por parte de usuarios. Para ello ha sido fundamental el apoyo técnico e informático brindado por el Centro Latinoamericano de Demografía [(CELADE)](https://www.cepal.org/es/equipo/centro-latinoamericano-caribeno-demografia-celade){target="_blank"} a través del software REDATAM (Acrónimo de REcuperación de DATos para Áreas pequeñas por Microcomputador) y su desarrollo de aplicaciones web para la difusión de la información [REDATAM on-line](https://www.cepal.org/cgi-bin/getprod.asp?xml=/redatam/noticias/paginas/5/14185/P14185.xml&xsl=/redatam/tpl/p18f.xsl&base=/redatam/tpl/top-bottom.xsl){target="_blank"}.

REDATAM no es un producto argentino, fue desarrollado por el CELADE y tuvo su primera versión para `DOS` en 1987. Dado que en aquel momento en Latinoamérica era muy caro y complejo procesar censos, muchos países comenzaron a usarlo gratuitamente, lo que fue de gran ayuda para los institutos de estadística y los usuarios de la región. El producto evolucionó, agregando de a poco regiones y usuarios. Incluso, en países de África y Asia fue un éxito.

La manera más sencilla de acceder a los censos disponibles para procesar con REDATAM en línea es a través del sitio web de [REDATAM 7](https://www.cepal.org/es/temas/redatam/download-redatam), en donde aparecen los vínculos de acceso a los censos disponibles, según país y año del censo (durante los últimos años, el uso del procesador REDATAM en línea se ha expandido hacia otras regiones del mundo, más allá de América Latina, y en otras fuentes de datos, como las encuestas de hogares y los registros vitales).

Las principales fortalezas del REDATAM en línea son su carácter “amigable” para usuarios con distintos niveles de experiencia. La curva de aprendizaje para adquirir los conocimientos básicos para programar en REDATAM es bastante corta. Se trata de un lenguaje de programación propio y específico, que suele ser de uso menos popular que el de otros paquetes y que se caracteriza por la gran rapidez para el procesamiento de bases de datos con un número alto de registros.

Asimismo, tiene la ventaja de incluir una sección de documentación, en donde por ejemplo se puede encontrar el cuestionario censal y el manual del empadronador, y otros metadatos; y también provee una herramienta para la generación de mapas temáticos. Cuenta con el apoyo técnico del CELADE que además ofrece periódicamente talleres para usuarios de datos y para formar técnicos en la generación de bases en formato REDATAM y desarrollo de aplicaciones web. Entre las principales limitaciones del REDATAM en línea se puede mencionar que muchas veces se difunde un conjunto incompleto de variables censales y que el tipo de análisis estadístico que se puede obtener se encuentra restringido y es relativamente básico (análisis de frecuencias simples, tablas cruzadas, conteos y promedios, indicadores predefinidos), y es poco amigable guardar consultas a la base para reproducirlas.

Si bien los censos de 2001 y 2010 cuentan con esta herramienta de consulta interactiva de datos, no se incluyen los censos de rondas anteriores. 

Se puede acceder a los siguientes censos de Argentina a través de la web REDATAM:

- [2001](https://redatam.indec.gob.ar/argbin/RpWebEngine.exe/PortalAction?&MODE=MAIN&BASE=CPV2001ARG&MAIN=WebServerMain.inl&_ga=2.209433750.505137327.1603741558-822725481.1603741558).
- [2010 básico](https://redatam.indec.gob.ar/argbin/RpWebEngine.exe/PortalAction?&MODE=MAIN&BASE=CPV2010B&MAIN=WebServerMain.inl&_ga=2.251878541.505137327.1603741558-822725481.1603741558)
- [2010 ampliado](https://redatam.indec.gob.ar/argbin/RpWebEngine.exe/PortalAction?&MODE=MAIN&BASE=CPV2010A&MAIN=WebServerMain.inl&_ga=2.248606851.505137327.1603741558-822725481.1603741558)

REDATAM no solo ofrece herramientas de procesamiento en línea sino también la descarga del software para el procesamiento de microdatos censales en formato propio, ampliando el abanico de posibilidades de análisis, tanto en términos de variables disponibles y tipo de procesamiento estadístico, como por el hecho de poder acceder a bases de datos de censos “históricos”. La dificultad en este sentido está dada por el hecho de que se requiere acceder a los microdatos y para ello no están del todo claro los procedimientos vigentes o los metadatos de las bases disponibles. Se volverá sobre este punto.

Actualmente REDATAM puede correr como servidor para procesar datos en internet. Lamentablemente este producto corre solo en servidores Windows (que en la actualidad dejó de ser un estándar para estos servicios). Claramente este producto se está quedando en el tiempo y los formatos en los que se manejan los datos no son muy cómodos. Si bien REDATAM es gratuito, el código fuente con el que fue construido no es de libre acceso, quiere decir, se puede usar pero no se puede ver o proponer mejoras. Esto limita su desarrollo al equipo actual de programación y no permite a las comunidades de software libre auditar, proponer o desarrollar cambios en el producto. 

### Descarga directa de microdatos

Para un conjunto reducido de censos el INDEC optó por habilitar la descarga libre y gratuita de los microdatos censales, disponibles en su sitio web. El INDEC publicó los microdatos (aunque no completos) de sus últimos dos censos (2001 y 2010) para su descarga automática en formato ASCII.

La descarga directa de los microdatos censales desde el sitio web oficial del INDEC tiene claramente una serie de ventajas para el analista de datos, en tanto permite trabajar con el *set* bastante completo de variables utilizadas en el cuestionario censal (salvo eliminación expresa por parte de la INDEC) y realizar diferentes procesamientos estadísticos que permitan atender sus necesidades específicas de información. Llamativamente, para el caso del censo 2001, la variable ocupación, no está publicada por parte del INDEC. 

Uno de los aspectos a considerar por parte del INDEC, para quienes se inclinan por esta opción, es la protección de la confidencialidad de los datos ofrecidos por las personas que fueron censadas, en tanto la información almacenada en los microdatos censales puede llevar a la identificación de las mismas, particularmente si se trabaja con información de áreas muy pequeñas del territorio. También existe la posibilidad de convertir los diccionarios de formato REDATAM a otros formatos, lo cual puede llegar a simplificar enormemente tareas de procesamiento de datos.

Tanto para el caso del 2001 como el 2010, sólo hace falta hacer 'click' en "Descargar Diccionario" para bajarse la base de microdatos, tal como se muestra en las imágenes y trabajarla de forma local, con REDATAM o, mediante su transformación, con su software de preferencia.

<div class="figure" style="text-align: center">
<p class="caption">(\#fig:unnamed-chunk-38)Descargar diccionario</p><img src="imagenes/dic2001.png" alt="Descargar diccionario" width="80%" /></div>

<div class="figure" style="text-align: center">
<p class="caption">(\#fig:unnamed-chunk-39)Descargar diccionario2</p><img src="imagenes/dic2010.png" alt="Descargar diccionario2" width="80%" /></div>

#### Transformación del diccionario original

En base estas limitaciones del REDATAM, un investigador argentino, Pablo De Grande, desarrolló y liberó una herramienta de software para extraer la base completa (a nivel de personas, anonimizada) de cualquier censo hecho con REDATAM.

En su blog [Discontinuos](https://idiscontinuos.wordpress.com/2015/03/21/convirtiendo-bases-redatam-a-spss/) se puede acceder al software [Converser Redatam](https://www.aacademica.org/conversor.redatam) y explorar su modo de uso. Una vez bajados los diccionarios desde la web del INDEC, se pueden extraer los datos y guardarlos en un formato más adecuado para procesamientos estadísticos, por ejemplo, en ASCII.

### IPUMS-I

Sólo cinco años después de la creación del CELADE, este organismo comenzó la Operación de Muestras de Censos (OMUECE), la más ambiciosa muestra internacional de censos del siglo XX. Gracias ello el archivo de microdatos censales de América Latina es uno los más completos de cualquier región del mundo (para más información ver artículos de McCaa y Jaspers-Faijer (2000) y McCaa, Esteve, Ruggles y Sobek (2004). Este proyecto fue el antecedente directo de las bases disponibles hoy en el IPUMS-I. Este espacio ofrece una colección, inventario, preservación de datos y documentación referida a muestras de censos en el mundo, con información armonizada, es decir, comparable entre países, de manera gratuita. Tiene una documentación bastante exhaustiva y facilita de esta forma la investigación comparativa. Una de las desventajas del proyecto IPUMS es que no posee mecanismos de validación con el INDEC y a veces resultan más confiables datos de los INDEC que IPUMS en algunas variables. 

Para Argentina, contamos con microdatos de muestras censales sólo para los censos de 1970 a 2010. 


<!-- solo para la verisión webEn el siguiente video instructivo podrán ver cómo acceder a las bases disponibles en IPUMS-I, con un ejemplo para Argentina en 1980:


```{=html}
<div class="vembedr">
<div>
<iframe src="https://www.youtube.com/embed/IsBHZ1fHKBw" width="533" height="300" frameborder="0" allowfullscreen="" data-external="1"></iframe>
</div>
</div>
```

-->

Para les usuaries de `R` que quieran trabajar las bases con este programa, se recomienda que sigan las viñetas del paquete [`ipumsr`](https://cran.r-project.org/web/packages/ipumsr/vignettes/ipums.html){target="_blank"} para trabajar estos datos y la viñeta del [`tidyverse`](https://www.tidyverse.org/){target="_blank"} para su procesamiento.

### Solicitud directa al INDEC

¿Qué se hace cuando las opciones de acceso a datos censales mencionadas previamente no satisfacen los requerimientos de información de los usuarios, ya sea porque se precisa información sobre un conjunto de variables específicas, o para un año censal en particular o para poder analizar los datos con mayores niveles de desagregación territorial? Pues bien, siempre está la opción de recurrir, con suerte variable, al INDEC.

Sabido es que el INDEC conserva —de alguna manera y en algún sitio— una copia de las bases de los censos realizados en el país. ¿Se puede acceder a las mismas? Si así fuera, ¿en qué formato y condiciones se podrían adquirir? ¿Cuál es el procedimiento a seguir para realizar esta solicitud? ¿Tiene algún costo? Lamentablemente no tenemos respuestas claras para estas preguntas pero es probable que existan posibilidades y criterios diferentes, porque es información que por razones que desconocemos, no se socializan.

En este sentido, resulta difícil de identificar los procedimientos vigentes en el INDEC. En algunos censos existieron en procedimientos claros y estandarizados para atender los pedidos de bases de datos censales, pero en otras no. Cuando esto último ocurre, suele suceder que los criterios varían en el tiempo y en función de las autoridades presentes en el organismo.

### Otras opciones no oficiales

Como en casi todo en Argentina, hay también opciones no oficiales, que pueden ser útiles y traen serias preguntas y dudas acerca de la producción de estadísticas oficiales en la actualidad. Más de allá de los microdatos de los censos de 1869 y 1895, recuperados gracias al enorme trabajo de un [usuario](https://observatoriocensal.org/2015/12/01/recuperacion-de-microdatos-de-los-censos-argentinos-de-poblacion-1869-1895/), ha circulado recientemente una versión “no oficial” del Censo de 1991 en formato REDATAM. Esto se adelantó a la propia liberación de microdatos oficial, lo que nos lleva a preguntarnos cómo puede ser que el INDEC se quede por detrás a la demanda de los usuarios.  Las estrategias de difusión y liberación de datos censales en Argentina han variado a lo largo de la historia, lo que denota la ausencia de un marco o criterio regulatorio común, así como las disimilitudes que existen en la concepción sobre los usos potenciales y resguardos requeridos con los datos. Si bien muy oportuno hoy en día, el acceso a los microdatos de censos históricos (digamos, previos al año 2000) no resulta una tarea sencilla. IPUMS-I ha facilitado enormemente esa tarea pero todavía queda mucho por hacer para que los usuarios tengan acceso a buenos datos censales.

### Disponibilidad en detalle para el estudio de clases sociales

En definitiva y para ir cerrando este capítulo, para aquellos que utilizan datos censales y están interesados en el estudio de clases sociales durante el periodo 1960-2010, la disponibilidad de información se limita a:
 		- Para 1960: tabulados publicados en papel.
 		- Para 1970: tabulados publicados en papel y muestra de microdatos en IPUMS-I.
 		- Para 1980: tabulados publicados en papel y muestra de microdatos en IPUMS-I.
		- Para 1991: tabulados publicados en papel, muestra de microdatos en IPUMS-I y una base no “oficial” sin información de metadatos.
		- Para 2001: tabulados publicados en papel, bases oficiales casi completas (diccionario) [no están todas las variables relevadas, en particular, la ocupación] y una base no “oficial” sin información de metadatos, con la variable ocupación incluida.
		- Para 2010: tabulados publicados en papel, bases oficiales completas (diccionarios) del cuestionario ampliado y básico.

<!--chapter:end:caps/03U.Rmd-->

# (PART) Variables {-}  

# Las características económicas de la población {#ocupacion}

En este capítulo se focaliza en las variables económicas que se investigaron, de manera no siempre uniforme, en las fuentes analizadas en los dos capítulos previos. Además se retoma el muy discutido tópico de los clasificadores de ocupación y su comparabilidad. Se presentan las distintas variables que son constitutivas para el estudio y la construcción de esquemas para la medición de las clases y la estratificación social, haciendo hincapié en limitaciones y los recaudos que deben considerarse en el uso de las mismas. Principalmente se revisa y analiza aquellas variables relevadas en los operativos del **INDEC**: censos y EPH.

Se exploran las siguientes preguntas:  
- ¿Qué variables son necesarias considerar para estudiar empíricamente las clases sociales?  
- ¿Cuáles son las limitaciones que se presentan en la utilización de dichas variables a la hora de trabajar con censos o encuestas de hogares?  
- ¿Cómo fueron medidas las variables a lo largo del tiempo en el sistema estadístico argentino?  
- ¿Cuáles son las ventajas y desventajas en el uso de las distintas clasificaciones (CNO, CIUO)?  
- ¿Qué metodologías existen para armonizar los distintos clasificadores ocupacionales?  

Al completar el capítulo se espera que los lectores puedan:

- Identificar las principales variables utilizadas en la construcción de esquemas de clases sociales.
- Reconocer los distintos esquemas clasificatorios de la variable **ocupación**.
- Reconocer las principales limitaciones que se presentan cuando se quieren hacer estudios de tipo longitudinales y se requiere la armonización de distintas clasificaciones que sufrieron cambios en el tiempo. 

Para una mayor comprensión del capítulo se recomienda la lectura de las siguientes publicaciones: 

- Chávez Molina, E., Bernasconi, F., &amp; Rodríguez de la Fuente, J. [-@ChavezMolina.etal2020]. "Propuesta de correspondencias entre CNO y CIUO. Sintaxis para SPSS, Stata y R. Herramientas Para La Investigación Social." Serie: Cuadernos de Métodos y Técnicas de La Investigación Social ¿Cómo Se Hace?, 6. [Link de descarga](http://iigg.sociales.uba.ar/2020/09/30/his-6-propuesta-de-correspondencias-entre-cno-y-ciuo-sintaxis-para-spss-stata-y-r/?fbclid=IwAR3RvLDs7H8wYHDqUooZMEI74HIDS6MXT3YbEjstG44yt0DB9tFj0VwlT9A)  

- INDEC. [-@INDEC2000a]. Utilización de clasificadores de ocupación en las bases de datos de la encuesta permanente de hogares. [Link de descarga](https://www.indec.gob.ar/dbindec/EPH_Clasif_Ocup_hasta_CNO_2001.doc)  

- INDEC. [-@INDEC2018]. Clasificador Nacional de Ocupaciones. Definiciones conceptuales. [Link de descarga](https://www.indec.gob.ar/ftp/cuadros/menusuperior/clasificadores/definiciones_conceptuales_cno.pdf)  

- Sacco, N., &amp; Riveiro, M. [-@Sacco2016b]. "La Clasificación de Ocupaciones en el Sistema Estadístico Nacional". _Estudios Del Trabajo_, 51, 28. [Link de descarga](https://aset.org.ar/ojs/revista/article/view/24)  

- INDEC. [-@INDEC2018a]. CNO. Clasificador Nacional de Ocupaciones. Versión 2017. [Link de descarga](https://www.indec.gob.ar/ftp/cuadros/menusuperior/clasificadores/CNO_2017.pdf)

- INDEC. [-@INDEC2018b]. CNO. Correspondencias entre el CNO-17 y la CIUO-08. [Link de descarga](https://www.indec.gob.ar/ftp/cuadros/menusuperior/clasificadores/correspondencias_cno2017_ciuo2008.pdf) 
 
- OIT. [-@OIT2008]. Clasificación Internacional Uniforme de Ocupaciones (CIUO-08) – Marco conceptual. OIT. [Link de descarga](https://www.ilo.org/public/spanish/bureau/stat/isco/docs/annex1.pdf) 

- OIT. [-@OIT2008a]. Resolución sobre la actualización de la Clasificación Internacional Uniforme
de Ocupaciones. OIT. [Link de descarga](https://www.ilo.org/public/spanish/bureau/stat/isco/docs/resol08.pdf)

- Torrado, S. [-@Torrado1993a]. El nuevo ‘Clasificador Nacional de Ocupaciones del INDEC: Una fractura irreparable en el sistema estadístico nacional. _Estudios del Trabajo_, 5, 85–120.

## Consideraciones previas {#consideraciones} 

### Las reglas del juego

Si la idea es abordar la estructura socioeconómica, se debe tener en cuenta varias cuestiones antes de trabajar. En el [Capítulo 2](#estructura1) se describieron distintas perspectivas teóricas sobre clases sociales que se han desarrollado tanto a nivel internacional como a nivel local en Argentina. Lo cierto es que se debe contar con una perspectiva que se adecúe a la pregunta de investigación y a objetivos. Luego, definir la metodología de estudio es crucial para poder organizar las técnicas de investigación que se implementarán. Partiendo de esta base, lo siguiente sería remitirse a las fuentes de datos a utilizar, según su accesibilidad y pertinencia. Una vez que se cuenta con los datos, se seleccionan las variables que sirvan para “jugar” con su caracterización. Se pueden elaborar sistemas de clases, construir nuevas variables, pensar en diferentes maneras de caracterizar a la estructura social y más. Todo ello con un mismo fin: analizar la sociedad a nivel macro.

En esta unidad se elabora una descripción de las variables económicas que se han investigado en las fuentes, prestando especial atención a las variables socio-ocupacionales porque han sido los principales insumos en el estudio de clases sociales, en especial, la ocupación. Se define su importancia, para qué ha servido en los estudios de Argentina, cómo tratarla y qué limitaciones se encuentran a la hora de implementarla. Además, presentamos otras variables que son de nuestro interés para construir esquemas de medición de clases sociales.

### La estratificación como perspectiva de análisis

La estratificación es un proceso inherente a las sociedades modernas, que tiene que ver con la complejización de la actividad productiva. Las consecuencias de este fenómeno son relativas a la desigualdad de nuestras sociedades, lo cual ha despertado el interés de muchos cientistas sociales. Su estudio nos permite conocer los procesos de movilidad social inter e intra-generacionales y la configuración de la sociedad en grupos diferenciados. Lo cierto es que los recursos se distribuyen de manera desigual entre los miembros de nuestras sociedades, y esto genera distinciones entre ellos según la posición que ocupan.  

Estudiar la estratificación implica seleccionar los indicadores y variables que contribuirán a la explicación sobre este proceso de diferenciación y diversificación social. Existe una larga tradición de tomar la educación, la ocupación y los ingresos como las tres principales patas de la investigación en estratificación [@Fujihara2020]. La combinación de estas tres variables se conoce como estatus socio-económico [@Sno.Ganzeboom2017]. Al respecto, la ocupación ha tomado el papel principal peso, convirtiéndose en el “mejor indicador” [@Blau.Duncan1967] del estatus socio-económico.  

En resumen, observar con los lentes de estratificación a la sociedad implica asumir que la diversificación de la actividad económica ha traído consigo la distinción en grupos según su tarea y posicionamiento en la sociedad, lo cual, a su vez, significa concebir una sociedad desigual, con mayor o menor apertura al “movimiento” de las personas dentro de este entramado de relaciones (ya sea “hacia arriba” o “hacia abajo”) en el proceso de movilidad. Pero, ¿cómo medimos el proceso de estratificación?

### Indicadores de la estratificación social

La investigación que aspira a comprender los cambios en la estructura social y su medición, se ha nutrido de dos grandes tipos de clasificación. Es decir que, a grandes rasgos, la investigación de la estructura social se ha bifurcado en estudios de clase o en estudios de estatus social. Si bien se parecen, no son lo mismo. Las clases sociales son categorías clasificatorias que se definen como variables discretas. Presentan a la sociedad como un conjunto de grupos que no necesariamente se encuentran ordenados de una manera particular. En cambio, el estatus social organiza a la sociedad según su carácter jerárquico. En este sentido, los grupos se diferencian por tener mayor o menor estatus con respecto a otros, es decir, en relación con los demás individuos. Esta aproximación está caracterizada por utilizar medidas continuas para ordenar a la sociedad. Las medidas empíricas de ordenamiento de la sociedad se diferencian en: escalas de prestigio ocupacional, índices de estatus socio-económico y sistemas de clases. Las primeras dos son medidas continuas mientras que la última consta de una clasificación en categorías discretas.   

¿Por qué la ocupación es tan importante? Debemos entender la relevancia de la fuerza de trabajo para conocer sus implicancias en nuestras sociedades actuales.  

### La fuerza de trabajo y las características económicas de la población

La actividad económica es vital para cualquier sociedad. Cómo se organizan las personas alrededor de las actividades productivas y los procesos de estratificación asociados con la diferenciación social del trabajo son características fundamentales en nuestras sociedades. El estudio de la dinámica de la fuerza de trabajo es relevante para los científicos sociales en diversos aspectos: contribuye al debate sobre distintos temas de políticas públicas, y además puede responder preguntas fundamentales que interesan a los investigadores sobre estratificación.

La relación entre la población que contribuye a los procesos productivos en el mercado de trabajo y el resto, clasifica a las personas de acuerdo a su condición de actividad. La diferenciación entre los atributos de las personas económicamente activas de las inactivas permite el conocimiento de las características ocupacionales de los que participan en el mercado de trabajo. Para estudiar la actividad, los investigadores han desarrollado algunos conceptos como la Población Económicamente Activa (PEA) que aquí nos competen.

## Las variables socio-ocupacionales

Las variables económicas de la población no han sido siempre las mismas, desde el censo de 1947 hasta el censo 2010, observándose una ampliación en la información recabada, según el número de variables a las que se hace referencia [@Sacco2015]. Como se vio en el [capítulo 4](#fuentes2), si comparamos los censos a partir del de 1980 hasta el último, realizado en 2010, veremos cómo se ha diversificado la manera de medir la actividad económica en Argentina. Por su parte, las diferentes variables que ofrece la **EPH** (Tabla \@ref(fig:censos2) son similares a las del censo pero con algunas variaciones. Todas las variables aquí incluidas se encuentran disponibles en la base de Personas de la **EPH**.  

<!--
<div class="figure" style="text-align: center">
<p class="caption">(\#fig:unnamed-chunk-41)Principales variables socio-ocupacionales de la EPH</p><img src="imagenes/t3_u4.png" alt="Principales variables socio-ocupacionales de la EPH" width="80%" /></div>
-->




Ahora que sabemos cuál es la información que nuestras principales fuentes de datos contienen, describiremos de manera detallada cada una de ellas.

### Condición de actividad  

Las estadísticas de empleo distinguen dos grandes grupos de la población en edad laboral. El primero, es la población económicamente inactiva (**PNEA**), que incluye a todos aquellos que voluntariamente no trabajan o no trabajaban por pago o ganancia. El segundo es la población económicamente activa (**PEA**), que agrupa a aquellos que sí trabajan o trabajaban por pago o ganancia, como así también a aquellos que no tienen o tenían trabajo pero se encuentran o encontraban buscando activamente un empleo. Es decir, que en esta construcción los investigadores asumieron que la pérdida de empleo y la incapacidad de encontrar empleo representaba una falla en los mecanismos de asignación de los mercados de trabajo. En base a estos conceptos, los investigadores construyen las tasas de actividad, desempleo y empleo. El volumen, estructura y características de la **PEA**, en relación a sus características económicas, justifica su estudio para la demografía, la sociología y otras disciplinas.

La ONU define a la **condición de actividad** como aquello que “permite distinguir entre personas económicamente activas y no económicamente activas. El estado de actividad es la relación actual o habitual de cada persona con la actividad económica durante un período determinado" [@ONU1997, p. 6]. Para estudiarla es necesario obtener datos de las personas con edad de trabajo, es decir, aquellos definidos como en edad laboral, que en Argentina es entre 15 y 65 años.  

Si bien límite de edad suele no ser uniforme de acuerdo a la fuentes, esta variable comúnmente presenta las categorías de *ocupado*, *desocupado* e *inactivo*, nos permite un primer recorte de nuestro objeto de estudio. Como veremos más adelante, desde la **condición de actividad** podremos diferenciar a la población ocupada, desocupada, activa o inactiva. 

### Ocupación

Para todas aquellas líneas de investigación que reconocen en la división del trabajo el núcleo de la desigualdad social, la clasificación de las ocupaciones constituye la columna vertebral de muchas, sino de la mayoría de las indagaciones sobre estratificación social [@Crompton2008; @Barozet2007]. La **ocupación** compone un eje central de los estudios de mercados de trabajo y de la propia Sociología de las Ocupaciones. Su medición supone un conjunto de decisiones teóricas, metodológicas y operativas, que pocas veces tienen en los manuales la claridad y el espacio que merecen.

#### La Clasificación de Ocupaciones ^[Este texto está tomado parcialmente de @Sacco2016b]

Los sistemas clasificatorios de ocupaciones son herramientas que permiten ubicar las ocupaciones de los y las encuestadas en grupos pre-definidos de acuerdo a las definiciones de cada clasificador. Los clasificadores de ocupación difieren no sólo con respecto del nivel de detalle y títulos ocupacionales específicos incluidos, sino también con respecto a su lógica. Por ejemplo, algunas clasificaciones distinguen estados de empleo dentro de las ocupaciones y otras no lo hacen. Algunas están fuertemente orientadas a distinguir situaciones en la industria y otras no. Algunos clasificadores se adaptan a las características particulares de los mercados de trabajo y otras reproducen estructuras ocupacionales de los países desarrollados. Estas diferencias reflejan, en cierta medida, la estructura ocupacional de las sociedades, pero también la historia e intenciones de las instituciones que las han desarrollado.

A nivel general, se pueden apreciar estas definiciones en las discusiones plasmadas en la actualización que lleva a la **Clasificación Internacional Uniforme de Ocupaciones** (CIUO) [@Budlender2003; @Hoffmann1999], o bien, a nivel local, las discusiones y producciones en torno al **Clasificador Nacional de Ocupaciones**, previas a su implantación [@Elizalde1987; @INDEC1990; @INDEC1991] y posteriores [@Elizalde1993; @Torrado1993; @Torrado1993a]. Dada la complejidad intrínseca de la variable ocupación, así como de la exigencia explicativa que se le reclama, no es de extrañar que su medición y comparabilidad (a nivel transversal interno como a nivel regional e internacional) haya sido difícil de lograr. Diversas razones se dieron para esto.  

Las clasificaciones de ocupación tienden a diferir tanto a nivel nacional como en el tiempo. Cada sistema estadístico nacional busca establecer una clasificación que capte de la mejor forma posible las particularidades de la estructura ocupacional de su país, que, por definición, no está exenta de cambios, especialmente desde el punto de vista del desarrollo tecnológico. En segundo lugar, existe una amplia disparidad entre la lógica y el contenido de los clasificadores de ocupación al aplicarse al análisis de datos concretos; esto en parte muestra las diferencias en los intereses teóricos por detrás de los sistemas clasificatorios, pero también es resultado de la falta de coordinación tanto de la investigación social como de los procesos estadísticos planificados a largo plazo por las instituciones gubernamentales [@Ganzeboom1996].

#### La Clasificación Internacional Uniforme de Ocupaciones (CIUO) de la OIT

La **Organización Internacional del Trabajo** (OIT) de la ONU ha elaborado la **CIUO** por primera vez en 1958, con revisiones en 1968, 1988 y 2008 para tratar de solucionar estos problemas ([ver página web de la OIT](https://www.ilo.org/public/spanish/bureau/stat/isco/)). Uno de los principales objetivos de la **CIUO** es proporcionar a los INES (institutos nacionales estadísticos) un punto de partida para organizar sus clasificaciones nacionales. Sin embargo, estas revisiones periódicas de la OIT hacen necesaria a su vez otras revisiones dentro cada uno de los INES.

La **Clasificación Internacional Uniforme de Ocupaciones** (**CIUO**) es una clasificación de la Organización Internacional del Trabajo. Es una herramienta para organizar los empleos en grupos, según las tareas de cada empleo.

Existen varias versiones de la **CIUO**. La primera es la **CIUO-58**, y data del año 1957. La segunda es la **CIUO-68**, que fue adoptada en 1966. La tercera versión, la **CIUO-88**, fue adoptada por la Decimocuarta Conferencia Internacional de Estadísticos del Trabajo en 1987. La cuarta y última es de diciembre del 2007 y se conoce como la **CIUO-08**. Los principios básicos y la estructura de la clasificación se mantuvieron pero se mejoraron algunas áreas.

La **CIUO-08** ofrece 436 grupos ocupacionales organizados en una jerarquía de cuatro dígito, comenzando por el nivel más agregado que trae como resultado a 10 grupos principales, seguidos de 43 sub-grupos principales, 130 grupos menores y todo el resto son grupos unitarios [@OIT, 2012]. La versión más reciente de la CIUO ha incorporado algunos títulos ocupacionales que no estaban presente en las anteriores, por ejemplo, "ayudantes de cocina". La ventaja de esta estructura es que permite codificar ocupaciones con un nivel de detalle a cuatro dígitos, lo que significa que si buscamos mayor detalle, necesitaremos más cantidad de dígitos del código CIUO.

Los grupos principales a mayor nivel de agregación, es decir, a un dígito son:  
0 Ocupaciones de las Fuerzas Armadas  
1 Gerentes  
2 Profesionales  
3 Técnicos y Profesionales Asociados  
4 Trabajadores de Apoyo Administrativo  
5 Trabajadores de Servicios y Ventas  
6 Trabajadores calificados agrícolas, forestales y pesqueros  
7 Trabajadores artesanos y afines  
8 Operadores y ensambladores de planta y maquinaria  
9 Ocupaciones Elementales  

La mayor información sobre las ocupaciones está incluida en los siguientes grupos. Tomando los grupos principales ("Gerentes", con código 1000) se provee un ejemplo de un sub-grupo principal como es "Jefes ejecutivos, altos funcionarios y legisladores (11)”; un grupo menor como “Legisladores y Altos funcionarios (111)” y en el nivel de mayor detalle, tenemos al grupo unitario de “Oficiales de Alto Gobierno (1112)”. La estructura funciona como un set de cajas de diferente tamaño: las más pequeñas (grupos unitarios) están incluidas dentro de las más grandes y esto queda claro según el número de dígitos utilizado.

La característica por la cual se diferencian los grupos de la **CIUO-O8** es la calificación requerida para el trabajo. Por ejemplo, al diferenciar "Profesionales (2)" de "Técnicos y Profesionales Asociados (3)". Además, hay una separación entre quienes operan con máquinas y aquellos que no, en el caso de "Trabajadores artesanos y afines (7)" y "Operadores y ensambladores de planta y máquinaria (8)".

Si bien el mínimo común denominador de todas las clasificaciones son los títulos ocupacionales, la forma en la que se define la medición de la ocupación varía en cada clasificador, incluso desde la propia definición de ocupación. Por un lado, en la **CIUO-08**, “se entiende por ocupación, un conjunto de empleos cuyas principales tareas y cometidos se caracterizan por un alto grado de similitud”, y define al empleo como un “conjunto de tareas y cometidos desempeñados por una persona, o que se prevé que ésta desempeñe, para un empleador particular, incluido el empleo por cuenta propia” [@OIT2008]. Se trata de una definición vinculada a la clasificación de grupos de tareas y responsabilidades muy similares.

Para facilitar comparaciones entre naciones, las recomendaciones internacionales sugieren utilizar la clasificación de ocupaciones de acuerdo a normas de clasificación nacionales que puedan establecer su homologación con la última revisión de la **CIUO** mediante una doble codificación o mediante una correspondencia de los grupos detallados de la clasificación nacional con los de la clasificación de la OIT. Adicionalmente, especifican que los países deberían codificar los datos ocupacionales que hayan reunido al nivel más bajo posible que apoye la información recibida. Para facilitar una codificación detallada y exacta, sería útil que en el cuestionario se preguntara el título ocupacional de cada persona activa y se pidiera una breve descripción de las tareas y funciones realizadas en el empleo [@ONUOIT2010, pp. 179-180].

#### Clasificador Nacional de Ocupaciones (CNO) del INDEC Argentina

El **CNO (Clasificador Nacional de Ocupaciones)** es un sistema de clasificación de ocupaciones. Podemos definirlo como una herramienta que agrupa diferentes ocupaciones de acuerdo a un criterio preestablecido [@ChavezMolina.etal2020].

El **CNO-01** (definido actualmente como CNO-17) define a las ocupaciones, que son la “unidad de análisis" del clasificador, como la “forma concreta de la división singular del trabajo y de su sistema de relaciones dentro de las unidades productivas” y como “los procesos de trabajo parciales o individuales existentes en ellas” [@INDEC2005, pp. 16]. Esta definición de ocupación se distingue de la que provee la **CIUO**, siendo que ambas poseen marcos conceptuales diferentes, pero un mismo objetivo, clasificar ocupaciones. 

La estructura del **CNO-17** se compone de 5 dígitos, que contienen 4 dimensiones de análisis: 

*1° y 2° dígito: Carácter Ocupacional  
*3° dígito: Jerarquía Ocupacional  
*4° dígito: Tecnología Ocupacional  
*5° dígito: Calificación Ocupacional Carácter  

##### Carácter Ocupacional

Clasifica la ocupación en base al producto que se genera en el proceso de trabajo, más allá de la rama de actividad del establecimiento donde se realice la actividad laboral.

El primer dígito señala los 10 grandes grupos ocupacionales que van del 0 al 9. Esos grupos luego se desagregan con un segundo dígito en otros subgrupos de carácter más específico.

A continuación, presentamos los 10 grandes grupos ocupacionales de mayor nivel de agregación, es decir a un dígito de codificación. Además, mostramos un ejemplo de la clasificación a dos dígitos, dentro del primer grupo "Ocupaciones de dirección".

  0 Ocupaciones de dirección.  
	00 Funcionarios del poder ejecutivo nacional, provincial, municipal y/o departamental.  
	01 Funcionarios del poder legislativo nacional, provincial, municipal y/o departamental.  
	02 Funcionarios del poder judicial, federal, nacional, provincial, municipal y/o departamental.   
	03 Directivos de organismos, empresas e instituciones estatales.  
	04 Directivos de instituciones sociales.  
	05 Directivos de pequeñas y microempresas.  
	06 Directivos de medianas empresas privadas productoras de bienes y servicios.  
	07 Directivos de grandes empresas privadas productoras de bienes y servicios.  

1 Ocupaciones de gestión administrativa, de planificación, de control de gestión y jurídico-legal.  

2 Ocupaciones de gestión presupuestaria, contable y financiera.  

3 Ocupaciones de comercialización, de transporte, de almacenaje y de telecomunicaciones.  

4 Ocupaciones de servicios sociales básicos.  

5 Ocupaciones de servicios varios.  

6 Ocupaciones agropecuarias, forestales, de la pesca y de la caza.  

7 Ocupaciones de la producción extractiva, energética, de construcción e infraestructura.  

8 Ocupaciones de la producción artesanal, industrial y de reparación de bienes de consumo.

9 Ocupaciones auxiliares de la producción de bienes y de la prestación de servicios.  

##### Jerarquía Ocupacional 

Clasifica la ocupación según la jerarquía que ocupa en la organización del proceso de trabajo. Reconoce cuatro categorías que se traducen en los siguientes valores:

0. Dirección     
1. Cuenta propia   
2. Jefes  
3. Trabajadores asalariados Tecnología  

##### Tecnología Ocupacional

La tecnología ocupacional clasifica la ocupación de acuerdo al tipo de tecnología utilizada en el proceso de trabajo específico. Las categorías y valores para esta dimensión son las siguientes:

1. Sin operación de máquina  
2. Operación de maquinaria y equipos electromecánicos   
3. Operación de sistemas y equipos informatizados  

Debe realizarse la siguiente aclaración: en el caso de los directores, jefes y patrones, el valor siempre es 0 (cero). La dimensión de la tecnología ocupacional no es contemplada para estos casos por una cuestión de comparabilidad con el CNO-91.

##### Calificación Ocupacional

Clasifica la ocupación según la complejidad del proceso de trabajo específico, considerando los conocimientos y las competencias necesarias para su ejecución. Las categorías y valores para esta dimensión son:

1. Profesionales  
2. Técnicos  
3. Operativo  
4. No calificado  

Es importante realizar la distinción entre calificación de la ocupación y calificación requerida para la ocupación. La primera es la calificación del proceso de trabajo que involucra a dicha ocupación y la segunda es el nivel de formación necesario para acceder a cierta ocupación. En este caso, el 5º dígito del **CNO-17** hace referencia a la primera de las acepciones.

Ilustramos, con un ejemplo, la clasificación en su mayor nivel de desagregación, a 5 dígitos, mostrando en el siguiente cuadro realizado por Chávez Molina et al. [-@ChavezMolina.etal2020] el código ocupacional de los "Jefes de la producción industrial y artesanal con calificación profesional (80201)".


<div class="figure" style="text-align: center">
<p class="caption">(\#fig:unnamed-chunk-42)Jefes de la producción industrial y artesanal con calificación profesional (80201)</p><img src="imagenes/t5_u4.png" alt="Jefes de la producción industrial y artesanal con calificación profesional (80201)" width="80%" /></div>




Dentro del grupo 80201 se encuentran ocupaciones tales como "Jefe de planta industrial" y "Jefe de laboratorio". El primer dígito, señala al grupo 8, que define tareas vinculadas a la producción de bienes, ya sea industrial o artesanal. Incluyendo un mayor nivel de detalle a dos dígitos, el grupo 80, alude a ocupaciones relativas a la transformación de materias primas para la elaboración de bienes industriales o artesanales, tanto bienes finales como intermedios. El 3º dígito permite establecer que la ocupación se inserta en una posición de jefatura. Al 4º código de la tecnología siempre se le adjudica el valor de 0 en los casos de patrones, directores y jefes. Por último, el 5º dígito describe que esta ocupación presenta una calificación profesional.

#### Compatibilidad entre la CNO y la CIUO

Distinguiendo los censos modernos de población en Argentina -de 1960 a 2010-, el código ocupacional empleado en el censo de 1960 era compatible a nivel de 4 dígitos con la **CIUO** en su versión de 1958 mientras que en el censo de 1970 se utilizó la **CIUO-1968** a nivel de 3 dígitos. En el censo de 1980 la variable ocupación fue codificada por el Código Ocupacional (CO) que permitía homologar sus códigos a nivel de 1 o 2 dígitos en algunas ocupaciones con la **CIUO-68**.

En parte gracias a debates llevados a cabo durante el periodo intercensal 1980-1991, se propusieron procedimientos clasificatorios alternativos de codificación de esta variable en los censos de población llevados a cabo por el **INDEC**. Siguiendo las recomendaciones internacionales que sugerían a los institutos de estadística construir sus propios clasificadores para adaptarlos a las particularidades de los mercados de trabajo en cada país, el **CNO** fue elaborado por el **INDEC** actualizando el CO de la **EPH**, cuyas distintas versiones previas (con mayores niveles de agregación) fueron utilizadas desde la aplicación de la encuesta, a principios de la década del setenta. De esta forma, desde el censo de 1991 se aplicó el **CNO** sucesivamente en los censo del 2001 y 2010, en distintas versiones y a distintos niveles de apertura.

Esta estabilidad del clasificador ha posibilitado el desarrollo de una serie de investigaciones desde el **INDEC**, por ejemplo, los documentos de la Serie Estructura Ocupacional del Programa de Medición y Análisis de la Estructura Ocupacional, y su utilización en investigaciones académicas, realizadas con información proveniente de la **EPH** y la Encuesta Anual de Hogares Urbanos. Sin embargo, el clasificador no ha pasado a ser parte un insumo habitual para la generación de datos ocupacionales primarios por fuera del **INDEC**, limitando así su aceptación por fuera del Sistema Estadístico Nacional (SEN).

Con el **CNO** se contó por primera vez en la historia del SEN con el mismo sistema clasificatorio de las ocupaciones en tres relevamientos censales sucesivos y en la **EPH**. En las primeras versiones del **CNO** (o CO-EPH), su máxima apertura permitía un empalme con la **CIUO** a 2 dígitos, cuya homogeneización, si bien no perfecta, era razonablemente directa [@INDEC2000]. Una vez actualizando el sistema clasificatorio, la versión a 3 dígitos aplicada tanto en la encuesta como en el censo de 1991, los empalmes entre la **CIUO** se volvieron irrealizables más allá del segundo dígito [@INDEC1998]. Esto implicó niveles de comparabilidad con la **CIUO** limitados a mayor grado de des-agregación de la información.

El **CNO-91** empleó 3 dígitos para la codificación de ocupaciones, mientras que en el 2001 se utilizó una versión a 5 dígitos. Por su parte, la información recabada por el censo de 2010 sólo computó el nombre de la ocupación, sin preguntar por la tarea, lo que supuso codificar sólo al nivel de 1 dígito (carácter) del **CNO**, produciendo una ruptura de la serie comenzada en 1991 a mayores niveles de des-agregación.

No sólo se observó un cambio en la cantidad de dígitos de cada codificador aplicado, sino también en la información que cada uno otorga. Por ejemplo, si bien en el censo de 1980 sólo se codificó a un dígito, la propia estructura y lógica de la **CIUO** permite comparaciones con otros codificadores (dado que es un sistema clasificatorio muy dependiente de la calificación) mientras que en el 2010 el nivel de agregación no dice mucho más que una denominación, sin poder realizar diferenciación social interna alguna de cada una de ellas, tales como las que provee la calificación de las tareas.

##### Debates de clasificación  

Las modificaciones a nivel interno con el clasificador del censo de 1980 dieron lugar a encendidos debates sobre la conveniencia de modificar o no las nomenclaturas estadísticas. Uno de los argumentos de Torrado [-@Torrado1993a] fue que con el **CNO-91** (aplicado para el censo de 1991) las tareas que relevó el censo no fueron codificadas, perdiéndose de esta forma el dato sobre la ocupación y las tareas. El contra-argumento del equipo encargado de elaborar el **CNO-91** [@Elizalde1993] era que ningún sistema clasificatorio admitía contar con el dato sobre la ocupación recogido por el censo, sino que todos permiten reemplazarlo por la denominación del subgrupo al nivel menor de agregación en el que es clasificada.

Torrado [-@Torrado1993a] también objetaba que la aplicación del **CNO-91** producía una ruptura de comparabilidad con los nomencladores nacionales precedentes y con los nomencladores internacionales. A su vez, que el **CNO-91** requería para su codificación de información adicional a la ocupación mientras que la **CIUO** sólo requería la respuesta a la pregunta sobre “Ocupación principal” para poder asignar una ocupación individual a un grupo dado del nomenclador (es decir, el criterio organizador de la clasificación era unidimensional). El **CNO-91**, por el contrario, para la definición de sus categorías se requería información sobre variables económicas adicionales a la ocupación (tales como categoría ocupacional, rama de actividad, tamaño del establecimiento de los patrones). Esto implicó que la aplicación del **CNO**, en rigor, sólo fuera posible en el caso de fuentes que investiguen todas las variables adicionales a la ocupación (prácticamente, ninguna salvo la **EPH**). Significó además que en la utilización del **CNO** se introdujera complicaciones en las tareas de codificación en el censo, ya de por sí complejas con los nomencladores anteriores.

Torrado [-@Torrado1993a] sostenía que la aplicación de este sistema clasificatorio traería consigo un aumento considerable tanto de los costos de procesamiento del censo como de los inevitables errores de codificación y falta de oportunidad de las publicaciones de estos datos. Lo sucedido __a posteriori__ en el censo de 1991 y el de 2001 no hizo más que confirmar algunas de estas advertencias. En efecto, tanto en el censo de 1991 como en el censo de 2001, los tabulados y bases de datos publicados con esta información fueron de poco detalle (salvo en bases de datos no oficiales) y divulgadas relativamente con poca oportunidad y, por ende, de dudosa calidad, a pesar de que, por ejemplo, en la medición y clasificación de las ocupaciones en el censo de 2001, se utilizó, por primera vez, un sistema informático que permitió la codificación automática de más del 55% de las declaraciones sobre ocupación y en el que se codificaron el total de las declaraciones sobre esta variable relevadas por el censo. De hecho, ante la falta de recursos humanos, en el censo de 1991 las tareas de codificación de las ocupaciones fueron muestreadas.

Esto parece (a falta de publicaciones oficiales) no haber sucedido en el censo de 2010. Si bien el clasificador utilizado tanto en el censo 2001 como en el 2010 es el mismo, no fueron iguales las decisiones en lo que refiere al tratamiento y difusión de los datos. El nivel de apertura de las ocupaciones en el censo 2010 no es informativo acerca de las tareas, ya que el nombre de la ocupación sólo muestra el carácter ocupacional, vinculado con el objeto o servicio que produce el proceso de trabajo del que forma parte la ocupación clasificada. A pesar de que esta decisión política y técnica no guarde relación directa con el **CNO** como instrumento, conlleva implicancias indirectas particulares: otros sistemas clasificatorios a nivel de un dígito, por ejemplo la **CIUO**, si bien en escaso grado de detalle, remiten, en su nivel más agregado, tanto las tareas como a la calificación ocupacional. Adicionalmente, los censos de 1991 y 2001 mostraron distintos tipos de límites a la captación de la condición de actividad, por ende, afectando a todas las variables relativas a las características económicas de población.

La aplicación del **CNO** en el censo de 1991 introdujo no sólo un cambio en el sistema clasificatorio con respecto al utilizado sobre todo en 1980 (también en 1960 y 1970), sino que hubo variaciones en su definición, la forma de medición, el diseño de la cédula, la lectura y procesamiento posterior de la información. A diferencia del censo de 2001, el censo de 1980 y el censo de 1991 preguntaron directamente por la tarea y ocupación. En el 2001, en cambio, se dividió la pregunta en dos: por un lado, se indagó el nombre de la ocupación, y, por el otro, la tarea.

##### Métodos de correspondencia entre el CNO y la CIUO  

En los casos en los que se necesita realizar comparaciones entre información encontrada en distintas encuestas nacionales o con relevamientos internacionales, es necesario trabajar con un esquema clasificatorio de la ocupación que sea común. En este sentido, internacionalmente, la **CIUO** (en sus distintas versiones) funciona como "lenguaje común" en términos de la medición ocupacional. Una de las recomendaciones de la **OIT**, además de la construcción de instrumentos de medición ocupacional propios para cada situación nacional, es la elaboración de equivalencias entre el clasificador nacional y la **CIUO**. 

De este modo a partir de la información brindada por **INDEC** [@INDEC2018b; @ChavezMolina.etal2020] es posible realizar esta conversión a nivel de dos dígitos de la **CIUO**. Siguiendo la metodología propuesta por el organismo estadístico, la mayor parte de los códigos del CNO presentan su equivalencia a dos dígitos de la **CIUO**, mientras que para algunos códigos específicos es necesario recurrir a la variable **rama de actividad** para poder hallar la correspondencia.

Para una propuesta mejorada de la metodología de **INDEC**, junto con las sintaxis para `SPSS`, `R` y `STATA`, puede consultarse @ChavezMolina.etal2020.

### Rama de Actividad

La **Rama de Actividad** describe al sector industrial al que pertenece el establecimiento dentro del cual la persona ejerce o ejerció su empleo. Es decir, la unidad productiva en la cual las personas trabajan. A diferencia de otras variables económicas o socio-ocupacionales, la **rama de actividad** permite realizar diferenciaciones horizontales, no jerárquicas, a partir de la inserción de los trabajadores en las unidades productivas.

Tanto en la **EPH** como en el censo, se ha utilizado la codificación disponible según la “Clasificación Industrial Internacional Uniforme de Actividades Económicas” (**CIIU**) de las Naciones Unidas [-@ONU2009a]. Para 1991, 2001 y 2010 esta variable no presenta modificaciones sustanciales por lo que, en términos generales, los datos disponibles, son comparables.

En el censo de 1980, fue codificada según la “Clasificación Industrial Internacional Uniforme de Actividades Económicas” (**CIIU**) de las Naciones Unidas (Revisión 2-1968), hasta el nivel de ramas específicas (dos dígitos). Para 1991 y 2001 esta variable no presentó modificaciones sustanciales. Más información puede encontrarse en este [link](https://www.indec.gob.ar/micro_sitios/clanae/default.asp).

En la **EPH** entre 1974, su primera onda, hasta 1980 inclusive, se han utilizado los tres primeros dígitos de la **CIIU**, Revisión 2, aunque la codificación original consta de hasta 5 dígitos a su nivel más detallado. A partir del año 1997, se ha utilizado la “Clasificación Nacional de Actividades Económicas” (ClaNAE-97) con un detalle a cinco dígitos. Más tarde, desde 2011, la **EPH** distingue las ramas de actividad según la “Clasificación de Actividades Económicas para Encuestas Sociodemográficas del Mercosur” (**CAES Mercosur 1.0**), utilizando los 5 dígitos del código. Así mismo, esta última versión del CAES es totalmente compatible con el **CIIU** en su revisión 4. En la Tabla \@ref(fig:caes10) se observa un ejemplo de la CAES:

<!--
<div class="figure" style="text-align: center">
<p class="caption">(\#fig:unnamed-chunk-44)Ejemplo clasificación de Actividades Profesionales, Científicas y Técnicas - CAES 1.0 [@INDEC2011d]</p><img src="imagenes/caes10.png" alt="Ejemplo clasificación de Actividades Profesionales, Científicas y Técnicas - CAES 1.0 [@INDEC2011d]" width="80%" /></div>
-->

```{=html}
<template id="afaa34c5-d05c-4607-ad47-0586bc9eb11c"><style>
.tabwid table{
  border-spacing:0px !important;
  border-collapse:collapse;
  line-height:1;
  margin-left:auto;
  margin-right:auto;
  border-width: 0;
  display: table;
  margin-top: 1.275em;
  margin-bottom: 1.275em;
  border-color: transparent;
}
.tabwid_left table{
  margin-left:0;
}
.tabwid_right table{
  margin-right:0;
}
.tabwid td {
    padding: 0;
}
.tabwid a {
  text-decoration: none;
}
.tabwid thead {
    background-color: transparent;
}
.tabwid tfoot {
    background-color: transparent;
}
.tabwid table tr {
background-color: transparent;
}
</style><div class="tabwid"><style>.cl-b8341060{table-layout:auto;width:100%;}.cl-b82d3006{font-family:'Helvetica';font-size:10pt;font-weight:bold;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-b82d3010{font-family:'Helvetica';font-size:10pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-b82d415e{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-b82d75b6{background-color:transparent;vertical-align: middle;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-b82d75c0{background-color:transparent;vertical-align: middle;border-bottom: 2pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-b82d75c1{background-color:transparent;vertical-align: middle;border-bottom: 0 solid rgba(255, 255, 255, 0.00);border-top: 0 solid rgba(255, 255, 255, 0.00);border-left: 0 solid rgba(255, 255, 255, 0.00);border-right: 0 solid rgba(255, 255, 255, 0.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-b82d75ca{background-color:transparent;vertical-align: middle;border-bottom: 2pt solid rgba(102, 102, 102, 1.00);border-top: 2pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}</style><table class='cl-b8341060'>
```
<caption class="Table Caption">

(\#tab:caes10)Ejemplo clasificación de Actividades Profesionales, Científicas y Técnicas - CAES 1.0

</caption>
```{=html}
<thead><tr style="overflow-wrap:break-word;"><td class="cl-b82d75ca"><p class="cl-b82d415e"><span class="cl-b82d3006">Código</span></p></td><td class="cl-b82d75ca"><p class="cl-b82d415e"><span class="cl-b82d3006">Descripción</span></p></td><td class="cl-b82d75ca"><p class="cl-b82d415e"><span class="cl-b82d3006">Cantidad de dígitos</span></p></td></tr></thead><tbody><tr style="overflow-wrap:break-word;"><td class="cl-b82d75b6"><p class="cl-b82d415e"><span class="cl-b82d3010">M</span></p></td><td class="cl-b82d75b6"><p class="cl-b82d415e"><span class="cl-b82d3010">ACTIVIDADES PROFESIONALES, CIENTÍFICAS Y TÉCNICAS</span></p></td><td class="cl-b82d75b6"><p class="cl-b82d415e"><span class="cl-b82d3010">1</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-b82d75b6"><p class="cl-b82d415e"><span class="cl-b82d3010">69</span></p></td><td class="cl-b82d75b6"><p class="cl-b82d415e"><span class="cl-b82d3010">ACTIVIDADES JURÍDICAS Y DE CONTABILIDAD</span></p></td><td class="cl-b82d75b6"><p class="cl-b82d415e"><span class="cl-b82d3010">2</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-b82d75b6"><p class="cl-b82d415e"><span class="cl-b82d3010">6900</span></p></td><td class="cl-b82d75b6"><p class="cl-b82d415e"><span class="cl-b82d3010">Actividades jurídicas y de contabilidad</span></p></td><td class="cl-b82d75b6"><p class="cl-b82d415e"><span class="cl-b82d3010">4</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-b82d75b6"><p class="cl-b82d415e"><span class="cl-b82d3010">70</span></p></td><td class="cl-b82d75b6"><p class="cl-b82d415e"><span class="cl-b82d3010">ACTIVIDADES DE SERVICIO DE CONSULTORÍA EN GESTIÓN EMPRESARIAL</span></p></td><td class="cl-b82d75b6"><p class="cl-b82d415e"><span class="cl-b82d3010">2</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-b82d75b6"><p class="cl-b82d415e"><span class="cl-b82d3010">7000</span></p></td><td class="cl-b82d75b6"><p class="cl-b82d415e"><span class="cl-b82d3010">Actividades de servicios de consultoría en gestión empresarial</span></p></td><td class="cl-b82d75b6"><p class="cl-b82d415e"><span class="cl-b82d3010">4</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-b82d75b6"><p class="cl-b82d415e"><span class="cl-b82d3010">71</span></p></td><td class="cl-b82d75b6"><p class="cl-b82d415e"><span class="cl-b82d3010">SERVICIOS DE ARQUITECTURA E INGENIERÍA; ENSAYOS Y ANÁLISIS TÉCNICOS</span></p></td><td class="cl-b82d75b6"><p class="cl-b82d415e"><span class="cl-b82d3010">2</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-b82d75b6"><p class="cl-b82d415e"><span class="cl-b82d3010">7100</span></p></td><td class="cl-b82d75b6"><p class="cl-b82d415e"><span class="cl-b82d3010">Servicios de arquitectura e ingeniería; ensayos y análisis técnicos</span></p></td><td class="cl-b82d75b6"><p class="cl-b82d415e"><span class="cl-b82d3010">4</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-b82d75b6"><p class="cl-b82d415e"><span class="cl-b82d3010">72</span></p></td><td class="cl-b82d75b6"><p class="cl-b82d415e"><span class="cl-b82d3010">INVESTIGACIÓN Y DESARROLLO</span></p></td><td class="cl-b82d75b6"><p class="cl-b82d415e"><span class="cl-b82d3010">2</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-b82d75b6"><p class="cl-b82d415e"><span class="cl-b82d3010">7200</span></p></td><td class="cl-b82d75b6"><p class="cl-b82d415e"><span class="cl-b82d3010">Investigación y desarrollo</span></p></td><td class="cl-b82d75b6"><p class="cl-b82d415e"><span class="cl-b82d3010">4</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-b82d75b6"><p class="cl-b82d415e"><span class="cl-b82d3010">73</span></p></td><td class="cl-b82d75b6"><p class="cl-b82d415e"><span class="cl-b82d3010">PUBLICIDAD E INVESTIGACIÓN DE MERCADOS</span></p></td><td class="cl-b82d75b6"><p class="cl-b82d415e"><span class="cl-b82d3010">2</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-b82d75b6"><p class="cl-b82d415e"><span class="cl-b82d3010">7301</span></p></td><td class="cl-b82d75b6"><p class="cl-b82d415e"><span class="cl-b82d3010">Actividades publicitarias</span></p></td><td class="cl-b82d75b6"><p class="cl-b82d415e"><span class="cl-b82d3010">4</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-b82d75b6"><p class="cl-b82d415e"><span class="cl-b82d3010">7302</span></p></td><td class="cl-b82d75b6"><p class="cl-b82d415e"><span class="cl-b82d3010">Investigación de mercados y encuestas de opinión pública</span></p></td><td class="cl-b82d75b6"><p class="cl-b82d415e"><span class="cl-b82d3010">4</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-b82d75b6"><p class="cl-b82d415e"><span class="cl-b82d3010">74</span></p></td><td class="cl-b82d75b6"><p class="cl-b82d415e"><span class="cl-b82d3010">OTRAS ACTIVIDADES PROFESIONALES, CIENTÍFICAS Y TÉCNICAS</span></p></td><td class="cl-b82d75b6"><p class="cl-b82d415e"><span class="cl-b82d3010">2</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-b82d75b6"><p class="cl-b82d415e"><span class="cl-b82d3010">7400</span></p></td><td class="cl-b82d75b6"><p class="cl-b82d415e"><span class="cl-b82d3010">Otras actividades profesionales, científicas y técnicas</span></p></td><td class="cl-b82d75b6"><p class="cl-b82d415e"><span class="cl-b82d3010">4</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-b82d75b6"><p class="cl-b82d415e"><span class="cl-b82d3010">75</span></p></td><td class="cl-b82d75b6"><p class="cl-b82d415e"><span class="cl-b82d3010">ACTIVIDADES VETERINARIAS</span></p></td><td class="cl-b82d75b6"><p class="cl-b82d415e"><span class="cl-b82d3010">2</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-b82d75c0"><p class="cl-b82d415e"><span class="cl-b82d3010">7500</span></p></td><td class="cl-b82d75c0"><p class="cl-b82d415e"><span class="cl-b82d3010">Actividades veterinarias</span></p></td><td class="cl-b82d75c0"><p class="cl-b82d415e"><span class="cl-b82d3010">4</span></p></td></tr></tbody><tfoot><tr style="overflow-wrap:break-word;"><td  colspan="3"class="cl-b82d75c1"><p class="cl-b82d415e"><span class="cl-b82d3010">Fuente: INDEC (2011)</span></p></td></tr></tfoot></table></div></template>
<div class="flextable-shadow-host" id="07853900-74c6-4ef4-9e29-3dd25d3bd54d"></div>
<script>
var dest = document.getElementById("07853900-74c6-4ef4-9e29-3dd25d3bd54d");
var template = document.getElementById("afaa34c5-d05c-4607-ad47-0586bc9eb11c");
var caption = template.content.querySelector("caption");
if(caption) {
  caption.style.cssText = "display:block;text-align:center;";
  var newcapt = document.createElement("p");
  newcapt.appendChild(caption)
  dest.parentNode.insertBefore(newcapt, dest.previousSibling);
}
var fantome = dest.attachShadow({mode: 'open'});
var templateContent = template.content;
fantome.appendChild(templateContent);
</script>

```

En la siguiente Tabla \@ref(fig:caes2) podemos ver todas las clasificaciones que se han ido implementando para codificar las ramas de actividad económica.

<div class="figure" style="text-align: center">
<p class="caption">(\#fig:unnamed-chunk-45)Clasificadores de la rama de actividad</p><img src="imagenes/t4_u4.png" alt="Clasificadores de la rama de actividad" width="80%" /></div>





### Categoría de Ocupación

Esta variable es de vital importancia para la construcción de esquemas de estratificación ya que permite discriminar a la población en función de su posicionamiento en las relaciones de producción y a partir del origen de sus ingresos. Por un lado diferencia a aquellos que compran fuerza de trabajo y son dueños o controladores de los medios de producción (**empleadores** o **patrones**), y aquellos que deben vender su fuerza de trabajo para recibir un salario (**asalariados** u **obreros**). Entre estas situaciones contrapuestas, nos encontramos con los **trabajadores por cuenta propia** o **independientes** que no venden su fuerza de trabajo a una única persona ni son empleadores de fuerza de trabajo ajena.

Otras situaciones que suele distinguir la **categoría ocupacional** es a los **trabajadores familiares no remunerados**.

### Sector de Actividad

Permite distinguir a la población trabajadora según si el establecimiento en el que realiza su actividad es estatal o privado. Algunas encuestas, a su vez, discriminan también al sector doméstico, las organizaciones no gubernamentales (ONGs) o a las cooperativas de trabajo.  

### Tamaño del Establecimiento

Esta variable se utiliza generalmente para realizar cortes dentro de la estratificación social que permitan observar procesos de heterogeneidad productiva o segmentación de mercados. Utilizando como línea de corte, generalmente, a los 5 o 10 ocupados, la variable permite discriminar a las micro-empresas de aquellos establecimientos medianos o grandes. Por otro lado, la variable de **tamaño del establecimiento** ha sido comúnmente señalada como *proxy* de nivel de productividad [@Tokman1987].

### Supervisión  

La **supervisión** del trabajo de otros es un indicador muy utilizado dentro del enfoque neo-marxista o neo-weberiano de las clases sociales, en donde se busca diferenciar aquellas posiciones "contradictorias" a partir de las cuales si bien se hace referencia a trabajadores asalariados, tienen poder de dirección (con mayores o menores niveles de autonomía) en el trabajo de otros.

En algunas encuestas está dimensión es relevada directamente, acompañada de otras preguntas que pueden recabar información sobre la cantidad de personas supervisadas o las características de dicha actividad de supervisión. En la **EPH**, una aproximación a dicha cuestión puede realizarse a través de la variable **ocupación** medida a través del **CNO**. El tercer dígito de dicho código, que permite establecer la *jerarquía ocupacional* posibilita diferenciar a aquellas ocupaciones de ejecución directa de las de jefatura. Estas últimas implican aquellos trabajos en donde se organiza, supervisa y controlan procesos y personas comprometidas en su ejecución.

## Explorando las variables socio-ocupacionales en la EPH {#eph4} 

Paquetes que utilizaremos en esta sección:


En este apartado aplicaremos lo aprendido en punto anterior y exploraremos las distintas variables revisadas a partir de la **EPH**. Lo que nos interesa es identificarlas, saber qué nombre tienen y como se presentan sus categorías. Al mismo tiempo, revisaremos algunas de las cuestiones aprendidas en el [Capítulo 3](#fuentes). Aprovecharemos a utilizar la base del segundo trimestre de la **EPH** de 2015, ya que en la misma, excepcionalmente, la ocupación fue codificada tanto a partir del **CNO-01** como de la **CIUO-08**. De esta forma, por un lado descargaremos a través del paquete __```eph```__ y añadiremos la variable de ocupación descargando la información adicional desde la página de **INDEC**.

En primer lugar descargamos la base: 



Como la codificación de la variable ocupación a partir de la **CIUO** se encuentra en un archivo aparte, debemos acceder al sitio de INDEC para descargarlo.

<div class="figure" style="text-align: center">
<p class="caption">(\#fig:unnamed-chunk-48)Ejemplo clasificación de Actividades Profesionales, Científicas y Técnicas - CAES 1.0 [@INDEC2011d]</p><img src="imagenes/indec_ciuo.png" alt="Ejemplo clasificación de Actividades Profesionales, Científicas y Técnicas - CAES 1.0 [@INDEC2011d]" width="80%" /></div>

Luego de descargado el archivo, descomprimiremos el ```.rar``` y utilizaremos el archivo `eph_ciuo_215.dbf`. A continuación abriremos dicho archivo y "pegaremos" la variable **PP04D_CIUO** en la base **eph_ind_215**. Utilizaremos las variables **CODUSU** (identificador de vivienda), **NRO_HOGAR** (identificador del hogar) y **COMPONENTE** (identificador de miembro del hogar) como ID para emparejar ambas bases. 



Ahora podemos etiquetar la base utilizando el comando ```organize_labels``` del paquete __```eph```__:



¡Listo! La base está preparada para ser explorada.  

### Condición de actividad  

En la **EPH** la variable que mide la **condición de actividad** puede ser encontrada bajo el nombre "ESTADO". Exploraremos las distintas categorías y frecuencias de casos que presenta para dicho trimestre. 


```
## 
## Entrevista individual no realizada (no respuesta al cuestionario individual) 
##                                                                           63 
##                                                                      Ocupado 
##                                                                        24398 
##                                                                   Desocupado 
##                                                                         1450 
##                                                                     Inactivo 
##                                                                        25138 
##                                                           Menor de 10 anios. 
##                                                                         8979
```

Como puede observarse las categorías son *entrevista individual no realizada*, *ocupado*, *desocupado*, *inactivo* y *menor de 10 años*. En el caso de que pretendamos seleccionar únicamente a la población económicamente activa, deberemos filtrar las categorías 1 (ocupado) y 2 (desocupado). En este caso nos quedaríamos con 25848 registros.


```
## [1] 25848
```

### Ocupación

Como presentaremos en la próxima unidad, la ocupación es la variable central en la construcción de esquemas de estratificación y clases sociales. En el caso de la EPH, los censos (posteriores a 1991) y las diversas encuestas que produce el **INDEC**, en las que se releva información ocupacional, suelen codificar dicha variable a través del **CNO**.

La **EPH** recaba la ocupación tanto para la población ocupada como desocupada, relevando para este último grupo el dato de la última ocupación realizada, en el caso que hubiera existido. Mientras que el primer dato se guarda en la variable *PP04D_COD*, la última ocupación de los desocupados puede encontrarse en la variable *PP11D_COD*. Con el comando ```table``` podemos visualizar todos los códigos existentes en la base y su frecuencia absoluta.


```
## 
##       00001 01001 02001 03001 04001 05001 05002 06001 06002 07001 10112 10113 
## 35630    44     2    11    66    11   102   654   266     1     6    26    13 
## 10122 10131 10132 10133 10201 10202 10203 10311 10312 10313 10314 10323 10331 
##     1     2    12     8    12    53    60    11   136   118    31     2    29 
## 10332 10333 11113 11131 11132 11202 11203 11311 11312 11313 11323 11331 11332 
##    33  2127     1   108     2     2     3    10     4     6     1   112     4 
## 11333 20111 20112 20113 20131 20132 20133 20202 20203 20311 20312 20313 20314 
##    52     1     1     9    57     2     7    10    25     8     7   203     6 
## 20323 20331 20332 20333 30111 30112 30113 30131 30132 30133 30202 30203 30311 
##     1    94    67   354     2    74   930     3     1     9     1    71     8 
## 30312 30313 30314 30323 30331 30332 30333 31113 31312 31313 31314 32111 32113 
##   217   310  1018     1     4     2    23    58     2   148     3     1     1 
## 32123 32131 32133 32201 32202 32311 32312 32313 32314 32323 32333 33113 33133 
##     1     2     1     1     5     1     2     5   152     2    10   217     1 
## 33312 33313 33314 33333 34113 34123 34202 34203 34312 34313 34314 34323 34324 
##     2     8    20     3     3   241     6     9     5    15    30   939     4 
## 34331 34332 34333 35113 35123 35131 35201 35202 35203 35313 35314 35323 35333 
##     1     2     1     4    20     2     2     1     6    11    28   176     7 
## 36113 36203 36313 36314 36323 36333 40111 40112 40113 40131 40132 40201 40202 
##    13    16    57   104    59    70    77    57     2     5     2     4    17 
## 40203 40311 40312 40313 40314 40322 40323 40331 40332 40333 41111 41112 41113 
##     1   251   400    12    19    27     9    23    12     1     2   112     1 
## 41201 41202 41203 41311 41312 41313 41314 41323 41331 41332 41333 42131 42201 
##     5    10    14   115  1335    98     1     2    12     1     2     1     1 
## 42202 42203 42311 42313 42331 42332 42333 43111 43112 43131 43311 43331 43332 
##     1     4     4     7    39     5     6     1     2    22     1    40     4 
## 44111 44112 44113 44131 44132 44203 44312 44313 44331 45111 45112 45122 45123 
##     1     3     2     2     1     3    41    10     2     1     3     3     1 
## 45131 45132 45203 45311 45312 45322 45323 45331 45332 45662 46112 46202 46203 
##     5     3     1    11    34     8     2     7    30     1     3     3     1 
## 46311 46312 46313 46314 46331 46332 46333 47113 47203 47312 47313 47314 47323 
##    18    52    17     2     3     1     2     5     7     1   255    71     6 
## 48203 48311 48312 48313 48323 49202 49203 49311 49312 49313 49314 49323 49331 
##     5    27    65   309    14     1     1     3    14    53     4     5     1 
## 50111 50112 50113 50122 50131 50311 50312 50313 50322 51112 51202 51203 51312 
##    22     1     2     1     2    25     2     2     1    30     2     1    77 
## 51314 51331 52112 52113 52123 52203 52312 52313 52314 52323 52332 52333 53112 
##     3     1     3     2     4     3    13    20     2     5     4     3     2 
## 53113 53203 53312 53313 53314 53323 54112 54133 54311 54312 54313 54323 54332 
##   160    31     9   262   286     3     4     1     1    10    14     1     2 
## 54333 55203 55312 55314 56113 56123 56203 56313 56314 56323 57112 57113 57312 
##    12     3     1  1354    22     1     7    67   927    21     9   130     3 
## 57313 57314 58112 58113 58132 58203 58312 58313 58314 58323 58332 59313 60111 
##    30   437    11   128     1     1     8   108    13     2     2     1     2 
## 60113 60123 60131 60203 60311 60312 60313 60314 60323 60331 60332 60333 61113 
##     1     4     6     2     1     1    50     3    11     5     1     1     4 
## 61123 61203 61311 61313 61314 61323 61331 62313 62314 62323 63113 63313 63331 
##     2     1     1    10     2     1     1     5     1     4     1     2     2 
## 64113 64202 64313 64314 64323 64331 70131 70202 70203 70311 70312 70313 70322 
##     1     1     8     2     2     1     2     3    28     1     3    33     2 
## 70323 70331 70332 70333 71113 71201 71202 71203 71311 71312 71313 71323 71331 
##    27     8     2     1     1     2     1    10     1     3     9    12     6 
## 71332 71333 72112 72113 72131 72132 72201 72202 72203 72311 72312 72313 72314 
##     1     1    29   873    50     1     2     3    58     2    60  1068   576 
## 72323 72331 72332 72333 73113 74314 80111 80112 80113 80123 80131 80132 80202 
##    41    56    17     2     1     1     1    74   144   222     5     1     4 
## 80203 80311 80312 80313 80314 80322 80323 80331 80332 80333 81101 81121 81123 
##    64     4    24   516    63     4   688    21     2    10     1     1     2 
## 81131 81132 81201 81202 81323 81331 81332 81333 82111 82112 82113 82123 82131 
##    23     3    19     1     1    68     9     1     1    46   219    49     1 
## 82203 82312 82313 82314 82323 90112 90113 90203 90312 90313 90323 90331 90332 
##     2    23   192    32     7     4     5     6    14    76     6     1     2 
## 91311 92112 92113 92132 92202 92203 92312 92313 92331 92333 99999 
##     1    44     3     2     1     1    90    48     2     1    53
```

Por otro lado, el paquete __```eph```__ mediante la función ```organize_CNO``` nos agrega 4 columnas a la base en donde se clasifica cada componente del CNO: carácter, jerarquía, tecnología y calificación ocupacional. A continuación revisamos dicho comando y solicitaremos las frecuencias, por ejemplo, de la calificación.


```
## 
## No calificados          Ns.Nc     Operativos  Profesionales       Técnicos 
##           5195             53          12879           2012           4259
```

Por su parte en la variable *PP04D_CIUO* encontraremos a la ocupación codificada según el **CIUO**.  


```
## 
## 0110 0210 0310 1111 1112 1114 1120 1211 1212 1213 1219 1221 1222 1223 1311 1321 
##    4   10   34    4   45    7   34    5    4    1    6   45    1    1    7    5 
## 1322 1323 1324 1330 1341 1342 1343 1344 1345 1346 1349 1411 1412 1420 1431 1439 
##    1   14   12    5    1    8    2    1   76   15    6    5   24   68    1   14 
## 2111 2112 2113 2114 2120 2131 2132 2133 2141 2142 2143 2144 2145 2146 2149 2151 
##    1    3    1    6    1   38   20    5   17   33    4    4    6    2    3    8 
## 2152 2153 2161 2163 2164 2165 2166 2211 2212 2221 2240 2250 2261 2262 2263 2265 
##    5    2   80    9    1   10   21  121  110    3    2   19   58   30    6    3 
## 2266 2269 2310 2320 2330 2341 2342 2351 2352 2353 2354 2355 2356 2359 2411 2412 
##    5    9  164   39  426  487  177   20   50   24   27   34    4   83  189   14 
## 2413 2421 2422 2423 2424 2431 2432 2433 2434 2511 2512 2513 2514 2519 2521 2522 
##    2    5   19   51   11    8    3    7    1   33   20   22    9    2    4    8 
## 2523 2529 2611 2612 2619 2622 2631 2632 2633 2634 2635 2636 2641 2642 2643 2651 
##    9    2  242   10    1    3   11    2    1   86   26   12    3   54    5    5 
## 2652 2653 2654 2655 2656 2659 3111 3112 3113 3114 3115 3116 3117 3118 3119 3121 
##   21    2    6    8   17    3   13   29   12   25    6    3    7    8    4   23 
## 3122 3123 3131 3132 3133 3134 3135 3139 3141 3142 3143 3152 3153 3154 3155 3211 
##   71   92   21   14    3   14    1   18    6    2    1    4    2    3    3   40 
## 3212 3213 3214 3221 3222 3240 3251 3252 3253 3254 3255 3256 3257 3258 3259 3311 
##   37   10   16  257    2    2    6    4    3    6   52   11   54    3    1   15 
## 3312 3313 3314 3315 3321 3322 3323 3324 3331 3332 3333 3334 3339 3341 3342 3343 
##   34   77    8    6   47   72   14   66    9   17    5   40   47  109   32   91 
## 3344 3351 3352 3353 3354 3355 3359 3411 3412 3413 3421 3422 3423 3431 3432 3434 
##   27    1    9    3   10    9    9   36   55    5    7   34  104   23   11   17 
## 3435 3511 3512 3513 3514 3521 3522 4110 4120 4131 4132 4211 4212 4214 4221 4222 
##   33   23   13   19    9   30    8 1830  226    5   24   21   59   29   27   81 
## 4223 4224 4225 4226 4227 4229 4311 4312 4313 4321 4322 4323 4411 4412 4413 4415 
##   38   25   29   64    9    4  289    9   18  119   17   35   26   70    1    3 
## 4416 4419 5111 5112 5113 5120 5131 5132 5141 5142 5151 5152 5153 5161 5162 5163 
##    6   20    1    3   15  301  146   36  155   42    7    4   52    2    5    6 
## 5164 5165 5169 5211 5212 5221 5222 5223 5230 5241 5242 5243 5244 5245 5246 5249 
##   23    1    6   69   33 1122   93 1229  230    2    7  241   41   47   36    8 
## 5311 5312 5321 5322 5329 5411 5412 5413 5414 5419 6111 6112 6113 6114 6121 6122 
##  265  106   62  147   57   10  413   42  344   42    9    6   10   11   27    3 
## 6123 6130 6210 6222 6223 7111 7112 7113 7114 7115 7119 7121 7122 7123 7125 7126 
##    2    5    6    5    6    5 1240    3    4   58    3   10    8   11   11  163 
## 7127 7131 7132 7211 7212 7213 7214 7215 7221 7222 7223 7224 7231 7232 7233 7234 
##   39  177   31    2  126   74   17    2  108   23   34    3  318   14  141   14 
## 7311 7312 7313 7314 7315 7316 7317 7318 7319 7321 7322 7323 7411 7412 7413 7421 
##    3    3    4   10    5    9   22   63   25   19   52   13  185   73   44   28 
## 7422 7511 7512 7513 7514 7515 7516 7521 7522 7523 7531 7532 7533 7534 7535 7536 
##  111   54  115    7    1    9    1    4   74    3   73   10   63   27    1   40 
## 7542 7543 7544 7549 8111 8112 8113 8114 8121 8122 8131 8132 8141 8142 8143 8151 
##    2   34    9    9    3    3   37   12   44   14   17    2   28   35   13   21 
## 8152 8153 8154 8155 8156 8157 8159 8160 8172 8181 8182 8183 8189 8211 8212 8219 
##   12   73    5    2   18   23   24  102   30   19    2   53    5   28   88   18 
## 8311 8312 8321 8322 8331 8332 8341 8342 8343 8344 8350 9111 9112 9121 9122 9123 
##   10    9   49  758  179  242   18   25   24   58    6 1361  763   11   75    1 
## 9129 9211 9212 9213 9214 9215 9311 9312 9313 9321 9329 9331 9333 9334 9411 9412 
##    2   28   14    1  190    3    6   13  561   61   47    5  158  146   36  138 
## 9510 9520 9611 9612 9613 9621 9622 9623 9624 9629 9999 
##    8  113   45   41  108   32  123    7    1   21   41
```

A través del paquete __```modest```__ y el comando ```mfv``` (most frequent value) calcularemos la moda de dichas variables, es decir, la ocupación más repetida en el relevamiento.  


```
## [1] 4110
## 411 Levels: 0110 0210 0310 1111 1112 1114 1120 1211 1212 1213 1219 1221 ... 9999
```

El código 4110 designa a los **oficinistas generales**

### Rama de actividad  

Al igual que para el caso de la ocupación, la rama de actividad es computada tanto para la población ocupada como la desocupada. En los relevamientos previos a 2011 y posteriores a 2016, en el primer caso acudimos a la variable *PP04B_COD* mientras que en el segundo a la *PP11B_COD*. Para los relevamiento entre 2011 y 2015, dichas variables fueron nombradas sin el sufijo *_COD* y con el sufijo *_CAES*. 

Echamos un vistazo a la distribución de la población ocupada según la rama de actividad.


```
## 
##        0101  0102  0103  0104  0200  0300  0600  0700  0800  0900  1001  1002 
## 35630   101    43    35     1     6    15    48     4    26   100   116    43 
##  1003  1009  1100  1200  1300  1400  1501  1502  1600  1700  1800    19  1902 
##    37   383    53     5   120   156    13    57    41    31    67     3     8 
##    20  2001  2002  2009  2100  2201  2202  2301  2309  2400  2500  2601  2602 
##    24     6    30     5   101    33    62    14    63    26   406    18     7 
##  2603  2604  2701  2709  2800  2900  3001  3003  3009  3100  3200  3300  3501 
##    24    26    34    32    94    68     8     2    22   179   110   104   101 
##  3502  3600  3800  3900  4000  4501  4502  4503  4504    48  4801  4802  4803 
##    19    53   113     3  2575   100   398    74    48   126    21    35   777 
##  4804  4805  4806  4807  4808  4809  4810  4811    49  4901  4902  4903  4904 
##   427   168    80   651   827    41   416    28    15    36     1   582   302 
##  4909  5000  5100  5201  5202  5300  5500  5601  5602  5800  5900  6000  6100 
##    36    14    15    34   168   114   102   669    42    37    23    54   158 
##  6200  6300  6400  6500  6600  6800  6900  7000  7100  7200  7301  7302  7400 
##    95     7   219   179    12    55   371    60   136    36    40    11    91 
##  7500  7701  7702  7800  7900  8000  8101  8102  8200  8401  8402  8403  8501 
##    29    16     9    12    44   220   143   131   115  2094   990    76  1944 
##  8509  8600  8700  8800  9000  9100  9200  9301  9302  9401  9402  9409  9501 
##   229  1243    65    24    29    26   105   169    61    26    34   321    49 
##  9502  9503  9601  9602  9603  9609  9700     Z 
##     9   168    18   214    25    62  1780   113
```

Del mismo modo que con la ocupación, el paquete __```eph```__ mediante la función ```organize_CAES``` nos agrega 8 columnas a la base en donde se clasifican distintas cuestiones: versión de la CAES, código de sección y división, etiqueta de sección y división y clasificación de ramas de actividad agregadas. A continuación revisamos dicho comando y solicitaremos las frecuencias de las ramas agregadas.


```
## 
##                               Actividades primarias 
##                                                 379 
##                             Industria manufacturera 
##                                                2631 
##                                        Construccion 
##                                                2575 
##                                            Comercio 
##                                                4217 
##                              Hoteles y restaurantes 
##                                                 813 
##         Transporte, almacenamiento y comunicaciones 
##                                                1691 
##  Servicios financieros, de alquiler y empresariales 
##                                                1929 
##  Administracion publica, defensa y seguridad social 
##                                                3084 
##                                           Ensenanza 
##                                                2173 
##                       Servicios sociales y de salud 
##                                                1332 
##                                  Servicio domestico 
##                                                1780 
## Otros servicios comunitarios, sociales y personales 
##                                                1316 
##                                         Otras ramas 
##                                                 169 
##                   Actividades no bien especificadas 
##                                                 120
```

### Categoría de ocupación  

La categoría de ocupación es una variable que también es de vital importancia en la construcción de clasificaciones. La misma puede encontrarse bajo el nombre de *CAT_OCUP*. A continuación exploramos sus categorías:


```
## 
##                                    0                               Patron 
##                                34530                                  969 
##                        Cuenta propia                    Obrero o empleado 
##                                 4772                                19597 
## Trabajador familiar sin remuneracion 
##                                  160
```

### Sector de actividad  

En la **EPH** el sector de actividad puede encontrarse en la variable *PP04A*.


```
## 
##               0      ...estatal      ...privada ...de otro tipo        Ns./Nr.. 
##           35630            5517           18492             373              16
```

### Tamaño del establecimiento  

La medición del tamaño del establecimiento se encuentra distribuida en dos variables: *PP04C* y *PP04C99*. La primera permite captar en forma detallada el tamaño del establecimiento donde trabaja la persona en diferentes rangos, mientras que la segunda permite recuperar, mediante una clasificación más acotada, aquel dato que en la primera variable figuraba como "Ns/Nc". A continuación exploramos ambas variables en forma cruzada.


```
##                        
##                             0 hasta 5 de 6 a 40 mas de 40 Ns./Nr..
##   0                     37370       0         0         0        0
##   1 persona              3565       0         0         0        0
##   2 personas             2123       0         0         0        0
##   3 personas             1241       0         0         0        0
##   4 personas              816       0         0         0        0
##   5 personas              752       0         0         0        0
##   6 a 10 personas        1876       0         0         0        0
##   11 a 25 personas       1783       0         0         0        0
##   26 a 40 personas       1567       0         0         0        0
##   de 41 a 100 personas   2035       0         0         0        0
##   de 101 a 200 personas  1386       0         0         0        0
##   de 201 a 500 personas  1204       0         0         0        0
##   mas de 500 personas    1304       0         0         0        0
##   Ns./Nr.                   0     125       610       919     1352
```

Al igual que en el caso de la ocupación y la rama de actividad, para aquellas personas desocupadas que han trabajado alguna vez en el pasado, el tamaño del establecimiento puede ser identificado en las variables *PP11C* y *PP11C99*.

### Supervisión 

Si bien la supervisión no es una variable medida directamente en la **EPH**, podemos aproximarnos a dicha noción a través del **CNO**. En su tercer dígito mide la jerarquía ocupacional. Sin embargo, para extraer dicha información es necesario "partir" el código ocupacional, reteniendo el tercer dígito. A través de __```R```__, realizaremos la operación utilizando la función ```str_sub``` del paquete __```stringr```__, indicando que dígitos queremos retener. En este caso debemos señalar que queremos retener únicamente el tercer dígito (que empiece en el 3 y termine en el 3) y se lo asignaremos a una nueva variable llamada "cno_jerarquia".


```
## [1] 619
```
Conociendo que el código 2 es el que hace referencia a la jefatura, si filtramos los resultados podemos decir que existen 619 casos que supervisan las tareas de otras personas.  



<!--chapter:end:caps/04U.Rmd-->

