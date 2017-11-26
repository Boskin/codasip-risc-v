 var codasip_asips_data = {
"information" : {
"ide_version": "6.8.2-1.win.7.EVALUATION",
"project_name": "RISC_V5",
"date": "2017-11-26 01:01:07"
},
"PerUnit" : [
{
"unit": "Global Resources",
"detail": [{"count": 1,
"bitwidth": 32,
"type": "Register File",
"detail": "size: 32, data ports: read 2x, write 1x"
},
{"count": 1,
"bitwidth": 32,
"type": "Register",
"detail": ""
},
{"count": 16,
"bitwidth": 32,
"type": "Pipeline Register",
"detail": ""
},
{"count": 6,
"bitwidth": 5,
"type": "Pipeline Register",
"detail": ""
},
{"count": 4,
"bitwidth": 2,
"type": "Pipeline Register",
"detail": ""
},
{"count": 3,
"bitwidth": 4,
"type": "Pipeline Register",
"detail": ""
},
{"count": 1,
"bitwidth": 1,
"type": "Pipeline Register",
"detail": ""
}
]
},
{
"unit": "ex",
"detail": [{"count": 2,
"bitwidth": 32,
"type": "Adder",
"detail": ""
},
{"count": 2,
"bitwidth": 32,
"type": "Comparator",
"detail": "operator: <"
},
{"count": 2,
"bitwidth": 32,
"type": "Comparator",
"detail": "operator: >="
},
{"count": 1,
"bitwidth": 32,
"type": "Logical Shift Left",
"detail": ""
},
{"count": 1,
"bitwidth": 32,
"type": "Logical Shift Right",
"detail": ""
},
{"count": 1,
"bitwidth": 32,
"type": "Arithmetic Shift Right",
"detail": ""
},
{"count": 3,
"bitwidth": 32,
"type": "Multiplexer",
"detail": "inputs: 4"
},
{"count": 1,
"bitwidth": 32,
"type": "Multiplexer",
"detail": "inputs: 14"
},
{"count": 1,
"bitwidth": 32,
"type": "Multiplexer",
"detail": "inputs: 2"
}
]
},
{
"unit": "ex_branch",
"detail": [{"count": 1,
"bitwidth": 32,
"type": "Adder",
"detail": ""
}
]
},
{
"unit": "fe",
"detail": [{"count": 1,
"bitwidth": 32,
"type": "Adder",
"detail": ""
},
{"count": 1,
"bitwidth": 32,
"type": "Multiplexer",
"detail": "inputs: 2"
}
]
},
{
"unit": "id",
"detail": [{"count": 1,
"bitwidth": 1,
"type": "Multiplexer",
"detail": "inputs: 2"
},
{"count": 1,
"bitwidth": 17,
"type": "Multiplexer",
"detail": "inputs: 13"
}
]
},
{
"unit": "id_output",
"detail": [{"count": 2,
"bitwidth": 5,
"type": "Comparator",
"detail": "operator: =="
},
{"count": 2,
"bitwidth": 32,
"type": "Multiplexer",
"detail": "inputs: 2"
}
]
},
{
"unit": "isa_hw",
"detail": [{"count": 2,
"bitwidth": 4,
"type": "Multiplexer",
"detail": "inputs: 4"
},
{"count": 2,
"bitwidth": 4,
"type": "Multiplexer",
"detail": "inputs: 7"
},
{"count": 1,
"bitwidth": 4,
"type": "Multiplexer",
"detail": "inputs: 6"
},
{"count": 1,
"bitwidth": 4,
"type": "Multiplexer",
"detail": "inputs: 10"
}
]
},
{
"unit": "me",
"detail": [{"count": 3,
"bitwidth": 1,
"type": "Multiplexer",
"detail": "inputs: 1"
},
{"count": 2,
"bitwidth": 3,
"type": "Multiplexer",
"detail": "inputs: 10"
},
{"count": 1,
"bitwidth": 32,
"type": "Multiplexer",
"detail": "inputs: 4"
},
{"count": 1,
"bitwidth": 32,
"type": "Multiplexer",
"detail": "inputs: 5"
}
]
},
{
"unit": "pipe_control",
"detail": [{"count": 4,
"bitwidth": 1,
"type": "Multiplexer",
"detail": "inputs: 1"
}
]
},
{
"unit": "wb",
"detail": [{"count": 1,
"bitwidth": 32,
"type": "Multiplexer",
"detail": "inputs: 1"
}
]
}
]
,
"PerResourceType": [{"count": 1,
"bitwidth": 32,
"type": "Register File",
"detail": "size: 32, data ports: read 2x, write 1x"
},
{"count": 1,
"bitwidth": 32,
"type": "Register",
"detail": ""
},
{"count": 16,
"bitwidth": 32,
"type": "Pipeline Register",
"detail": ""
},
{"count": 6,
"bitwidth": 5,
"type": "Pipeline Register",
"detail": ""
},
{"count": 4,
"bitwidth": 2,
"type": "Pipeline Register",
"detail": ""
},
{"count": 3,
"bitwidth": 4,
"type": "Pipeline Register",
"detail": ""
},
{"count": 1,
"bitwidth": 1,
"type": "Pipeline Register",
"detail": ""
},
{"count": 4,
"bitwidth": 32,
"type": "Adder",
"detail": ""
},
{"count": 2,
"bitwidth": 32,
"type": "Comparator",
"detail": "operator: <"
},
{"count": 2,
"bitwidth": 32,
"type": "Comparator",
"detail": "operator: >="
},
{"count": 2,
"bitwidth": 5,
"type": "Comparator",
"detail": "operator: =="
},
{"count": 1,
"bitwidth": 32,
"type": "Logical Shift Left",
"detail": ""
},
{"count": 1,
"bitwidth": 32,
"type": "Logical Shift Right",
"detail": ""
},
{"count": 1,
"bitwidth": 32,
"type": "Arithmetic Shift Right",
"detail": ""
},
{"count": 7,
"bitwidth": 1,
"type": "Multiplexer",
"detail": "inputs: 1"
},
{"count": 4,
"bitwidth": 32,
"type": "Multiplexer",
"detail": "inputs: 4"
},
{"count": 4,
"bitwidth": 32,
"type": "Multiplexer",
"detail": "inputs: 2"
},
{"count": 2,
"bitwidth": 4,
"type": "Multiplexer",
"detail": "inputs: 4"
},
{"count": 2,
"bitwidth": 4,
"type": "Multiplexer",
"detail": "inputs: 7"
},
{"count": 2,
"bitwidth": 3,
"type": "Multiplexer",
"detail": "inputs: 10"
},
{"count": 1,
"bitwidth": 1,
"type": "Multiplexer",
"detail": "inputs: 2"
},
{"count": 1,
"bitwidth": 17,
"type": "Multiplexer",
"detail": "inputs: 13"
},
{"count": 1,
"bitwidth": 4,
"type": "Multiplexer",
"detail": "inputs: 6"
},
{"count": 1,
"bitwidth": 4,
"type": "Multiplexer",
"detail": "inputs: 10"
},
{"count": 1,
"bitwidth": 32,
"type": "Multiplexer",
"detail": "inputs: 14"
},
{"count": 1,
"bitwidth": 32,
"type": "Multiplexer",
"detail": "inputs: 5"
},
{"count": 1,
"bitwidth": 32,
"type": "Multiplexer",
"detail": "inputs: 1"
}
],
}
