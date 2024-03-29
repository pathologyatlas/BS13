







```
r language BS13, echo=FALSE, include=TRUE
source("./R/language.R")
output_type <- knitr::opts_knit$get("rmarkdown.pandoc.to")
```


```
asis lipopeliozis TR, echo = (language == "TR")
## BS13 - lipopeliozis {#sec-BS13 }
```


```
asis lipopeliosis EN, echo = (language == "EN")
## BS13 - lipopeliosis {#sec-BS13 }
```






```
r BS13 screenshot HE, eval=TRUE, include=FALSE
if (!file.exists("./screenshots/BS13-HE_screenshot.png")) {
webshot2::webshot(
  url = "https://images.patolojiatlasi.com/BS13/HE.html",
  file = "./screenshots/BS13-HE_screenshot.png"
)
}
```





::::: panel-tabset


### WSI - Link







```
asis, echo = (language == "TR")

**lipopeliozis**


[![Tam Ekran Görmek İçin Resmi Tıklayın](./screenshots/BS13-HE_screenshot.png){width="25%"}](https://images.patolojiatlasi.com/BS13/HE.html) [Tam Ekran Görmek İçin Resmi Tıklayın](https://images.patolojiatlasi.com/BS13/HE.html)
```

```
asis, echo = (language == "EN")

**lipopeliosis**

[![Click for Full Screen WSI](./screenshots/BS13-HE_screenshot.png){width="25%"}](https://images.patolojiatlasi.com/BS13/HE.html) [Click for Full Screen WSI](https://images.patolojiatlasi.com/BS13/HE.html)

```





### WSI








```
asis, echo = ((language=="TR") & (output_type=="html"))
Mikroskopik görüntüleri inceleyin:

<iframe src="https://images.patolojiatlasi.com/BS13/HE.html" style="height:600px;width:100%;" data-external="1"></iframe>

```





```
asis, echo = ((language == "EN") & (output_type=="html"))

See Microscopy with viewer:

<iframe src="https://images.patolojiatlasi.com/BS13/HE.html" style="height:600px;width:100%;" data-external="1"></iframe>

```





### Diagnosis


```
asis, echo = (language == "TR")


::: {.callout-tip collapse="true" appearance="default" icon="true"}
### Tanı için tıklayın

lipopeliozis

:::


```


```
asis, echo = (language == "EN")


::: {.callout-tip collapse="true" appearance="default" icon="true"}
### Click for Diagnosis

lipopeliosis

:::

```









:::::










