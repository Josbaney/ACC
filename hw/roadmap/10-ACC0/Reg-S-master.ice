{
  "image": "",
  "state": {
    "pan": {
      "x": 26.044643736202417,
      "y": 21.55098906759354
    },
    "zoom": 0.7373583912849426
  },
  "board": "icezum",
  "graph": {
    "blocks": [
      {
        "id": "6ec1612e-5412-4a4d-9dfa-08230a287868",
        "type": "basic.input",
        "data": {
          "label": "clk",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 168,
          "y": 112
        }
      },
      {
        "id": "c7d45334-47bf-4eeb-9d14-c5b138004340",
        "type": "basic.input",
        "data": {
          "label": "inc",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 168,
          "y": 200
        }
      },
      {
        "id": "9861e498-3d11-4426-ac0d-577d58d69e84",
        "type": "basic.output",
        "data": {
          "label": "s11",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 1056,
          "y": 0
        }
      },
      {
        "id": "3932d589-9e61-424e-af2e-fc48a3d49839",
        "type": "basic.output",
        "data": {
          "label": "s10",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 1056,
          "y": 80
        }
      },
      {
        "id": "913661ff-5232-4b8b-8c9f-5cde13af1118",
        "type": "basic.output",
        "data": {
          "label": "s9",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 1056,
          "y": 160
        }
      },
      {
        "id": "8cfc5a94-6f88-4066-93e0-959e1a6da669",
        "type": "basic.output",
        "data": {
          "label": "s8",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 1056,
          "y": 240
        }
      },
      {
        "id": "f92a469e-f5df-4431-9562-2ec310d9afea",
        "type": "basic.output",
        "data": {
          "label": "s7",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 1056,
          "y": 320
        }
      },
      {
        "id": "725c8b95-0ac4-42f7-b4eb-b7acc2aa5f50",
        "type": "basic.output",
        "data": {
          "label": "s6",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 1056,
          "y": 400
        }
      },
      {
        "id": "d5ed0a9c-a288-4147-961f-a23ec360b77f",
        "type": "basic.output",
        "data": {
          "label": "s5",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 1056,
          "y": 480
        }
      },
      {
        "id": "37c5dd9f-7596-4b45-bcb9-46a023d051f3",
        "type": "basic.output",
        "data": {
          "label": "s4",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 1056,
          "y": 560
        }
      },
      {
        "id": "42353bdc-b109-4fa4-9383-5905be5330c5",
        "type": "basic.output",
        "data": {
          "label": "s3",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 1056,
          "y": 640
        }
      },
      {
        "id": "af7889b0-8599-4e6d-bc16-e7626700b26d",
        "type": "basic.output",
        "data": {
          "label": "s2",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 1056,
          "y": 720
        }
      },
      {
        "id": "0d14f442-7c1a-47d7-9cfd-20aef88c2e38",
        "type": "basic.output",
        "data": {
          "label": "s1",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 1056,
          "y": 800
        }
      },
      {
        "id": "e1dcf5c3-647e-4f4a-8208-7d7127cc4e1c",
        "type": "basic.output",
        "data": {
          "label": "s0",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 1056,
          "y": 880
        }
      },
      {
        "id": "4f2af64b-c511-4840-9faf-34967a91b840",
        "type": "basic.code",
        "data": {
          "code": "localparam AW = 12;     //-- Address bus\n\n//-- Initial address\nlocalparam BOOT_ADDR = 12'h800;\n\n//-- Register S: Accessing memory\nreg  [AW-1: 0] S = BOOT_ADDR;\n\nalways @(posedge clk) \nbegin\n    if (inc)\n      S <= S + 1;\n    else\n      if (dec)\n        S <= S - 1;\nend\n\nassign {s11,s10,s9,s8,s7,s6,s5,s4,s3,s2,s1,s0} = S;\n",
          "ports": {
            "in": [
              "clk",
              "inc",
              "dec"
            ],
            "out": [
              "s11",
              "s10",
              "s9",
              "s8",
              "s7",
              "s6",
              "s5",
              "s4",
              "s3",
              "s2",
              "s1",
              "s0"
            ]
          }
        },
        "position": {
          "x": 368,
          "y": 104
        }
      },
      {
        "id": "b15ea610-53e8-49db-8218-b1d7e1dd784e",
        "type": "basic.input",
        "data": {
          "label": "dec",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 168,
          "y": 288
        }
      }
    ],
    "wires": [
      {
        "source": {
          "block": "6ec1612e-5412-4a4d-9dfa-08230a287868",
          "port": "out"
        },
        "target": {
          "block": "4f2af64b-c511-4840-9faf-34967a91b840",
          "port": "clk"
        }
      },
      {
        "source": {
          "block": "c7d45334-47bf-4eeb-9d14-c5b138004340",
          "port": "out"
        },
        "target": {
          "block": "4f2af64b-c511-4840-9faf-34967a91b840",
          "port": "inc"
        }
      },
      {
        "source": {
          "block": "b15ea610-53e8-49db-8218-b1d7e1dd784e",
          "port": "out"
        },
        "target": {
          "block": "4f2af64b-c511-4840-9faf-34967a91b840",
          "port": "dec"
        }
      },
      {
        "source": {
          "block": "4f2af64b-c511-4840-9faf-34967a91b840",
          "port": "s11"
        },
        "target": {
          "block": "9861e498-3d11-4426-ac0d-577d58d69e84",
          "port": "in"
        },
        "vertices": [
          {
            "x": 824,
            "y": 64
          }
        ]
      },
      {
        "source": {
          "block": "4f2af64b-c511-4840-9faf-34967a91b840",
          "port": "s10"
        },
        "target": {
          "block": "3932d589-9e61-424e-af2e-fc48a3d49839",
          "port": "in"
        },
        "vertices": [
          {
            "x": 840,
            "y": 112
          }
        ]
      },
      {
        "source": {
          "block": "4f2af64b-c511-4840-9faf-34967a91b840",
          "port": "s9"
        },
        "target": {
          "block": "913661ff-5232-4b8b-8c9f-5cde13af1118",
          "port": "in"
        }
      },
      {
        "source": {
          "block": "4f2af64b-c511-4840-9faf-34967a91b840",
          "port": "s8"
        },
        "target": {
          "block": "8cfc5a94-6f88-4066-93e0-959e1a6da669",
          "port": "in"
        },
        "vertices": [
          {
            "x": 1008,
            "y": 224
          }
        ]
      },
      {
        "source": {
          "block": "4f2af64b-c511-4840-9faf-34967a91b840",
          "port": "s7"
        },
        "target": {
          "block": "f92a469e-f5df-4431-9562-2ec310d9afea",
          "port": "in"
        },
        "vertices": [
          {
            "x": 1000,
            "y": 296
          }
        ]
      },
      {
        "source": {
          "block": "4f2af64b-c511-4840-9faf-34967a91b840",
          "port": "s6"
        },
        "target": {
          "block": "725c8b95-0ac4-42f7-b4eb-b7acc2aa5f50",
          "port": "in"
        },
        "vertices": [
          {
            "x": 992,
            "y": 376
          }
        ]
      },
      {
        "source": {
          "block": "4f2af64b-c511-4840-9faf-34967a91b840",
          "port": "s5"
        },
        "target": {
          "block": "d5ed0a9c-a288-4147-961f-a23ec360b77f",
          "port": "in"
        },
        "vertices": [
          {
            "x": 984,
            "y": 464
          }
        ]
      },
      {
        "source": {
          "block": "4f2af64b-c511-4840-9faf-34967a91b840",
          "port": "s4"
        },
        "target": {
          "block": "37c5dd9f-7596-4b45-bcb9-46a023d051f3",
          "port": "in"
        },
        "vertices": [
          {
            "x": 976,
            "y": 536
          }
        ]
      },
      {
        "source": {
          "block": "4f2af64b-c511-4840-9faf-34967a91b840",
          "port": "s3"
        },
        "target": {
          "block": "42353bdc-b109-4fa4-9383-5905be5330c5",
          "port": "in"
        },
        "vertices": [
          {
            "x": 968,
            "y": 616
          }
        ]
      },
      {
        "source": {
          "block": "4f2af64b-c511-4840-9faf-34967a91b840",
          "port": "s2"
        },
        "target": {
          "block": "af7889b0-8599-4e6d-bc16-e7626700b26d",
          "port": "in"
        },
        "vertices": [
          {
            "x": 960,
            "y": 688
          }
        ]
      },
      {
        "source": {
          "block": "4f2af64b-c511-4840-9faf-34967a91b840",
          "port": "s1"
        },
        "target": {
          "block": "0d14f442-7c1a-47d7-9cfd-20aef88c2e38",
          "port": "in"
        },
        "vertices": [
          {
            "x": 952,
            "y": 776
          }
        ]
      },
      {
        "source": {
          "block": "4f2af64b-c511-4840-9faf-34967a91b840",
          "port": "s0"
        },
        "target": {
          "block": "e1dcf5c3-647e-4f4a-8208-7d7127cc4e1c",
          "port": "in"
        },
        "vertices": [
          {
            "x": 944,
            "y": 832
          }
        ]
      }
    ]
  },
  "deps": {}
}