### Szewczyk, TM, MJ Ducey, VJ Pasquarella, JM Allen. 2021. Extending coverage and thematic resolution of compositional land cover maps in a hierarchical Bayesian framework. *Ecological Applications*. 

------

[Manuscript DOI](https://doi.org/10.1002/eap.2318)  
[![DOI](https://zenodo.org/badge/344782621.svg)](https://zenodo.org/badge/latestdoi/344782621)



------

This manuscript describes a hierarchical Bayesian approach to capitalize on the strengths of thematic land cover datasets. Widely used national or continental datasets (e.g., [NLCD](https://www.usgs.gov/centers/eros/science/national-land-cover-database?qt-science_center_objects=0#qt-science_center_objects) in the US or [CORINE](https://land.copernicus.eu/pan-european/corine-land-cover) in Europe) offer broad spatial coverage with a general but consistent legend. Many more thematically precise datasets are available for smaller geographic regions (e.g., [GRANIT](https://daac.ornl.gov/cgi-bin/dsviewer.pl?ds_id=1305) in the US state of New Hampshire), which often have higher accuracy and ecologically relevant land cover types that are not specified in general datasets. Unfortunately, usage of these maps is limited to their extents, which often do not align with the focal extent of the research.  

To use the model described here, the two land cover datasets are first converted to compositional data by overlaying a grid with the desired resolution, and calculating the proportional coverage of each land cover category within each grid cell (general, broad extent dataset: **Z**; precise, local dataset: **Y**). Then, the discrepancy between **Y** and **Z** is modelled, including the ability to partition a general category from **Z** (e.g., *Evergreen Forest*) into two more precise categories (*White Pine Forest* and *Other Evergreen Forest*) that are identified in **Y**. From these fitted relationships, the model can then predict the land cover composition beyond the borders of **Y** with improved accuracy. 

![Fig. 1](figs/Fig1_modStructure.png)


