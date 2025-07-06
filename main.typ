#import "@preview/starter-journal-article:0.4.0": article, author-meta

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

== Who is plants for space?

Plants for Space is currently experimenting with genetically engineered moss that can have a programmed response to a stimulus. Applications of this technology could be extended to on demand production of medicine on a long duration space mission, reactive/adaptive food production and so on.

== Proposed mission

To test the specimen in a space environment, Plants for Space wishes to transport a sample and test equipment into a microgravity environment. To do this supporting hardware will be needed (covered later in this document).


= Previous missions
This list is not exhaustive and will mostly focus on plant based biological samples, but bacteria and bioscience experiments will be listed for completeness. 

== BioSentinel
https://www.liebertpub.com/doi/10.1089/ast.2019.2068 \

== GeneSat-1

== PharmaSat

== O/OREAOS

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
