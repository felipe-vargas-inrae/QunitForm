# QUnitForm: <i>Automatic Unit Conversions of Quantity Values Employed Within Mathematical Formulas</i>

## Description
QUnitForm is an extension of QAVAN that incorporates new mechanisms for manipulating quantity values. Specifically, we leverage the Advanced Features of the W3C recommended SHACL and the metadata furnished by the unit ontology QUDT. 

## Input parameters
QUnitForm program takes as inputs:

* --conf: A valid JSON with the execution information details below
* --unzip: A flag to indicate that the inference should be decompressed, compression is useful for big datasets 

### The config JSON file should contain the following values:
```javascript
{
  "experimentName": "Dependency ANRs Cities",
  "rootPath": "/home/",
  "graphPath": "my_graph.ttl",
  "shapePath": "my_shape.ttl",
  "queryPath" : "my_query.sparql",
  "outInferencePath" :"inference_graph.ttl",
  "outReportPath": "report.ttl",
  "outResultSet" : "results_set.csv",
  "outShape" : "rewrite_shape.ttl",
  "method" : options=["VIRTUAL"]
}
```
## Local Settings
Before running, please replace the "rootPath":"<my-path>" in the local configurations  ./conf/local/. Addionally, unzip files in ./data.

## Running QUnitForm in the command line
```
java  -jar QunitForm-1.0.jar --config "myconf.json" --unzip
```
## Outputs 
QUnitForm provides three outputs:
* an inference graph in format RDF Turtle
* query results in tabular CSV format
* a report containing the execution time and the sizes of the inputs along with further details.

## Experiments
For the experiments we use samplings from  MeteoFrance:
* [MeteoFrance](https://www.wikidata.org/)  

This repository contains two folders: 

* the data preparation procedure in a zip file
* vpd_experiment folder with the experiment inputs and outputs


## Used technologies
* Apache Jena version 4.3.2
* SHACL-API version 1.4.2
* QUDT Ontology


