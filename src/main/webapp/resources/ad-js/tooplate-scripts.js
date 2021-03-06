const width_threshold = 480;

function drawLineChart(data) {
	
  if ($("#lineChart").length) {
    ctxLine = document.getElementById("lineChart").getContext("2d");
    optionsLine = {
      scales: {
        yAxes: [
          {
            scaleLabel: {
              display: true,
            /* labelString: "Hits",*/
            	 ticks:{
            		 max:100,
            		 min:0,
            		 stepSize:5
            	 }
            	 
            }
          }
        ]
      }
    };

    // Set aspect ratio based on window width
    optionsLine.maintainAspectRatio =
      $(window).width() < width_threshold ? false : true;

    configLine = {
      type: "line", //차트타입
      data: {
    	  labels: ['18세미만', '18~24세', '25~34세', '35~44세', '45~54세'],
        datasets: [
          {
            label: "회원",
            data: data,
            fill: false,
            borderColor: "rgb(75, 192, 192)",
           /* cubicInterpolationMode: "monotone",*/
            pointRadius: 0
          }
         
        ]
      },
      options: optionsLine
    };

    lineChart = new Chart(ctxLine, configLine);
  }
}
 
function drawLineChart2(data) {
	
	  if ($("#lineChart2").length) {
	    ctxLine = document.getElementById("lineChart2").getContext("2d");
	    optionsLine = {
	      scales: {
	        yAxes: [
	          {
	            scaleLabel: {
	              display: true,
	            /* labelString: "Hits",*/
	            	 ticks:{
	            		 max:100,
	            		 min:0,
	            		 stepSize:5
	            	 }
	            	 
	            }
	          }
	        ]
	      }
	    };

	    // Set aspect ratio based on window width
	    optionsLine.maintainAspectRatio =
	      $(window).width() < width_threshold ? false : true;

	    configLine = {
	      type: "line", //차트타입
	      data: {
	          labels: ['20대', '30대', '40대', '50대', '상관없음'],
	         datasets: [
	      
	        /*   {
	             label: "트레이너",
	             data: [33, 45, 37, 21, 55],
	             fill: false,
	             borderColor: "rgba(255,99,132,1)",
	             cubicInterpolationMode: "monotone",
	             pointRadius: 0
	           },*/
	      {
	             label: "트레이너",
	             data: data,
	             fill: false,
	             borderColor: "rgba(153, 102, 255, 1)",
	             cubicInterpolationMode: "monotone",
	             pointRadius: 0
	           }
	         ]
	       },
	      options: optionsLine
	    };

	    lineChart2 = new Chart(ctxLine, configLine);
	  }
	}







function drawBarChart(data) {
  if ($("#barChart").length) {
    ctxBar = document.getElementById("barChart").getContext("2d");

    optionsBar = {
      responsive: true,
      scales: {
        yAxes: [
          {
            barPercentage: 0.3,
            ticks: {
              beginAtZero: true,
              ticks:{
          		 max:30,
          		 min:0       		
          	 }
            },
            scaleLabel: {
              display: true
            
             /* labelString: "Hits"*/
            }
          }
        ]
      }
    };

    optionsBar.maintainAspectRatio =
      $(window).width() < width_threshold ? false : true;

    /**
     * COLOR CODES
     * Red: #F7604D
     * Aqua: #4ED6B8
     * Green: #A8D582
     * Yellow: #D7D768
     * Purple: #9D66CC
     * Orange: #DB9C3F
     * Blue: #3889FC
     */

    configBar = {
      type: "horizontalBar",
      data: {
        labels: ["맨몸운동", "웨이트", "필라테스", "요가"],
        datasets: [
          {
            label: "# of 트레이너",
            data:data,
            backgroundColor: [
              "#F7604D",
              "#4ED6B8",
              "#A8D582",
              "#D7D768",
              "#9D66CC",
              "#DB9C3F",
              "#3889FC"
            ],
            borderWidth: 0
          }
        ]
      },
      options: optionsBar
    };

    barChart = new Chart(ctxBar, configBar);
  }
}

function drawBarChart2(data) {
	  if ($("#barChart2").length) {
	    ctxBar = document.getElementById("barChart2").getContext("2d");

	    optionsBar = {
	      responsive: true,
	      scales: {
	        yAxes: [
	          {
	            barPercentage: 0.5,
	            ticks: {
	              beginAtZero: true
	            },
	            scaleLabel: {
	              display: true,
	             /* labelString: "Hits"*/
	            }
	          }
	        ]
	      }
	    };

	    optionsBar.maintainAspectRatio =
	      $(window).width() < width_threshold ? false : true;

	    /**
	     * COLOR CODES
	     * Red: #F7604D
	     * Aqua: #4ED6B8
	     * Green: #A8D582
	     * Yellow: #D7D768
	     * Purple: #9D66CC
	     * Orange: #DB9C3F
	     * Blue: #3889FC
	     */

	    configBar = {
	      type: "horizontalBar",
	      data: {
	        labels: ["A", "B", "S"],
	        datasets: [
	          {
	            label: "이용하는 트레이너",
	            data:data,
	            backgroundColor: [
	              "#F7604D",
	              "#4ED6B8",
	              "#A8D582",
	              "#D7D768",
	              "#9D66CC",
	              "#DB9C3F",
	              "#3889FC"
	            ],
	            borderWidth: 0
	          }
	        ]
	      },
	      options: optionsBar
	    };

	    barChart2 = new Chart(ctxBar, configBar);
	  }
	}

function drawPieChart(data) {
  if ($("#pieChart").length) {
    var chartHeight = 300;

    $("#pieChartContainer").css("height", chartHeight + "px");

    ctxPie = document.getElementById("pieChart").getContext("2d");

    optionsPie = {
      responsive: true,
      maintainAspectRatio: false,
      layout: {
        padding: {
          left: 10,
          right: 10,
          top: 10,
          bottom: 10
        }
      },
      legend: {
        position: "top"
      }
    };

    configPie = {
      type: "pie",
      data: {
        datasets: [
          {
            data: data,
            backgroundColor: ["#F7604D", "#4ED6B8"],
            label: "Storage"
          }
        ],
        labels: [
          "여",
          "남"
          
        ]
      },
      options: optionsPie
    };

    pieChart = new Chart(ctxPie, configPie);
  }
}

function drawPieChart2(data) {
	
  if ($("#pieChart2").length) {
	    var chartHeight = 300;
	    
	    $("#pieChartContainer").css("height", chartHeight + "px");
	    ctxPie = document.getElementById("pieChart2").getContext("2d");

	    optionsPie = {
	      responsive: true,
	      maintainAspectRatio: false,
	      layout: {
	        padding: {
	          left: 10,
	          right: 10,
	          top: 10,
	          bottom: 10
	        }
	      },
	      legend: {
	        position: "top"
	      }
	    };

	    configPie = {
	      type: "pie",
	      data: {
	        datasets: [
	          {
	            data: data,
	            backgroundColor: ["#F7604D", "#4ED6B8"],
	            label: "Storage"
	          }
	        ],
	        labels: [
	          "여",
	          "남"
	          
	        ]
	      },
	      options: optionsPie
	    };

	    pieChart2 = new Chart(ctxPie, configPie);
	  }
}
  
 /* if ($("#pieChart3").length) {
	    var chartHeight = 300;
	    
	    $("#pieChartContainer").css("height", chartHeight + "px");
	    ctxPie = document.getElementById("pieChart3").getContext("2d");

	    optionsPie = {
	      responsive: true,
	      maintainAspectRatio: false,
	      layout: {
	        padding: {
	          left: 10,
	          right: 10,
	          top: 10,
	          bottom: 10
	        }
	      },
	      legend: {
	        position: "top"
	      }
	    };

	    configPie = {
	      type: "pie",
	      data: {
	        datasets: [
	          {
	            data: [15, 78],
	            backgroundColor: ["#F7604D", "#4ED6B8"],
	            label: "Storage"
	          }
	        ],
	        labels: [
	          "여",
	          "남"
	          
	        ]
	      },
	      options: optionsPie
	    };

	    pieChart3 = new Chart(ctxPie, configPie);
	  }
}*/



function updateLineChart() {
  if (lineChart) {
    lineChart.options = optionsLine;
    lineChart.update();
  }
}

function updateBarChart() {
  if (barChart) {
    barChart.options = optionsBar;
    barChart.update();
  }
}

