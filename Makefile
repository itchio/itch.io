PHONY: pulldocs pushdocs

pulldocs: # get docs from itch repo
	rm -r docs/
	rsync -v -a --include '*/' --include '*.md' --exclude '*' --exclude 'WARNING.md' ${ITCHIO_DIR}/static/docs/ docs/

pushdocs:
	rsync -v -a --include '*/' --include '*.md' --exclude '*' docs/ ${ITCHIO_DIR}/static/docs/