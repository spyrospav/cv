
#import "@preview/fontawesome:0.5.0": fa-icon

#let name = "Spyros Pavlatos"
#let locale-catalog-page-numbering-style = context { "Spyros Pavlatos - Page " + str(here().page()) + " of " + str(counter(page).final().first()) + "" }
#let locale-catalog-last-updated-date-style = "Last updated in Jan 2025"
#let locale-catalog-language = "en"
#let design-page-size = "us-letter"
#let design-section-titles-font-size = 1.3em
#let design-colors-text = rgb(0, 0, 0)
#let design-colors-section-titles = rgb(0, 0, 0)
#let design-colors-last-updated-date-and-page-numbering = rgb(128, 128, 128)
#let design-colors-name = rgb(0, 0, 0)
#let design-colors-connections = rgb(0, 0, 0)
#let design-colors-links = rgb(0, 79, 144)
#let design-section-titles-bold = true
#let design-section-titles-line-thickness = 0.5pt
#let design-section-titles-font-size = 1.3em
#let design-section-titles-type = "with-parial-line"
#let design-section-titles-vertical-space-above = 0.4cm
#let design-section-titles-vertical-space-below = 0.3cm
#let design-section-titles-small-caps = false
#let design-links-use-external-link-icon = true
#let design-text-font-size = 10pt
#let design-text-leading = 0.5em
#let design-text-font-family = "New Computer Modern"
#let design-text-alignment = "justified"
#let design-text-date-and-location-column-alignment = right
#let design-header-photo-width = 3.5cm
#let design-header-use-icons-for-connections = true
#let design-header-name-font-size = 16pt
#let design-header-name-bold = true
#let design-header-vertical-space-between-name-and-connections = 0.5cm
#let design-header-vertical-space-between-connections-and-first-section = 0.5cm
#let design-header-use-icons-for-connections = true
#let design-header-horizontal-space-between-connections = 0.3cm
#let design-header-separator-between-connections = ""
#let design-header-alignment = center
#let design-highlights-summary-left-margin = 0cm
#let design-highlights-bullet = "◦"
#let design-highlights-top-margin = 0.25cm
#let design-highlights-left-margin = 0.4cm
#let design-highlights-vertical-space-between-highlights = 0.2cm
#let design-highlights-horizontal-space-between-bullet-and-highlights = 0.4em
#let design-entries-vertical-space-between-entries = 0.5em
#let design-entries-date-and-location-width = 4.15cm
#let design-entries-allow-page-break-in-entries = true
#let design-entries-horizontal-space-between-columns = 0.1cm
#let design-entries-left-and-right-margin = 0.2cm
#let design-page-top-margin = 1.5cm
#let design-page-bottom-margin = 1.5cm
#let design-page-left-margin = 1.5cm
#let design-page-right-margin = 1.5cm
#let design-page-show-last-updated-date = true
#let design-page-show-page-numbering = true
#let design-links-underline = false
#let design-entry-types-education-entry-degree-column-width = 1cm
#let date = datetime.today()

// Metadata:
#set document(author: name, title: name + "'s CV", date: date)

// Page settings:
#set page(
  margin: (
    top: design-page-top-margin,
    bottom: design-page-bottom-margin,
    left: design-page-left-margin,
    right: design-page-right-margin,
  ),
  paper: design-page-size,
  footer: if design-page-show-page-numbering {
    text(
      fill: design-colors-last-updated-date-and-page-numbering,
      align(center, [_#locale-catalog-page-numbering-style _]),
      size: 0.9em,
    )
  } else {
    none
  },
  footer-descent: 0% - 0.3em + design-page-bottom-margin / 2,
)
// Text settings:
#let justify
#let hyphenate
#if design-text-alignment == "justified" {
  justify = true
  hyphenate = true
} else if design-text-alignment == "left" {
  justify = false
  hyphenate = false
} else if design-text-alignment == "justified-with-no-hyphenation" {
  justify = true
  hyphenate = false
}
#set text(
  font: design-text-font-family,
  size: design-text-font-size,
  lang: locale-catalog-language,
  hyphenate: hyphenate,
  fill: design-colors-text,
  // Disable ligatures for better ATS compatibility:
  ligatures: true,
)
#set par(
  spacing: 0pt,
  leading: design-text-leading,
  justify: justify,
)

// Highlights settings:
#let highlights(..content) = {
  list(
    ..content,
    marker: design-highlights-bullet,
    spacing: design-highlights-vertical-space-between-highlights,
    indent: design-highlights-left-margin,
    body-indent: design-highlights-horizontal-space-between-bullet-and-highlights,
  )
}
#show list: set list(
  marker: design-highlights-bullet,
  spacing: 0pt,
  indent: 0pt,
  body-indent: design-highlights-horizontal-space-between-bullet-and-highlights,
)

// Entry utilities:
#let three-col(
  left-column-width: 1fr,
  middle-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  middle-content: "",
  right-content: "",
  alignments: (auto, auto, auto),
) = [
  #block(
    grid(
      columns: (left-column-width, middle-column-width, right-column-width),
      column-gutter: design-entries-horizontal-space-between-columns,
      align: alignments,
      ([#set par(spacing: design-text-leading); #left-content]),
      ([#set par(spacing: design-text-leading); #middle-content]),
      ([#set par(spacing: design-text-leading); #right-content]),
    ),
    breakable: true,
    width: 100%,
  )
]

#let two-col(
  left-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  right-content: "",
  alignments: (auto, auto),
  column-gutter: design-entries-horizontal-space-between-columns,
) = [
  #block(
    grid(
      columns: (left-column-width, right-column-width),
      column-gutter: column-gutter,
      align: alignments,
      ([#set par(spacing: design-text-leading); #left-content]),
      ([#set par(spacing: design-text-leading); #right-content]),
    ),
    breakable: true,
    width: 100%,
  )
]

// Main heading settings:
#let header-font-weight
#if design-header-name-bold {
  header-font-weight = 700
} else {
  header-font-weight = 400
}
#show heading.where(level: 1): it => [
  #set par(spacing: 0pt)
  #set align(design-header-alignment)
  #set text(
    weight: header-font-weight,
    size: design-header-name-font-size,
    fill: design-colors-name,
  )
  #it.body
  // Vertical space after the name
  #v(design-header-vertical-space-between-name-and-connections)
]

#let section-title-font-weight
#if design-section-titles-bold {
  section-title-font-weight = 700
} else {
  section-title-font-weight = 400
}

#show heading.where(level: 2): it => [
  #set align(left)
  #set text(size: (1em / 1.2)) // reset
  #set text(
    size: (design-section-titles-font-size),
    weight: section-title-font-weight,
    fill: design-colors-section-titles,
  )
  #let section-title = (
    if design-section-titles-small-caps [
      #smallcaps(it.body)
    ] else [
      #it.body
    ]
  )
  // Vertical space above the section title
  #v(design-section-titles-vertical-space-above, weak: true)
  #block(
    breakable: false,
    width: 100%,
    [
      #if design-section-titles-type == "moderncv" [
        #two-col(
          alignments: (right, left),
          left-column-width: design-entries-date-and-location-width,
          right-column-width: 1fr,
          left-content: [
            #align(horizon, box(width: 1fr, height: design-section-titles-line-thickness, fill: design-colors-section-titles))
          ],
          right-content: [
            #section-title
          ]
        )

      ] else [
        #box(
          [
            #section-title
            #if design-section-titles-type == "with-parial-line" [
              #box(width: 1fr, height: design-section-titles-line-thickness, fill: design-colors-section-titles)
            ] else if design-section-titles-type == "with-full-line" [

              #v(design-text-font-size * 0.4)
              #box(width: 1fr, height: design-section-titles-line-thickness, fill: design-colors-section-titles)
            ]
          ]
        )
      ]
     ] + v(1em),
  )
  #v(-1em)
  // Vertical space after the section title
  #v(design-section-titles-vertical-space-below - 0.5em)
]

// Links:
#let original-link = link
#let link(url, body) = {
  body = [#if design-links-underline [#underline(body)] else [#body]]
  body = [#if design-links-use-external-link-icon [#body#h(design-text-font-size/4)#box(
        fa-icon("external-link", size: 0.7em),
        baseline: -10%,
      )] else [#body]]
  body = [#set text(fill: design-colors-links);#body]
  original-link(url, body)
}

// Last updated date text:
#if design-page-show-last-updated-date {
  let dx
  if design-section-titles-type == "moderncv" {
    dx = 0cm
  } else {
    dx = -design-entries-left-and-right-margin
  }
  place(
    top + right,
    dy: -design-page-top-margin / 2,
    dx: dx,
    text(
      [_#locale-catalog-last-updated-date-style _],
      fill: design-colors-last-updated-date-and-page-numbering,
      size: 0.9em,
    ),
  )
}

#let connections(connections-list) = context {
  let list-of-connections = ()
  let separator = (
    h(design-header-horizontal-space-between-connections / 2, weak: true)
      + design-header-separator-between-connections
      + h(design-header-horizontal-space-between-connections / 2, weak: true)
  )
  let starting-index = 0
  while (starting-index < connections-list.len()) {
    let left-sum-right-margin
    if type(page.margin) == "dictionary" {
      left-sum-right-margin = page.margin.left + page.margin.right
    } else {
      left-sum-right-margin = page.margin * 4
    }

    let ending-index = starting-index + 1
    while (
      measure(connections-list.slice(starting-index, ending-index).join(separator)).width
        < page.width - left-sum-right-margin
    ) {
      ending-index = ending-index + 1
      if ending-index > connections-list.len() {
        break
      }
    }
    if ending-index > connections-list.len() {
      ending-index = connections-list.len()
    }
    list-of-connections.push(connections-list.slice(starting-index, ending-index).join(separator))
    starting-index = ending-index
  }
  set text(fill: design-colors-connections)
  set par(leading: design-text-leading*1.7, justify: false)
  align(list-of-connections.join(linebreak()), design-header-alignment)
  v(design-header-vertical-space-between-connections-and-first-section - design-section-titles-vertical-space-above)
}

#let three-col-entry(
  left-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  middle-content: "",
  right-content: "",
  alignments: (left, auto, right),
) = (
  if design-section-titles-type == "moderncv" [
    #three-col(
      left-column-width: right-column-width,
      middle-column-width: left-column-width,
      right-column-width: 1fr,
      left-content: right-content,
      middle-content: [
        #block(
          [
            #left-content
          ],
          inset: (
            left: design-entries-left-and-right-margin,
            right: design-entries-left-and-right-margin,
          ),
          breakable: design-entries-allow-page-break-in-entries,
          width: 100%,
        )
      ],
      right-content: middle-content,
      alignments: (design-text-date-and-location-column-alignment, left, auto),
    )
  ] else [
    #block(
      [
        #three-col(
          left-column-width: left-column-width,
          right-column-width: right-column-width,
          left-content: left-content,
          middle-content: middle-content,
          right-content: right-content,
          alignments: alignments,
        )
      ],
      inset: (
        left: design-entries-left-and-right-margin,
        right: design-entries-left-and-right-margin,
      ),
      breakable: design-entries-allow-page-break-in-entries,
      width: 100%,
    )
  ]
)

#let two-col-entry(
  left-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  right-content: "",
  alignments: (auto, design-text-date-and-location-column-alignment),
  column-gutter: design-entries-horizontal-space-between-columns,
) = (
  if design-section-titles-type == "moderncv" [
    #two-col(
      left-column-width: right-column-width,
      right-column-width: left-column-width,
      left-content: right-content,
      right-content: [
        #block(
          [
            #left-content
          ],
          inset: (
            left: design-entries-left-and-right-margin,
            right: design-entries-left-and-right-margin,
          ),
          breakable: design-entries-allow-page-break-in-entries,
          width: 100%,
        )
      ],
      alignments: (design-text-date-and-location-column-alignment, auto),
    )
  ] else [
    #block(
      [
        #two-col(
          left-column-width: left-column-width,
          right-column-width: right-column-width,
          left-content: left-content,
          right-content: right-content,
          alignments: alignments,
        )
      ],
      inset: (
        left: design-entries-left-and-right-margin,
        right: design-entries-left-and-right-margin,
      ),
      breakable: design-entries-allow-page-break-in-entries,
      width: 100%,
    )
  ]
)

#let one-col-entry(content: "") = [
  #let left-space = design-entries-left-and-right-margin
  #if design-section-titles-type == "moderncv" [
    #(left-space = left-space + design-entries-date-and-location-width + design-entries-horizontal-space-between-columns)
  ]
  #block(
    [#set par(spacing: design-text-leading); #content],
    breakable: design-entries-allow-page-break-in-entries,
    inset: (
      left: left-space,
      right: design-entries-left-and-right-margin,
    ),
    width: 100%,
  )
]

= Spyros Pavlatos

// Print connections:
#let connections-list = (
  [#fa-icon("location-dot", size: 0.9em) #h(0.05cm)Philadelphia, PA],
  [#box(original-link("mailto:pavlatos@seas.upenn.edu")[#fa-icon("envelope", size: 0.9em) #h(0.05cm)pavlatos\@seas.upenn.edu])],
  [#box(original-link("tel:+1-215-980-7610")[#fa-icon("phone", size: 0.9em) #h(0.05cm)\(215\) 980-7610])],
  [#box(original-link("https://linkedin.com/in/spyridon-pavlatos")[#fa-icon("linkedin", size: 0.9em) #h(0.05cm)spyridon-pavlatos])],
  [#box(original-link("https://github.com/spyrospav")[#fa-icon("github", size: 0.9em) #h(0.05cm)spyrospav])],
)
#connections(connections-list)



== Education

// YES DATE, NO DEGREE
#two-col-entry(
  left-content: [
    #[*University of Pennsylvania*]

#[_PhD in Computer and Information Science_]
  ],
  right-content: [
    #[_Aug 2022 – present_]
  ],
)
#block(
  [
    #set par(spacing: 0pt)
    #v(design-highlights-top-margin);#highlights([#[_Advisor_]: Vincent Liu],[Research on microservices and serverless computing by blending ideas from Distributed Systems, Programming Languages, and Formal Methods.],)
  ],
  inset: (
    left: design-entries-left-and-right-margin,
    right: design-entries-left-and-right-margin,
  ),
)

#v(design-entries-vertical-space-between-entries)
// YES DATE, NO DEGREE
#two-col-entry(
  left-content: [
    #[*National Technical University of Athens*]

#[_MEng in Electrical and Computer Computer Engineering_]
  ],
  right-content: [
    #[_Oct 2016 – July 2022_]
  ],
)
#block(
  [
    #set par(spacing: 0pt)
    #v(design-highlights-top-margin);#highlights([#[_GPA_]: 9.26/10],[#[_Thesis_]: #link("http://artemis.cslab.ece.ntua.gr:8080/jspui/handle/123456789/18415")[A Test Suite for Model Checking Persistent Memory Programs] #[_Advisor_]: Kostis Sagonas],)
  ],
  inset: (
    left: design-entries-left-and-right-margin,
    right: design-entries-left-and-right-margin,
  ),
)



== Experience

#two-col-entry(
  left-content: [
    #[*Teaching Assistant*]

#[_Univesity of Pennsylvania_]
  ],
  right-content: [
    #[_Philadelphia, PA_]

#[_2023 – 2024_]
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([#[_Courses_]: Software Analysis, Compilers],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #[*Teaching Assistant*]

#[_National Technical University of Athens_]
  ],
  right-content: [
    #[_Athens, Greece_]

#[_2020 – 2021_]
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([#[_Courses_]: Introduction to Programming, Programming Techniques],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #[*Telecommunications Engineer*]

#[_White Noise NTUA_]
  ],
  right-content: [
    #[_Athens, Greece_]

#[_2017 – 2019_]
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([Founding member of the space engineering team],[Member of #link("https://whitenoisentua.gr/drillsat.html")[project Drillsat] and #link("https://whitenoisentua.gr/daedalus.html")[project Daedalus] for which I designed the telecommunications subsystems and data handling protocols.],)
  ],
)



== Projects

#two-col-entry(
  left-content: [
    #[*λ-trim Debloater*]
  ],
  right-content: [
    #[_2024 – present_]
  ],
)
#one-col-entry(
  content: [
    #two-col(left-column-width: design-highlights-summary-left-margin, right-column-width: 1fr, left-content: [], right-content: [#v(design-highlights-top-margin);#align(left, [Debloater for Python and serverless applications])], column-gutter: 0cm)

#v(-design-text-leading)  #v(design-highlights-top-margin);#highlights([Designed a debloating algorithm that leverages established dynamic analysis techniques and a cost model to optimize serverless applications.],[Implemented the algorithm in a tool that can be used to debloat Python and serverless applications and achieved up to 20\% reduction in cold start time and cost when deployed on AWS Lambda.],[Actively maintanining the open-source version of the tool.],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #link("https://github.com/eniac/mucache")[*MuCache*]
  ],
  right-content: [
    #[_2022 – 2023_]
  ],
)
#one-col-entry(
  content: [
    #two-col(left-column-width: design-highlights-summary-left-margin, right-column-width: 1fr, left-content: [], right-content: [#v(design-highlights-top-margin);#align(left, [Caching framework for microservices])], column-gutter: 0cm)

#v(-design-text-leading)  #v(design-highlights-top-margin);#highlights([Implemented various applications to test and evaluate the proposed framework.],[Verfiied the correctness of the caching framework with a pen-and-paper proof.],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #link("https://github.com/spyrospav/pm-benchmarks")[*PM-Benchmarks*]
  ],
  right-content: [
    #[_2021 – 2022_]
  ],
)
#one-col-entry(
  content: [
    #two-col(left-column-width: design-highlights-summary-left-margin, right-column-width: 1fr, left-content: [], right-content: [#v(design-highlights-top-margin);#align(left, [Test suite for model checking persistent memory programs])], column-gutter: 0cm)

#v(-design-text-leading)  #v(design-highlights-top-margin);#highlights([Developed a test suite consisting of litmus tests and complex data structures for model checking persistent memory programs under the Px86 memory persistency model.],[Tested the state-of-the-art model checker #link("https://github.com/MPI-SWS/genmc")[GenMC] against the test suite and reported some critical internal bugs in the tool.],)
  ],
)



== Publications

#one-col-entry(content:[
  #[*λ-trim: Reducing Monetary and Performance Cost of Serverless Cold Starts with Cost-driven Application Debloating*]

  #v(-design-text-leading)
  #v(design-highlights-top-margin);Spyros Pavlatos, Xuting Liu, Yuhao Liu, Vincent Liu

#v(design-highlights-top-margin - design-text-leading)Under Submission])

#v(design-entries-vertical-space-between-entries)
#one-col-entry(content:[
  #[*MuCache: A General Framework for Caching in Microservice Graphs*]

  #v(-design-text-leading)
  #v(design-highlights-top-margin);Haoran Zhang, Konstantinos Kallas, Spyros Pavlatos, Rajeev Alur, Yuhao Liu, Vincent Liu

#v(design-highlights-top-margin - design-text-leading)NSDI'24])



== Skills

#one-col-entry(
  content: [#[*Programming:*] C/C++, Rust, OCaml, Erlang, Python, Go, Java, JavaScript]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#[*Operating Systems / Platforms:*] Windows, Linux, AWS, GCP]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#[*Databases:*] MySQL, MongoDB, RocksDB, Redis, memcached]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#[*Frameworks & Tools:*] LLVM, OpenMP, MPI, PyTorch, Docker, Kubernetes, frama-c, TLA+, ns-3]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#[*Miscellaneous:*] LaTeX, Git/Github]
)


== Honors/awards

#one-col-entry(
  content: [- #[*Soloman M. Swaab Fellowship*] - University of Pennsylvania],
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [- #[*1st Prize in Cansat in Greece 2018*] space engineering competition \(universities level\).],
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [- #[*IEEEXtreme programming competitions*]. Ranked #[*94/5500*] \(15.0\), #[*99/3700*] \(14.0\) and #[*184/4000*] \(13.0\) worldwide.],
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [- #[*Bronze Medal in the Panhellenic Physics Competition Aristotle 2016*]. Ranked 25th overall],
)


== Leadership and Outreach

#one-col-entry(
  content: [- #[*Penn CIS PhD Mentorship Program Organizer*] \(2023-present\).],
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [- #[*Invited Panelist for Penn CIS Visit Days*] \(2023, 2024, 2025\).],
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [- #[*Computer and Information Science Doctoral Association \(#link("https://penn-cisda.github.io/")[CISDA]\)*]. Served in the Dean's Advisory Board \(2022-2023\) and as a CISDA chair \(2023-2025\).],
)


== Travel Funding

#two-col-entry(
  left-content: [
    #[*NSDI 2025 Student Grant*]
  ],
  right-content: [
    #[_2025_]
  ],
)
#one-col-entry(
  content: [
    
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #[*Summer School on Formal Techniques Funding*]
  ],
  right-content: [
    #[_2023_]
  ],
)
#one-col-entry(
  content: [
    
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #[*Programming Languages Mentoring Workshop at PLDI 2022 - Student Grant*]
  ],
  right-content: [
    #[_2022_]
  ],
)
#one-col-entry(
  content: [
    
  ],
)



