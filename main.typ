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

To test the specimen in a space environment, Plants for Space wishes to transport a sample and test equipment into a microgravity environment. To do this supporting hardware will be needed (covered later in this document). The sample is expected to be a genetically modified piece of moss (Physcomitrella patens) that is to express a designed response to a specified stimuli. These are yet to be decided but some early ideas for stimuli (Temperature change) and response (Colour change, growth response, chemical production). The exact mechanisms will need to be simple, lightweight and ideally using existing hardware.

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

== EuCROPIS 2018
EuCROPIS aimed to study the feasibility of growing plants (specifically tomatoes) in a closed loop system (turning urine into fertilizer and then into food) under different gravity conditions (simulated lunar and martian gravity). The system contained an extensive sensing suite, having multiple cameras to record growth, chemical sensors to record plant related compounds (ammonium, nitrite, nitrate, pH, chloride, sodium and potassium), RAMIS (RAdiation Measurement In Space), humidity, temperature, and a mRNA Expression analysis system to analyse how the microgravity altered various gene expressions. @Hauslage_2018

== Chang'e 4 "biosphere"
Chang'e 4 was a lunar lander mission that deployed multiple payloads onto the far side of the moon. Among these payloads was a canister containing seeds for cotton, potato, rapeseed, Arabidopsis thaliana, as well as fruitfly larvae and yeast. The aim was that these organisms would act in synergy and produce/consume oxygen/CO2 for each other. The biosphere was a partial success, with sprouting recorded of the cotton, but a failure of the heating system meant it wasn't able to survive the lunar night. @Ye_2017


== SpaceMoss
https://2015.igem.org/Team:UNIK_Copenhagen/Description

== ARTEMOSS

#pagebreak()

= Outline of hardware

== Temperature control

Temperatures in a space environment are determined by a number of factors and can vary across a wide range, as well as change in a short time period. For a cubesat in LEO its period would be from 90 to 120 minutes, with it being in sunlight half the time and earth occlusion the other half. Mass of the satellite also plays a large role in thermal balance, as larger craft will take longer to heat up/cool down, and will therefor have a more stable temperature. Due to these large amount of factors it is difficult to claim certain temperature ranges experienced by a satellite, however we can compare similar craft in orbits we are targeting. MinXSS-1 (2016) made their estimated and recorded temperature ranges publicly available @MinXSS, for their 3U cubesat in an equatorial low earth orbit. The most central electronics (motherboard, power systems) experienced a temperature range from -1°C to +40°C, where as systems with a higher thermal mass (batteries) experienced only +10°C to +21°C.

Spacecraft typically contain an assortment of temperature critical components. Lithium-ion batteries for example will reduce in effectiveness and eventually stop working in colder environments, and so will often come with heating systems to keep them within their operational range (~0°C to 45°C for best performance). Some subsystems (i.e. high end optics or scientific equipment) are the opposite, and need very low temperatures. These systems make use of radiators and in some extreme cases will use technology such as heat pumps to achieve localised very low temperatures.

=== Heating 

Considering that this mission will aim for smaller mission platforms, heating will likely be required, however with insulation and the relatively forgiving temperature range this should be very simple to achieve. A simple resistive heater placed near the sample with a controller should suffice.

=== Cooling

Cooling may be needed, depending on the survival/comfort range of the sample. Once more details are known about mission (satellite size, target orbit, insulation) thermal simulations can be run and cooling requirements can be reassessed. Due to relaxed cooling needs compared to other space systems (such as very low temperature optics) increasing cooling capabilities should be as simple as increasing thermal emissivity (though the use of radiators or type of coating). In an extreme case active systems such as peltier modules may be used, as these are low cost, simple solutions to cooling needs.

A concern raised early on in discussions was the transport of the sample, as waiting stages of the sample (such as in the fairing before launch) could be prone to overheating. #highlight[Mention of BioSentinel? Chase down/contact]

#highlight[Note:] When testing for atmospheric parameters it may be worth testing against temperature, as lower temps could slow down atmospheric consumption.

== Atmospheric control

The sample will want an atmosphere that mimics that of earths to maintain healthy condition, supplying gasses such as CO2 and Oxygen. These will be consumed over the duration of the mission, however variables such as rate of consumption, ideal mixture, and pressure are all unknown and will need testing. Ideally the sample can survive on a small volume of atmosphere long enough to run the mission.

Additionally depending on the mission launch provider, more testing/validation will need to be done as well as certification to launch a pressurised container. This will likely be a significant cost factor in the project.

== Vibration

During the launch of a mission, the payload can experience large vibrational loads (can be upwards of 10g). The attachment of the sample within its container needs to be able to withstand these high vibrations. 

And early idea floated was using a thick layer of agar, similar to the kind used in petri dishes, however testing would be needed to determine if this would be good for the sample.

Another idea could be to grow the moss sample into a porous substrate to more securely anchor it down.

Additionally, dampening can be used and measures can be taken to isolate the sample/payload from the vibrations of the launch.

== Sensing

Sensing is a critical part of the mission, as this will be how results will be obtained and mission success/failure is determined from results gathered. Many forms of sensing exist, however selecting a specific method will be about finding an intersection between feasibility of engineering of both biological and technical. 

=== Imaging

Imaging with some sort of camera will likely be a high priority, even aside from it being used as a sensing tool. A camera allows for a great deal of diagnostics to be done, such as verifying sample conditions. It also will be desirable for more marketing/publication reasons, as a cool picture of an experiment can speak a thousand words.

Small lightweight cameras have greatly developed thanks to smartphones, and the camera will likely be inside the pressurised container, making it simpler to find a suitable model. The main challenge will be selecting something with a short focal length, as we will need to keep the assembly compact, and will want the camera as close to the sample as possible. Perhaps a macro lens or some sort of microscope like camera may want to be used to allow for observation of the structure of the moss/resolving fine details.

Additionally with one of the detection methods proposed being fluorescence, the camera would also need an accompanying UV illuminator.

=== Lab on a chip? or other chemical detection

Lab on a chip technology has developed greatly, and has been used before in biological space missions due to its lightweight, advanced sensing capabilities. Often paired with microfluidics, these systems ar

=== Additional sensing capabilities?

Things like radiation sensors, plant health (if this can be measured), atmospheric sensing

= How this mission could be achieved

== Satellite (cube or share on larger sat)

== ISS experiment 


#bibliography("./ref.bib", style:"ieee")
