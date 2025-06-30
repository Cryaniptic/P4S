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

= Mission idea

== Who is plants for space?

== Proposed mission



= Previous missions

== BioSentinel

== AstroBio CubeSat (ABCS)



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
