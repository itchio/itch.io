PHONY: pulldocs pushdocs

pulldocs: # get docs from itch repo
	rm -r docs/
	rsync -v -a --include '*/' --include '*.md' --exclude '*' ${ITCHIO_DIR}/static/docs/ docs/
	rm docs/WARNING.md

pushdocs:
	rsync -v -a --include '*/' --include '*.md' --exclude '*' docs/ ${ITCHIO_DIR}/static/docs/