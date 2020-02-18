---
theme : "league"
transition: "slide"
highlightTheme: "monokai"
slideNumber: true
title: "Microprofile + Quarkus; new Java player"
---
# Eclipse MicroProfile

--

## History

---

* Java EE 6 (2009)
  * Sun purchased  by Oracle (2010) {.fragment .fade-right}

* Java EE 7 (2013) {.fragment .fade-right}
  * AWS (2013) {.fragment .fade-right}
  * NodeJS (2013) {.fragment .fade-right}
  * Golang (2014) {.fragment .fade-right}
* Java EE 8 (2017) {.fragment .fade-right}
* Jakarta EE 8 ( 2019) {.fragment .fade-right}

---

* a reaction to the slow pace of Java EE development. 
  * 2016 Creation {.fragment .fade-right}
  * 2017 Eclipse foundation {.fragment .fade-right}
* new usages: {.fragment .fade-right}
  * microservice {.fragment .fade-right}
  * cloud native {.fragment .fade-right}
* an open-source community specification for Enterprise Java microservices {.fragment .fade-right}

<aside class="notes">
Java language plus populaire 
L'index TIOBE mesure la popularité des langages de programmation en se basant sur le nombre de pages web retournées par les principaux moteurs de recherche lorsqu'on leur soumet le nom du langage de programmation
Compétence présente, évolution JEE
</aside>

---

![](./img/community.png)

---

![](./img/implementation.png)

---

* 12x the pace of traditional Java EE

* with less risk and smaller feature sets, developers can adopt new innovations more quickly {.fragment .fade-right}

--

## Eclipse Microprofile 3.2 

---

![](./img/microprofile.png)


* Released: 11/4/19 {.fragment .fade-right}
  * 3.1 -> 10/8/19 {.fragment .fade-right}
  * 2.0 -> 6/20/18 {.fragment .fade-right}


<aside class="notes">
3.3 2/2020
reactive in progress
</aside>

---

![](./img/microprofile32.png) {.fragment .fade-right}


<aside class="notes">
Open tracing & Metrics & health: télémétrie des applications
OpenAPI: description des API
Rest Client: Client Rest
Config: hot reload configuration
Fault tolerance: tolérance à la panne
JWT propagation: OIDC
CDI: injection
JSON-P: Java API to process JSON
JAX-RS: Java API for rest
JSON-B: Binding from JSON to Object
</aside>

--

## 

![](./img/quarkus.png)


--

### Microprofile implementation

---

Code: demo.cmd

---

### Overview

---

![](./img/quarkus_how_to.png)

---

### Performance

![](./img/quarkus_perf.png)

---

Compare : compare.cmd

--

## Conclusion

---

![](./img/question-mark-1872665_1280.jpg)

---

![](./img/thank-you-2490552_1280.png)
