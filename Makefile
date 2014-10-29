
DIRS=placeholders\
	 examples\
	 running_visualisation\
	 gmsh/gmsh_tutorial_presentation\
	 numerics\
	 diamond\
	 fluidity\
	 intro\
	 header

FILES=	./intro/intro.pdf\
	./IntroToFEM/IntroToFEMJRP.pdf\
	./DavidsFEMDaySlides.pdf \
	./numerics/numerics.pdf\
	./fluidity/fluidity.pdf\
	./diamond/set_up.pdf\
	./gmsh_tutorial_pres.pdf\
	./running_visualisation/running_visualisation.pdf\
	./placeholders/introtoexamples.pdf\
	./examples/examples_GFD.pdf\
	./examples/examples_CFD.pdf\


default:
	for dir in $(DIRS); do \
		cd $$dir; \
		echo "Making in $$dir"; \
		make; \
		cd ../;\
	done ;
	/usr/bin/pdftk $(FILES) cat output AMCG_Fluidity_Training_2013.pdf