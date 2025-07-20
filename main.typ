#import "@preview/starter-journal-article:0.4.0": article, author-meta

#show heading: it => pad(left: 1em * it.level - 1em, it)

#show: article.with(
  title: "Space hardware for plant samples",
  authors: (
    "Silas Butler": author-meta(
      "P4S",
      email: "silasbutler@gmail.com",
    ),
  ),
  affiliations: (
    "P4S": "ARC Centres of Excellence in Plants for Space and Plant Energy Biology" ,
  ),
  abstract: [This document aims to study previous and upcoming space missions that involved biological samples, to understand the hardware, procedures and aspects needed for such a mission. Additionally this document serves as a technical bridge and will try to break down some of the engineering aspects for other disciplines, as well as recommend feasibility of a similar project.],
  //keywords: ("Typst", "Template", "Journal Article")
)

#pagebreak()

#outline()

#pagebreak()

= Mission idea

To test the specimen in a space environment, Plants for Space wishes to transport a sample and test equipment into a microgravity environment. To do this supporting hardware will be needed (covered later in this document). The sample is expected to be a genetically modified piece of moss (#highlight[get exact species]) that is to express a designed response to a specified stimuli. These are yet to be decided but some early ideas for stimuli (Temperature change) and response (Colour change, growth response, chemical production). The exact mechanisms will need to be simple, lightweight and ideally using existing hardware.

The method of transport for the mission is also yet to be decided, with the options being between a small-sat or mission being hosted aboard the ISS. Ideally the hardware design is mission agnostic, as both options face similar constraints, mainly independence/automation (satellite cant be interacted with once launched and very high labor cost upon the ISS), however ISS may have easier constraints for atmosphere.

= Previous missions
This list is not exhaustive and will mostly focus on plant based biological samples, but bacteria and bioscience experiments will be listed for completeness. 

== BioSentinel 2022
6U CubeSat that explored the effects of deep space radiation on yeast cells. Sat was launched aboard Artemis-1, and ventured into orbit beyond the moon. Yeast cells failed to grow, which the team determined was a result of extended storage pre-mission. @Tabor_2024, @BioSentinel

== GeneSat-1 2006
GeneSat-1 was Ames' NASA's first fully automated, self contained biological experiment on a satellite of its size. It tested for gene expression in microscopic organisms using Green Fluorescent Protein. @Kramer_2012

== PharmaSat 2009
PharmaSat built upon the technology of GeneSat-1, reusing many of the microfluidics and optic systems to test yeast resistance to antifungal agents. 

== O/OREAOS 2010
O/OREAOS (Organism/Organic Exposure to Orbital Stresses) was the third small satellite developed by Ames following GeneSat-1 and PharmaSat, designed to measure how well microorganisms adapt and react to the stresses of space, and the stability of organic molecules in space.

== SporeSat

https://www.eoportal.org/satellite-missions/sporesat#spacecraft

== EcAMSat

== AstroBio CubeSat (ABCS)

== ISS
VEGGIE-1, 2 & 3. APH (Advanced Plant Habitat)

== EuCROPIS

== Chang'e 4 "biosphere"

== SpaceMoss
https://2015.igem.org/Team:UNIK_Copenhagen/Description

== ARTEMOSS

#pagebreak()

= Outline of hardware

== Temperature control



=== Heating

=== Cooling?

== Atmospheric control

== Vibration

== Sensing

=== Imaging

=== Lab on a chip? or other chemical detection

=== Additional sensing capabilities?

Things like radiation sensors, plant health (if this can be measured), atmospheric sensing

= How this mission could be achieved

== Satellite (cube or share on larger sat)

== ISS experiment 


#bibliography("./ref.bib")
