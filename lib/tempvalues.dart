var profileConfigJson = {
  "query": "*[_type == \"profileConfig\"][0]",
  "result": {
    "jobDescription2": "Web Developer",
    "jobDescription1": "Flutter Developer",
    "_createdAt": "2022-04-28T23:59:51Z",
    "_type": "profileConfig",
    "_updatedAt": "2023-01-28T19:10:47Z",
    "imgUrl": {
      "_type": "image",
      "asset": {
        "_ref": "image-f36cb7d4f1596e89057fb385ec47c421cb28713b-2048x2048-png",
        "_type": "reference"
      }
    },
    "name": "Tamer",
    "_id": "7c106b1b-5f2c-4541-9ff7-d11bd00e521a",
    "_rev": "5LcYQDxXHQkCUNgftdByiz"
  },
  "ms": 3
};
var aboutsJson = [
  {
    "imgUrl": {
      "_type": "image",
      "asset": {
        "_ref": "image-65ed72deac647aa84f75c5af8f6284ab926931b0-1200x900-png",
        "_type": "reference"
      }
    },
    "_createdAt": "2022-04-27T18:48:29Z",
    "_rev": "uXu54HNF3y7MjHA6MZaX03",
    "_type": "abouts",
    "_id": "6b3b4c9f-424c-4db9-9ad9-0d143d5f53a2",
    "title": "Flutter Developer",
    "_updatedAt": "2022-05-06T10:49:05Z"
  },
  {
    "_rev": "uXu54HNF3y7MjHA6MZaWmZ",
    "_type": "abouts",
    "_id": "997cf0dd-9eca-48b5-98b7-9dbc3f35ed14",
    "title": "Web Developer",
    "_updatedAt": "2022-05-06T10:48:56Z",
    "imgUrl": {
      "asset": {
        "_ref": "image-b62651ef34a9e54c354ee437545acc348fbf0505-1200x900-png",
        "_type": "reference"
      },
      "_type": "image"
    },
    "_createdAt": "2022-04-27T18:47:56Z"
  },
  {
    "title": "Front End Developer",
    "_updatedAt": "2022-05-06T10:48:19Z",
    "imgUrl": {
      "_type": "image",
      "asset": {
        "_ref": "image-db53adca404b7410a2869db815e4ce77da2e7e53-1200x900-png",
        "_type": "reference"
      }
    },
    "_createdAt": "2022-04-27T18:45:09Z",
    "_rev": "ztp47YqpuX31viMd7QvWlK",
    "_type": "abouts",
    "_id": "ca6887ef-560c-4a6d-8fa9-5665200c2d07"
  }
];

var experiencesJson = [
  {
    "_type": "experiences",
    "_id": "1ac05caa-c30f-4acf-b11d-0f75eff666f8",
    "_updatedAt": "2023-12-16T19:12:22Z",
    "works": [
      {
        "_key": "a45e66bde61f",
        "desc": "Full time Flutter developer - Mobile For Jira Developer",
        "_type": "workExperience",
        "name": "Flutter Developer",
        "company": "Infosysta"
      }
    ],
    "year": "July 2022 - present",
    "_createdAt": "2022-06-29T15:44:20Z",
    "_rev": "CM6961CqAC7W4puPREoAFo"
  },
  {
    "_rev": "CM6961CqAC7W4puPREo7Sy",
    "_type": "experiences",
    "_id": "4cebbafa-fd17-4d2c-a419-b0dae88eba51",
    "_updatedAt": "2023-12-16T19:11:08Z",
    "works": [
      {
        "name": "Full Stack Developer Internship",
        "company": "EDM",
        "_key": "4b2005e57224",
        "desc":
            "I worked as a full stack developer using AngularJs, Bootstrap, Material for front-end and MSSql Server, .Net MVC for backend.",
        "_type": "workExperience"
      }
    ],
    "year": "Jun 2021 - Sep 2021",
    "_createdAt": "2022-04-27T20:58:28Z"
  }
];

var skillsJson = [
  {
    "_id": "0946c3f8-e527-492b-8304-069a040c2c36",
    "_updatedAt": "2022-04-27T21:24:52Z",
    "bgColor": "#eee",
    "_createdAt": "2022-04-27T20:45:43Z",
    "_rev": "ztp47YqpuX31viMd75X4ka",
    "_type": "skills",
    "icon": {
      "_type": "image",
      "asset": {
        "_type": "reference",
        "_ref": "image-08ac37aeccf34ea0b7c4649e221679220d7c2ceb-480x480-png"
      }
    },
    "name": "Flutter"
  },
  {
    "_id": "0ad8ef78-4e8a-4aaa-b15e-d13720dbc805",
    "_updatedAt": "2022-04-27T21:23:53Z",
    "bgColor": "#eee",
    "_createdAt": "2022-04-27T20:46:26Z",
    "_rev": "aTniA0oG6Ad61gsvEdF5OW",
    "_type": "skills",
    "icon": {
      "_type": "image",
      "asset": {
        "_ref": "image-d8c8025b1695a3f14f849b99afc71d917ef40813-480x480-png",
        "_type": "reference"
      }
    },
    "name": "NodeJs"
  },
  {
    "name": "React",
    "_id": "2661c96f-13d9-4035-9c06-2ddd7a9dd2a2",
    "_updatedAt": "2022-04-27T21:25:13Z",
    "bgColor": "#eee",
    "_createdAt": "2022-04-27T20:44:53Z",
    "_rev": "ztp47YqpuX31viMd75X672",
    "_type": "skills",
    "icon": {
      "_type": "image",
      "asset": {
        "_ref": "image-34be54263e18fa2aea611c6b3b388b76e978e7d7-64x64-png",
        "_type": "reference"
      }
    }
  },
  {
    "icon": {
      "_type": "image",
      "asset": {
        "_ref": "image-31f11147f89dbd855a9b948e2ce643ea2f41c0a9-480x480-png",
        "_type": "reference"
      }
    },
    "name": "HTML5",
    "_id": "295c826b-55a5-40c0-806a-ad53dfbf1532",
    "_updatedAt": "2022-04-29T01:25:16Z",
    "bgColor": "#eee",
    "_createdAt": "2022-04-29T01:25:16Z",
    "_rev": "aTniA0oG6Ad61gsvEev4Ci",
    "_type": "skills"
  },
  {
    "_rev": "ztp47YqpuX31viMd7EgK81",
    "_type": "skills",
    "icon": {
      "_type": "image",
      "asset": {
        "_ref": "image-1fe17fd5547aeba7aa4d4fb3427ab27c7860d0be-222x302-png",
        "_type": "reference"
      }
    },
    "name": "Firebase",
    "_id": "60455608-70ec-4f76-b58a-62eba7ccbc86",
    "_updatedAt": "2022-05-02T09:51:37Z",
    "bgColor": "#eee",
    "_createdAt": "2022-05-02T09:50:20Z"
  },
  {
    "_updatedAt": "2022-05-02T09:55:11Z",
    "bgColor": "#eee",
    "_createdAt": "2022-05-02T09:55:11Z",
    "_rev": "aTniA0oG6Ad61gsvEizZno",
    "_type": "skills",
    "icon": {
      "_type": "image",
      "asset": {
        "_ref": "image-c6a43e73cef9815b015c92c122fd5f17dfa2e26d-300x300-png",
        "_type": "reference"
      }
    },
    "name": "MySQL",
    "_id": "7470542f-5a45-4048-9e71-6c5171ebbce2"
  },
  {
    "bgColor": "#eee",
    "_createdAt": "2022-04-27T20:45:26Z",
    "_rev": "ztp47YqpuX31viMd75X5cs",
    "_type": "skills",
    "icon": {
      "_type": "image",
      "asset": {
        "_ref": "image-6551e520e801ab656029527c09265981c06dce33-480x480-png",
        "_type": "reference"
      }
    },
    "name": "Figma",
    "_id": "799cd298-89a0-4f19-afc7-b40d4bf772cd",
    "_updatedAt": "2022-04-27T21:25:03Z"
  },
  {
    "icon": {
      "_type": "image",
      "asset": {
        "_ref": "image-2825d163301127c72b6121baebb5e570689596e5-480x480-png",
        "_type": "reference"
      }
    },
    "name": "SASS",
    "_id": "82dad7e1-6e8d-4bdf-a600-a72c911ed035",
    "_updatedAt": "2022-04-29T01:25:49Z",
    "bgColor": "#eee",
    "_createdAt": "2022-04-29T01:25:49Z",
    "_rev": "aTniA0oG6Ad61gsvEev5sV",
    "_type": "skills"
  },
  {
    "_type": "skills",
    "icon": {
      "_type": "image",
      "asset": {
        "_ref": "image-f126c36222b619c093ca9f052ed627c291bad73d-1025x1025-png",
        "_type": "reference"
      }
    },
    "name": "Flask",
    "_id": "907ce4ff-d410-476e-91b1-abd47b3bb8f9",
    "_updatedAt": "2022-05-02T09:57:25Z",
    "bgColor": "#eee",
    "_createdAt": "2022-05-02T09:57:25Z",
    "_rev": "aTniA0oG6Ad61gsvEizeYC"
  },
  {
    "_type": "skills",
    "icon": {
      "_type": "image",
      "asset": {
        "_ref": "image-053ef810fbde6c201023e5445a6150d548c71d02-480x480-png",
        "_type": "reference"
      }
    },
    "name": "C++",
    "_id": "98e91ab5-a135-4de4-a91e-0ea961bfb137",
    "_updatedAt": "2022-04-29T01:32:02Z",
    "bgColor": "#eee",
    "_createdAt": "2022-04-29T01:32:02Z",
    "_rev": "aTniA0oG6Ad61gsvEevFBx"
  },
  {
    "name": "Bootstrap ",
    "_id": "9f7581f7-01b2-4362-adf1-8091b7591b45",
    "_updatedAt": "2022-05-02T09:56:06Z",
    "bgColor": "#eee",
    "_createdAt": "2022-05-02T09:56:06Z",
    "_rev": "ztp47YqpuX31viMd7EgXSR",
    "_type": "skills",
    "icon": {
      "_type": "image",
      "asset": {
        "_type": "reference",
        "_ref": "image-172ea03253a2e919f6166d6e3b545d37817a48a1-280x280-png"
      }
    }
  },
  {
    "name": "Assembly",
    "_id": "9ff499e6-2e87-4254-9a2b-0f142bd81dfd",
    "_updatedAt": "2022-05-08T18:46:09Z",
    "bgColor": "#eee",
    "_createdAt": "2022-05-08T18:46:09Z",
    "_rev": "aTniA0oG6Ad61gsvEtZ6qR",
    "_type": "skills",
    "icon": {
      "_type": "image",
      "asset": {
        "_ref": "image-2ceeb304e9d5b0c085565134298436611631a8ed-214x232-png",
        "_type": "reference"
      }
    }
  },
  {
    "_updatedAt": "2022-04-29T01:25:33Z",
    "bgColor": "#eee",
    "_createdAt": "2022-04-29T01:25:33Z",
    "_rev": "uXu54HNF3y7MjHA6MVos7f",
    "_type": "skills",
    "icon": {
      "_type": "image",
      "asset": {
        "_type": "reference",
        "_ref": "image-107574d887f1c07c9fbea0704de7f293e244a8f3-480x480-png"
      }
    },
    "name": "CSS3",
    "_id": "a0d7c134-692f-4847-974d-be30e5db9b43"
  },
  {
    "icon": {
      "_type": "image",
      "asset": {
        "_ref": "image-66bbf9242b1ccffebb5d46f376f5036b527fad48-480x480-png",
        "_type": "reference"
      }
    },
    "name": "Java Script",
    "_id": "b5f0aadd-7ddb-4d5d-ba34-e90f807b2827",
    "_updatedAt": "2022-04-29T01:24:29Z",
    "bgColor": "#eee",
    "_createdAt": "2022-04-29T01:24:02Z",
    "_rev": "aTniA0oG6Ad61gsvEev3TQ",
    "_type": "skills"
  },
  {
    "_updatedAt": "2022-05-08T18:48:51Z",
    "bgColor": "#eee",
    "_createdAt": "2022-05-08T18:46:29Z",
    "_rev": "aTniA0oG6Ad61gsvEtZG80",
    "_type": "skills",
    "icon": {
      "_type": "image",
      "asset": {
        "_ref": "image-143c6165376d8e0abee39f667b96897a9d73ff71-1200x1200-png",
        "_type": "reference"
      }
    },
    "name": "Bash",
    "_id": "c2309faf-cc1e-4f24-897f-489189e2423a"
  },
  {
    "_type": "skills",
    "icon": {
      "_type": "image",
      "asset": {
        "_type": "reference",
        "_ref": "image-aa1dc780814cb5c67190adc0b032bf0671309d9c-64x64-png"
      }
    },
    "name": "Python",
    "_id": "dbba98e5-b55e-491e-a7f2-4b2a5cfadc54",
    "_updatedAt": "2022-04-29T01:26:19Z",
    "bgColor": "#eee",
    "_createdAt": "2022-04-29T01:26:19Z",
    "_rev": "aTniA0oG6Ad61gsvEev6W8"
  },
  {
    "bgColor": "#eee",
    "_createdAt": "2022-05-08T18:45:51Z",
    "_rev": "aTniA0oG6Ad61gsvEtZ5VP",
    "_type": "skills",
    "icon": {
      "_type": "image",
      "asset": {
        "_ref": "image-909f34dbf8d059d4d65446d711ee18fd77909ffd-1024x1024-png",
        "_type": "reference"
      }
    },
    "name": "Dart",
    "_id": "f530f843-afaf-4d49-943e-29365e31a3c7",
    "_updatedAt": "2022-05-08T18:45:51Z"
  },
  {
    "_createdAt": "2022-04-27T20:46:11Z",
    "_rev": "aTniA0oG6Ad61gsvEdF6On",
    "_type": "skills",
    "icon": {
      "asset": {
        "_ref": "image-a804a741fb26f6c236c73086a87cfc9f64106401-480x480-png",
        "_type": "reference"
      },
      "_type": "image"
    },
    "name": "Git",
    "_id": "ff8fe86b-dfe6-41dc-bacd-b00eee3b0fce",
    "_updatedAt": "2022-04-27T21:24:41Z",
    "bgColor": "#eee"
  }
];
var worksJson = [
  {
    "projectLink": "https://github.com/ttzein6/SmartGas-App",
    "_id": "164dc6ae-08dd-4351-b72f-a93ab0193add",
    "_updatedAt": "2022-07-25T09:28:19Z",
    "imgUrl": {
      "_type": "image",
      "asset": {
        "_ref": "image-db53adca404b7410a2869db815e4ce77da2e7e53-1200x900-png",
        "_type": "reference"
      }
    },
    "_createdAt": "2022-04-27T20:28:15Z",
    "codeLink": "https://github.com/ttzein6/SmartGas-App",
    "_rev": "uFrEXnvqFtz2nT9sLBDiAu",
    "_type": "works",
    "description": "Firebase/Firestore - Flutter - GetX - GoogleMLKIT",
    "title": "Smart Gas",
    "tags": ["Mobile App", "All"]
  },
  {
    "tags": ["All"],
    "_createdAt": "2022-05-28T13:53:24Z",
    "_id": "1806ba7e-1e75-4c25-9c3c-8ed6f3079f50",
    "codeLink": "https://github.com/ttzein6/flappy_bird-neat",
    "_rev": "e2uEVN0SPDCAHInN3IZwn1",
    "_type": "works",
    "description": "Python - NeuroEvolution of Augmenting Topologies(NEAT)",
    "title": "Flappy Bird AI",
    "_updatedAt": "2022-05-28T13:53:24Z",
    "imgUrl": {
      "_type": "image",
      "asset": {
        "_type": "reference",
        "_ref": "image-db53adca404b7410a2869db815e4ce77da2e7e53-1200x900-png"
      }
    },
    "projectLink": "https://github.com/ttzein6/flappy_bird-neat"
  },
  {
    "_createdAt": "2022-05-28T13:54:27Z",
    "_rev": "e2uEVN0SPDCAHInN3IaWit",
    "title": "iTalk app",
    "tags": ["All", "Mobile App"],
    "imgUrl": {
      "_type": "image",
      "asset": {
        "_ref": "image-db53adca404b7410a2869db815e4ce77da2e7e53-1200x900-png",
        "_type": "reference"
      }
    },
    "projectLink": "https://github.com/ttzein6/iTalk.git",
    "codeLink": "https://github.com/ttzein6/iTalk.git",
    "_type": "works",
    "description": "Flutter, speech recognition, flutter_tts",
    "_id": "6b7ec25f-f46a-4fd8-bdff-3cea503a7257",
    "_updatedAt": "2022-05-28T13:55:04Z"
  },
  {
    "projectLink": "https://github.com/Compzool/Lets-Mingle-Dating-App.git",
    "_createdAt": "2022-04-27T20:26:57Z",
    "_rev": "dtdO4o3cRLPwh3vnwygjxE",
    "_type": "works",
    "tags": ["Mobile App", "All"],
    "imgUrl": {
      "_type": "image",
      "asset": {
        "_ref": "image-65ed72deac647aa84f75c5af8f6284ab926931b0-1200x900-png",
        "_type": "reference"
      }
    },
    "codeLink": "https://github.com/Compzool/Lets-Mingle-Dating-App.git",
    "description":
        "Flutter - Firebase/Firestore - Bloc - Cubit - Agora Sockets.",
    "_id": "8ade78ec-4d0d-41df-aea8-5562e6371929",
    "title": "Mingle",
    "_updatedAt": "2022-05-28T13:48:21Z"
  },
  {
    "_createdAt": "2022-05-28T13:48:52Z",
    "_type": "works",
    "title": "Crypto Punks Clone",
    "tags": ["Web App", "All", "React JS"],
    "imgUrl": {
      "_type": "image",
      "asset": {
        "_ref": "image-db53adca404b7410a2869db815e4ce77da2e7e53-1200x900-png",
        "_type": "reference"
      }
    },
    "projectLink": "https://github.com/ttzein6/elite-nerdz.git",
    "codeLink": "https://github.com/ttzein6/elite-nerdz.git",
    "_rev": "dtdO4o3cRLPwh3vnx2su1E",
    "description": "react, bootstrap and ThirdWeb",
    "_id": "8da4d1b5-6d53-4e83-b938-f21113b91757",
    "_updatedAt": "2022-05-29T17:44:59Z"
  },
  {
    "imgUrl": {
      "_type": "image",
      "asset": {
        "_ref": "image-db53adca404b7410a2869db815e4ce77da2e7e53-1200x900-png",
        "_type": "reference"
      }
    },
    "_rev": "dtdO4o3cRLPwh3vnx2syfE",
    "_type": "works",
    "title": "SunsetLeb Nft",
    "projectLink": "https://tamer_el_zein-sunsetleb.mdbgo.io/",
    "_createdAt": "2022-05-02T09:47:08Z",
    "codeLink": "https://github.com/ttzein6/sunsetleb",
    "description":
        "SunsetLeb Nft is a website for an NFT project (under development)",
    "_id": "a5a5a9ff-c6e9-47c0-aa22-7bba27e42f50",
    "_updatedAt": "2022-05-29T17:45:12Z",
    "tags": ["Web App", "All"]
  },
  {
    "_id": "a7265116-b490-4a62-aaf3-17c5ff6442c0",
    "title": "The Grill House Restaurant",
    "tags": ["Web App", "All"],
    "imgUrl": {
      "_type": "image",
      "asset": {
        "_ref": "image-b62651ef34a9e54c354ee437545acc348fbf0505-1200x900-png",
        "_type": "reference"
      }
    },
    "_createdAt": "2022-04-27T20:19:41Z",
    "codeLink": "blank",
    "_rev": "uXu54HNF3y7MjHA6MX6kdb",
    "projectLink": "blank",
    "_type": "works",
    "description":
        "A restaurant Website project, responsive , developed using Html, Css, Js, Bootstrap only",
    "_updatedAt": "2022-05-02T09:45:21Z"
  },
  {
    "title": "Flappy Bird ",
    "tags": ["All"],
    "imgUrl": {
      "_type": "image",
      "asset": {
        "_type": "reference",
        "_ref": "image-db53adca404b7410a2869db815e4ce77da2e7e53-1200x900-png"
      }
    },
    "_createdAt": "2022-05-28T13:54:14Z",
    "_rev": "e2uEVN0SPDCAHInN3IaGef",
    "_type": "works",
    "description": "Flappy Bird Game using C++",
    "_id": "c768f0ea-0aa5-4a10-9dc2-78df4b4555b9",
    "projectLink": "https://github.com/Compzool/FlappyBird-FullGame",
    "codeLink": "https://github.com/Compzool/FlappyBird-FullGame",
    "_updatedAt": "2022-05-28T13:54:14Z"
  }
];
