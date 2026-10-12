// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Spyros Pavlatos",
  title: "Spyros Pavlatos - CV",
  footer: context { [#emph[Spyros Pavlatos - Page #str(here().page()) of #str(counter(page).final().first())]] },
  top-note: [ #emph[Last updated in May 2026] ],
  locale-catalog-language: "en",
  text-direction: ltr,
  page-size: "us-letter",
  page-top-margin: 1.5cm,
  page-bottom-margin: 1.5cm,
  page-left-margin: 1.5cm,
  page-right-margin: 1.5cm,
  page-show-footer: true,
  page-show-top-note: true,
  colors-body: rgb(0, 0, 0),
  colors-name: rgb(0, 0, 0),
  colors-headline: rgb(0, 0, 0),
  colors-connections: rgb(0, 0, 0),
  colors-section-titles: rgb(0, 0, 0),
  colors-links: rgb(0, 79, 144),
  colors-footer: rgb(128, 128, 128),
  colors-top-note: rgb(128, 128, 128),
  typography-line-spacing: 0.5em,
  typography-alignment: "justified",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "New Computer Modern",
  typography-font-family-name: "New Computer Modern",
  typography-font-family-headline: "New Computer Modern",
  typography-font-family-connections: "New Computer Modern",
  typography-font-family-section-titles: "New Computer Modern",
  typography-font-size-body: 10pt,
  typography-font-size-name: 16pt,
  typography-font-size-headline: 10pt,
  typography-font-size-connections: 10pt,
  typography-font-size-section-titles: 1.3em,
  typography-small-caps-name: false,
  typography-small-caps-headline: false,
  typography-small-caps-connections: false,
  typography-small-caps-section-titles: false,
  typography-bold-name: true,
  typography-bold-headline: false,
  typography-bold-connections: false,
  typography-bold-section-titles: true,
  links-underline: false,
  links-show-external-link-icon: true,
  header-alignment: center,
  header-photo-width: 3.5cm,
  header-space-below-name: 0.5cm,
  header-space-below-headline: 0.7cm,
  header-space-below-connections: 0.5cm,
  header-connections-hyperlink: true,
  header-connections-show-icons: true,
  header-connections-display-urls-instead-of-usernames: false,
  header-connections-separator: "",
  header-connections-space-between-connections: 0.3cm,
  section-titles-type: "with_full_line",
  section-titles-line-thickness: 0.5pt,
  section-titles-space-above: 0.4cm,
  section-titles-space-below: 0.3cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 0em,
  sections-space-between-regular-entries: 0em,
  entries-date-and-location-width: 4.15cm,
  entries-side-space: 0.2cm,
  entries-space-between-columns: 0.1cm,
  entries-allow-page-break: true,
  entries-short-second-row: false,
  entries-degree-width: 1cm,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0cm,
  entries-highlights-bullet:  "◦" ,
  entries-highlights-nested-bullet:  "◦" ,
  entries-highlights-space-left: 0.4cm,
  entries-highlights-space-above: 0.1cm,
  entries-highlights-space-between-items: 0cm,
  entries-highlights-space-between-bullet-and-text: 0.4em,
  date: datetime(
    year: 2026,
    month: 5,
    day: 19,
  ),
)


= Spyros Pavlatos

#connections(
  [#connection-with-icon("location-dot")[Philadelphia, PA]],
  [#link("mailto:pavlatos@seas.upenn.edu", icon: false, if-underline: false, if-color: false)[#connection-with-icon("envelope")[pavlatos\@seas.upenn.edu]]],
  [#link("tel:+1-215-980-7610", icon: false, if-underline: false, if-color: false)[#connection-with-icon("phone")[(215) 980-7610]]],
  [#link("https://linkedin.com/in/spyridon-pavlatos", icon: false, if-underline: false, if-color: false)[#connection-with-icon("linkedin")[spyridon-pavlatos]]],
  [#link("https://github.com/spyrospav", icon: false, if-underline: false, if-color: false)[#connection-with-icon("github")[spyrospav]]],
)


== Education

#education-entry(
  [
    #strong[University of Pennsylvania]

  ],
  [
    #emph[Aug 2022 – present]

  ],
  main-column-second-row: [
    #emph[PhD in Computer and Information Science]

    - #emph[Advisor]: Vincent Liu

    - Research on microservices and serverless computing by blending ideas from Distributed Systems, Programming Languages, and Formal Methods.

  ],
)

#education-entry(
  [
    #strong[National Technical University of Athens]

  ],
  [
    #emph[Oct 2016 – July 2022]

  ],
  main-column-second-row: [
    #emph[MEng in Electrical and Computer Computer Engineering]

    - #emph[GPA]: 9.26\/10

    - #emph[Thesis]: #link("http://artemis.cslab.ece.ntua.gr:8080/jspui/handle/123456789/18415")[A Test Suite for Model Checking Persistent Memory Programs] #emph[Advisor]: Kostis Sagonas

  ],
)

== Experience

#regular-entry(
  [
    #strong[Software Engineering Intern]

    #emph[Databricks - Photon Engine]

  ],
  [
    #emph[San Francisco, CA]

    #emph[May 2026 – Aug 2026]

  ],
  main-column-second-row: [
    - Photon - Query Engine team.

    - Research on agentic code generation for query engines.

  ],
)

#regular-entry(
  [
    #strong[Software Development Engineer Intern]

    #emph[Amazon Web Services - DBS Redshift]

  ],
  [
    #emph[East Palo Alto, CA]

    #emph[May 2025 – Aug 2025]

  ],
  main-column-second-row: [
    - Implemented automatic background conversion of Interleaved Sortkey (ISK) tables.

  ],
)

#regular-entry(
  [
    #strong[Telecommunications Engineer]

    #emph[White Noise NTUA]

  ],
  [
    #emph[Athens, Greece]

    #emph[2017 – 2019]

  ],
  main-column-second-row: [
    - Founding member of the space engineering team

    - Member of #link("https://whitenoisentua.gr/drillsat.html")[project Drillsat] and #link("https://whitenoisentua.gr/daedalus.html")[project Daedalus] for which I designed the telecommunications subsystems and data handling protocols.

  ],
)

== Teaching Experience

#regular-entry(
  [
    #strong[Teaching Assistant]

    #emph[Univesity of Pennsylvania]

  ],
  [
    #emph[Philadelphia, PA]

    #emph[2023 – 2024]

  ],
  main-column-second-row: [
    - #emph[Courses]: Software Analysis, Compilers

  ],
)

#regular-entry(
  [
    #strong[Teaching Assistant]

    #emph[National Technical University of Athens]

  ],
  [
    #emph[Athens, Greece]

    #emph[2020 – 2021]

  ],
  main-column-second-row: [
    - #emph[Courses]: Introduction to Programming, Programming Techniques

  ],
)

== Mentoring

- #strong[Kevin Dong] (Masters → USC, PhD)

- #strong[Junhao Yang] (Undergraduate, visiting from Tongji University → Brown University, Masters)

== Projects

#regular-entry(
  [
    #strong[Dynamic Coalescence for Pay-as-you-go Serverless LLM Inference (under submission)]

  ],
  [
    #emph[2025 – present]

  ],
  main-column-second-row: [
    #summary[Building a System for serving large Language Models on commercial serverless platforms.]

    - Developed a novel coordinator-free coalescing technique that merges requests across instances so that unneeded GPU capacity can be reclaimed as load decreases.

    - Proposed an opportunistic decode KV cache transfer protocol to exploit assymetric KV cache generation (prefill\/decode) to overlap data movement with computation.

  ],
)

#regular-entry(
  [
    #strong[Migrating Control Planes to Serverless (ongoing)]

  ],
  [
    #emph[2025 – present]

  ],
  main-column-second-row: [
    #summary[Utilizing serverless benefits, like efficient resource usage for bursty workloads and automatic scaling, to build control planes for distributed systems.]

    - Designed a semi-automatic migration framework that can convert existing control plane implementations to serverless ones.

    - Applied the framework to migrate the Kubernetes control plane to run completely on AWS Lambda.

    - Achieved 60\% and 94\% reduction in operating and idle costs respectively, while maintaining similar performance.

  ],
)

#regular-entry(
  [
    #strong[#link("https://github.com/eniac/lambda-trim")[λ-trim Debloater]]

  ],
  [
    #emph[2024 – present]

  ],
  main-column-second-row: [
    #summary[Debloater for Python and serverless applications]

    - Designed a debloating algorithm that leverages established dynamic analysis techniques and a cost model to optimize serverless applications.

    - Implemented the algorithm in a tool that can be used to debloat Python and serverless applications and achieved up to 20\% reduction in cold start time and cost when deployed on AWS Lambda.

    - Actively maintanining the open-source version of the tool.

  ],
)

#regular-entry(
  [
    #strong[#link("https://github.com/eniac/mucache")[MuCache]]

  ],
  [
    #emph[2022 – 2023]

  ],
  main-column-second-row: [
    #summary[Caching framework for microservices]

    - Implemented various applications to test and evaluate the proposed framework.

    - Verfiied the correctness of the caching framework with a pen-and-paper proof.

  ],
)

#regular-entry(
  [
    #strong[#link("https://github.com/spyrospav/pm-benchmarks")[PM-Benchmarks]]

  ],
  [
    #emph[2021 – 2022]

  ],
  main-column-second-row: [
    #summary[Test suite for model checking persistent memory programs]

    - Developed a test suite consisting of litmus tests and complex data structures for model checking persistent memory programs under the Px86 memory persistency model.

    - Tested the state-of-the-art model checker #link("https://github.com/MPI-SWS/genmc")[GenMC] against the test suite and reported some critical internal bugs in the tool.

  ],
)

== Publications

  #regular-entry(
  [
    – #strong[Dynamic Coalescence for Pay-as-you-go Serverless LLM Inference]

  ],
  [
  ],
  main-column-second-row: [
    #strong[Spyros Pavlatos] et al.

    Under submission

  ],
)

  #regular-entry(
  [
    – #strong[FullStackArena: Evaluating Browser Agents in Dynamic Full-Stack Environments]

  ],
  [
  ],
  main-column-second-row: [
    Jiaheng Lu, Xian Wang, Shrishti Roy, Colin Zhao, Sidharth Sankhe, Chuyue Wang, Xuting Liu, #strong[Spyros Pavlatos], Linh Phan, Vincent Liu

    Under submission

  ],
)

  #regular-entry(
  [
    – #strong[λ-trim: Optimizing Function Initialization in Serverless Applications With Cost-driven Debloating]

  ],
  [
  ],
  main-column-second-row: [
    #strong[Spyros Pavlatos]#sym.ast.basic#h(0pt, weak: true) , Xuting Liu#sym.ast.basic#h(0pt, weak: true) , Yuhao Liu, Vincent Liu

    ASPLOS'25

  ],
)

  #regular-entry(
  [
    – #strong[MuCache: A General Framework for Caching in Microservice Graphs]

  ],
  [
  ],
  main-column-second-row: [
    Haoran Zhang, Konstantinos Kallas, #strong[Spyros Pavlatos], Rajeev Alur, Sebastian Angel, Vincent Liu

    NSDI'24

  ],
)

== Skills

#strong[Programming:] C\/C++, Rust, OCaml, Erlang, Python, Go, Java, JavaScript

#strong[Operating Systems \/ Platforms:] Windows, Linux, AWS, GCP

#strong[Databases:] MySQL, MongoDB, Redis, memcached

#strong[Frameworks & Tools:] Spark, LLVM, OpenMP, MPI, PyTorch, vLLM, OpenEvolve, Docker, Kubernetes, frama-c, TLA+, ns-3

#strong[Miscellaneous:] LaTeX, Git\/Github

== Honors\/awards

- #strong[Soloman M. Swaab Fellowship] - University of Pennsylvania

- #strong[Gerondelis Foundation Scholarship] - Graduate Scholarship

- #strong[1st Prize in Cansat in Greece 2018] space engineering competition (universities level).

- #strong[IEEEXtreme programming competitions]. Ranked #strong[94\/5500] (15.0), #strong[99\/3700] (14.0) and #strong[184\/4000] (13.0) worldwide.

- #strong[Bronze Medal in the Panhellenic Physics Competition Aristotle 2016]. Ranked 25th overall

== Leadership and Outreach

- #strong[Penn CIS PhD Mentorship Program Organizer] (2023-2026).

- #strong[Invited Panelist for Penn CIS Visit Days] (2023, 2024, 2025).

- #strong[Computer and Information Science Doctoral Association (#link("https://penn-cisda.github.io/")[CISDA])]. Served in the Dean's Advisory Board (2022-2023) and as a CISDA chair (2023-2025).

== Travel Funding

#regular-entry(
  [
    #strong[NSDI 2025 Student Grant]

  ],
  [
    #emph[2025]

  ],
  main-column-second-row: [
  ],
)

#regular-entry(
  [
    #strong[Summer School on Formal Techniques Funding]

  ],
  [
    #emph[2023]

  ],
  main-column-second-row: [
  ],
)

#regular-entry(
  [
    #strong[Programming Languages Mentoring Workshop at PLDI 2022 - Student Grant]

  ],
  [
    #emph[2022]

  ],
  main-column-second-row: [
  ],
)
