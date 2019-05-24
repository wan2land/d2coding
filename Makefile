
d2coding_src = src/d2coding
d2coding_bold_src = src/d2coding-bold
d2coding_ligature_src = src/d2coding-ligature
d2coding_ligature_bold_src = src/d2coding-ligature-bold

clear:
	rm -rf fonts
	mkdir fonts
	find . -name "*.ttx" -type f -delete
	find . -name "*-subset.ttf" -type f -delete

build:
	# Normal Regular
	cp $(d2coding_src).ttf fonts/d2coding-full.ttf
	ttx $(d2coding_src).ttf
	ttx -o fonts/d2coding-full.woff  --flavor=woff  --with-zopfli $(d2coding_src).ttx
	ttx -o fonts/d2coding-full.woff2 --flavor=woff2               $(d2coding_src).ttx

	pyftsubset $(d2coding_src).ttf \
		--output-file=$(d2coding_src)-subset.ttf \
		--text-file=glyphs.txt \
		--layout-features='*' \
		--glyph-names \
		--symbol-cmap \
		--legacy-cmap \
		--notdef-glyph \
		--notdef-outline \
		--recommended-glyphs \
		--name-legacy \
		--drop-tables= \
		--name-IDs='*' \
		--name-languages='*'

	ttx $(d2coding_src)-subset.ttf
	ttx -o fonts/d2coding-subset.ttf                                $(d2coding_src)-subset.ttx
	ttx -o fonts/d2coding-subset.woff  --flavor=woff  --with-zopfli $(d2coding_src)-subset.ttx
	ttx -o fonts/d2coding-subset.woff2 --flavor=woff2               $(d2coding_src)-subset.ttx

	# Normal Bold
	cp $(d2coding_bold_src).ttf fonts/d2coding-bold-full.ttf
	ttx $(d2coding_bold_src).ttf
	ttx -o fonts/d2coding-bold-full.woff  --flavor=woff  --with-zopfli $(d2coding_bold_src).ttx
	ttx -o fonts/d2coding-bold-full.woff2 --flavor=woff2               $(d2coding_bold_src).ttx

	pyftsubset $(d2coding_bold_src).ttf \
		--output-file=$(d2coding_bold_src)-subset.ttf \
		--text-file=glyphs.txt \
		--layout-features='*' \
		--glyph-names \
		--symbol-cmap \
		--legacy-cmap \
		--notdef-glyph \
		--notdef-outline \
		--recommended-glyphs \
		--name-legacy \
		--drop-tables= \
		--name-IDs='*' \
		--name-languages='*'

	ttx $(d2coding_bold_src)-subset.ttf
	ttx -o fonts/d2coding-bold-subset.ttf                                $(d2coding_bold_src)-subset.ttx
	ttx -o fonts/d2coding-bold-subset.woff  --flavor=woff  --with-zopfli $(d2coding_bold_src)-subset.ttx
	ttx -o fonts/d2coding-bold-subset.woff2 --flavor=woff2               $(d2coding_bold_src)-subset.ttx

	# Ligature Regular
	cp $(d2coding_ligature_src).ttf fonts/d2coding-ligature-full.ttf
	ttx $(d2coding_ligature_src).ttf
	ttx -o fonts/d2coding-ligature-full.woff  --flavor=woff  --with-zopfli $(d2coding_ligature_src).ttx
	ttx -o fonts/d2coding-ligature-full.woff2 --flavor=woff2               $(d2coding_ligature_src).ttx

	pyftsubset $(d2coding_ligature_src).ttf \
		--output-file=$(d2coding_ligature_src)-subset.ttf \
		--text-file=glyphs.txt \
		--layout-features='*' \
		--glyph-names \
		--symbol-cmap \
		--legacy-cmap \
		--notdef-glyph \
		--notdef-outline \
		--recommended-glyphs \
		--name-legacy \
		--drop-tables= \
		--name-IDs='*' \
		--name-languages='*'

	ttx $(d2coding_ligature_src)-subset.ttf
	ttx -o fonts/d2coding-ligature-subset.ttf                                $(d2coding_ligature_src)-subset.ttx
	ttx -o fonts/d2coding-ligature-subset.woff  --flavor=woff  --with-zopfli $(d2coding_ligature_src)-subset.ttx
	ttx -o fonts/d2coding-ligature-subset.woff2 --flavor=woff2               $(d2coding_ligature_src)-subset.ttx

	# Ligature Bold
	cp $(d2coding_ligature_bold_src).ttf fonts/d2coding-ligature-bold-full.ttf
	ttx $(d2coding_ligature_bold_src).ttf
	ttx -o fonts/d2coding-ligature-bold-full.woff  --flavor=woff  --with-zopfli $(d2coding_ligature_bold_src).ttx
	ttx -o fonts/d2coding-ligature-bold-full.woff2 --flavor=woff2               $(d2coding_ligature_bold_src).ttx

	pyftsubset $(d2coding_ligature_bold_src).ttf \
		--output-file=$(d2coding_ligature_bold_src)-subset.ttf \
		--text-file=glyphs.txt \
		--layout-features='*' \
		--glyph-names \
		--symbol-cmap \
		--legacy-cmap \
		--notdef-glyph \
		--notdef-outline \
		--recommended-glyphs \
		--name-legacy \
		--drop-tables= \
		--name-IDs='*' \
		--name-languages='*'

	ttx $(d2coding_ligature_bold_src)-subset.ttf
	ttx -o fonts/d2coding-ligature-bold-subset.ttf                                $(d2coding_ligature_bold_src)-subset.ttx
	ttx -o fonts/d2coding-ligature-bold-subset.woff  --flavor=woff  --with-zopfli $(d2coding_ligature_bold_src)-subset.ttx
	ttx -o fonts/d2coding-ligature-bold-subset.woff2 --flavor=woff2               $(d2coding_ligature_bold_src)-subset.ttx
