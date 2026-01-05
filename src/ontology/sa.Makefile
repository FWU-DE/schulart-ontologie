## Customize Makefile settings for sf
## 
## If you need to customize your Makefile, make
## changes here rather than in the main Makefile

## Module for ontology: lp (slme)
$(IMPORTDIR)/lp_import.owl: $(MIRRORDIR)/lp.owl $(IMPORTDIR)/lp_terms.txt 
	$(ROBOT) annotate --input $< --remove-annotations \
		 extract --term https://w3id.org/lehrplan/ontology/LP_0000028 \
		         --individuals include \
		         --method TOP \
		 $(ANNOTATE_CONVERT_FILE)


## Module for ontology: lp (slme)
$(IMPORTDIR)/lp_import.owl: $(MIRRORDIR)/lp.owl $(IMPORTDIR)/lp_terms.txt 
	$(ROBOT) annotate --input $< --remove-annotations \
		 filter --term-file $(IMPORTDIR)/lp_terms.txt --select "annotations self descendants instances" \
		 $(ANNOTATE_CONVERT_FILE)



$(TEMPLATEDIR)/schools-by.tsv:
	curl -L 'https://docs.google.com/spreadsheets/d/e/2PACX-1vRAmvDQwUPrrJmV0ZPs1o3r1Y8-oGeg1BN6t1QI6jOt5SNwI6JeExPhEjVZKacEpU3T5mfmGkOzy1jK/pub?gid=1650814864&single=true&output=tsv' -o $@

$(TEMPLATEDIR)/schools-be.tsv:
	curl -L 'https://docs.google.com/spreadsheets/d/e/2PACX-1vRAmvDQwUPrrJmV0ZPs1o3r1Y8-oGeg1BN6t1QI6jOt5SNwI6JeExPhEjVZKacEpU3T5mfmGkOzy1jK/pub?gid=1745023318&single=true&output=tsv' -o $@

$(TEMPLATEDIR)/schools-bb.tsv:
	curl -L 'https://docs.google.com/spreadsheets/d/e/2PACX-1vRAmvDQwUPrrJmV0ZPs1o3r1Y8-oGeg1BN6t1QI6jOt5SNwI6JeExPhEjVZKacEpU3T5mfmGkOzy1jK/pub?gid=1163712617&single=true&output=tsv' -o $@

$(TEMPLATEDIR)/schools-bw.tsv:
	curl -L 'https://docs.google.com/spreadsheets/d/e/2PACX-1vRAmvDQwUPrrJmV0ZPs1o3r1Y8-oGeg1BN6t1QI6jOt5SNwI6JeExPhEjVZKacEpU3T5mfmGkOzy1jK/pub?gid=1441031664&single=true&output=tsv' -o $@

$(TEMPLATEDIR)/schools-hb.tsv:
	curl -L 'https://docs.google.com/spreadsheets/d/e/2PACX-1vRAmvDQwUPrrJmV0ZPs1o3r1Y8-oGeg1BN6t1QI6jOt5SNwI6JeExPhEjVZKacEpU3T5mfmGkOzy1jK/pub?gid=843767765&single=true&output=tsv' -o $@

$(TEMPLATEDIR)/schools-he.tsv:
	curl -L 'https://docs.google.com/spreadsheets/d/e/2PACX-1vRAmvDQwUPrrJmV0ZPs1o3r1Y8-oGeg1BN6t1QI6jOt5SNwI6JeExPhEjVZKacEpU3T5mfmGkOzy1jK/pub?gid=578247681&single=true&output=tsv' -o $@

$(TEMPLATEDIR)/schools-hh.tsv:
	curl -L 'https://docs.google.com/spreadsheets/d/e/2PACX-1vRAmvDQwUPrrJmV0ZPs1o3r1Y8-oGeg1BN6t1QI6jOt5SNwI6JeExPhEjVZKacEpU3T5mfmGkOzy1jK/pub?gid=838561077&single=true&output=tsv' -o $@

$(TEMPLATEDIR)/schools-mv.tsv:
	curl -L 'https://docs.google.com/spreadsheets/d/e/2PACX-1vRAmvDQwUPrrJmV0ZPs1o3r1Y8-oGeg1BN6t1QI6jOt5SNwI6JeExPhEjVZKacEpU3T5mfmGkOzy1jK/pub?gid=884653074&single=true&output=tsv' -o $@

$(TEMPLATEDIR)/schools-ni.tsv:
	curl -L 'https://docs.google.com/spreadsheets/d/e/2PACX-1vRAmvDQwUPrrJmV0ZPs1o3r1Y8-oGeg1BN6t1QI6jOt5SNwI6JeExPhEjVZKacEpU3T5mfmGkOzy1jK/pub?gid=1321930817&single=true&output=tsv' -o $@

$(TEMPLATEDIR)/schools-nw.tsv:
	curl -L 'https://docs.google.com/spreadsheets/d/e/2PACX-1vRAmvDQwUPrrJmV0ZPs1o3r1Y8-oGeg1BN6t1QI6jOt5SNwI6JeExPhEjVZKacEpU3T5mfmGkOzy1jK/pub?gid=1602883373&single=true&output=tsv' -o $@

$(TEMPLATEDIR)/schools-rp.tsv:
	curl -L 'https://docs.google.com/spreadsheets/d/e/2PACX-1vRAmvDQwUPrrJmV0ZPs1o3r1Y8-oGeg1BN6t1QI6jOt5SNwI6JeExPhEjVZKacEpU3T5mfmGkOzy1jK/pub?gid=1542513111&single=true&output=tsv' -o $@

$(TEMPLATEDIR)/schools-sl.tsv:
	curl -L 'https://docs.google.com/spreadsheets/d/e/2PACX-1vRAmvDQwUPrrJmV0ZPs1o3r1Y8-oGeg1BN6t1QI6jOt5SNwI6JeExPhEjVZKacEpU3T5mfmGkOzy1jK/pub?gid=482458801&single=true&output=tsv' -o $@

$(TEMPLATEDIR)/schools-sn.tsv:
	curl -L 'https://docs.google.com/spreadsheets/d/e/2PACX-1vRAmvDQwUPrrJmV0ZPs1o3r1Y8-oGeg1BN6t1QI6jOt5SNwI6JeExPhEjVZKacEpU3T5mfmGkOzy1jK/pub?gid=1470462618&single=true&output=tsv' -o $@

$(TEMPLATEDIR)/schools-st.tsv:
	curl -L 'https://docs.google.com/spreadsheets/d/e/2PACX-1vRAmvDQwUPrrJmV0ZPs1o3r1Y8-oGeg1BN6t1QI6jOt5SNwI6JeExPhEjVZKacEpU3T5mfmGkOzy1jK/pub?gid=678928498&single=true&output=tsv' -o $@

$(TEMPLATEDIR)/schools-sh.tsv:
	curl -L 'https://docs.google.com/spreadsheets/d/e/2PACX-1vRAmvDQwUPrrJmV0ZPs1o3r1Y8-oGeg1BN6t1QI6jOt5SNwI6JeExPhEjVZKacEpU3T5mfmGkOzy1jK/pub?gid=1119062221&single=true&output=tsv' -o $@

$(TEMPLATEDIR)/schools-th.tsv:
	curl -L 'https://docs.google.com/spreadsheets/d/e/2PACX-1vRAmvDQwUPrrJmV0ZPs1o3r1Y8-oGeg1BN6t1QI6jOt5SNwI6JeExPhEjVZKacEpU3T5mfmGkOzy1jK/pub?gid=536316774&single=true&output=tsv' -o $@


$(IMPORTDIR)/kim_import.owl: 
	echo "update KIM manually if needed (see imports directory)"


skos-%.ttl: 
	$(ROBOT) remove --input sa-edit.owl  --select imports --trim false merge --input components/schools-$*.owl --output $(TMPDIR)/schools-$*.ttl  
	echo "<https://w3id.org/schulfach/$(shell echo $* | tr  '[:lower:]' '[:upper:]')_0000000> <http://purl.org/dc/terms/created> \"2025-10-21\" ."  >> $(TMPDIR)/schools-$*.ttl 
	$(ROBOT) merge --input $(TMPDIR)/schools-$*.ttl query --update ../sparql/skos1.sparql query --query ../sparql/skos2.sparql $@



CITATION="'Types of German Schools Ontology. Version $(VERSION), https://w3id.org/schulart/'"

ALL_ANNOTATIONS=--annotate-defined-by false \
	--ontology-iri https://w3id.org/schulfach/ -V https://w3id.org/schulart/$(VERSION) \
	--annotation http://purl.org/dc/terms/created "$(TODAY)" \
	--annotation http://purl.org/dc/terms/bibliographicCitation "$(CITATION)"  \
#	--link-annotation owl:priorVersion https://w3id.org/schulart/$(PRIOR_VERSION) \

update-ontology-annotations: 
	$(ROBOT) annotate --input ../../sa.owl $(ALL_ANNOTATIONS) --output ../../sa.owl && \
	$(ROBOT) annotate --input ../../sa.ttl $(ALL_ANNOTATIONS) --output ../../sa.ttl && \
	$(ROBOT) annotate --input ../../sa-full.owl $(ALL_ANNOTATIONS) --output ../../sa-full.owl && \
	$(ROBOT) annotate --input ../../sa-full.ttl $(ALL_ANNOTATIONS) --output ../../sa-full.ttl 




