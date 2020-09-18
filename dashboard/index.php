<?php 

require_once("includes/header.php");
require_once("../includes/functions.php");
require('includes/config.php');

?>

    <div class="az-content az-content-dashboard">
      <div class="container mg-t-50">
        <div class="az-content-body">
            
            <center>
            <form action="includes/shorten.php" method="post" id="shortener">
              <div class="col-lg-8 mg-t-20 mg-lg-t-0">
                  <div class="input-group">
                  
                      <input type="text" name="longurl" id="longurl" class="form-control" placeholder="Enter URL...">
                      <span class="input-group-btn">
                      <input class="btn btn-primary" type="submit" value="shorten url">
                      </span>
                   
                  </div>
              </div>
           </form>
            </center>

    
            <div class="az-content-label mg-b-5 mg-t-100">Recent Links</div>
            <div class="table-responsive mg-t-30">
            <table class="table table-hover mg-b-0">
              <thead>
                <tr>
                  <th>ID</th>
                  <th>Link</th>
                  <th>Short Link</th>
                  <th>Stats</th>
                </tr>
              </thead>
              <tbody>
              <?php

              $sessionvariable = $_SESSION['user_id'];
            
              $query = "SELECT * FROM shortenedurls WHERE creator = $sessionvariable ";
              $select_user_query = mysqli_query($conn, $query);
              if (!$select_user_query) {
        
                  die("QUERY FAILED" . mysqli_error($conn));
        
              }
        
        
              while ($row = mysqli_fetch_array($select_user_query)) {
        
                  $link_id = $row['id'];
                  $link_url = $row['long_url'];
                  $link_short = $row['created'];

            ?>

                <tr>
                  <th scope="row"><?php echo $link_id ?></th>
                  <td><?php echo $link_url ?></td>
                  <td><a href="includes/redirect.php?s= <?php echo $link_short ?>"><?php echo "http://localhost/shortner/dashboard/includes/redirect.php?s=".$link_short ?></a></td>
                  <td><a href="stats.php" class="btn btn-purple">View</a></td>
                </tr>


            <?php 
              
            }
            
            ?>

                
              </tbody>
            </table>
          </div>


        </div>
     
      </div>
    </div>
    <!-- az-content -->

    <div class="az-footer ht-40">
      <div class="container ht-100p pd-t-0-f">
        <span>&copy; 2020 Shortly</span>
      </div>
      <!-- container -->
    </div>
    <!-- az-footer -->

    <script src="https://www.bootstrapdash.com/demo/azia/v1.0.0/lib/jquery/jquery.min.js"></script>
    <script src="https://www.bootstrapdash.com/demo/azia/v1.0.0/lib/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="https://www.bootstrapdash.com/demo/azia/v1.0.0/lib/ionicons/ionicons.js"></script>
    <script src="https://www.bootstrapdash.com/demo/azia/v1.0.0/lib/jquery.flot/jquery.flot.js"></script>
    <script src="https://www.bootstrapdash.com/demo/azia/v1.0.0/lib/jquery.flot/jquery.flot.resize.js"></script>
    <script src="https://www.bootstrapdash.com/demo/azia/v1.0.0/lib/chart.js/Chart.bundle.min.js"></script>
    <script src="https://www.bootstrapdash.com/demo/azia/v1.0.0/lib/peity/jquery.peity.min.js"></script>

    <script src="https://www.bootstrapdash.com/demo/azia/v1.0.0/js/azia.js"></script>
    <script src="https://www.bootstrapdash.com/demo/azia/v1.0.0/js/chart.flot.sampledata.js"></script>
    <script src="https://www.bootstrapdash.com/demo/azia/v1.0.0/js/dashboard.sampledata.js"></script>
    <script>
      $(function () {
        "use strict";

        var plot = $.plot(
          "#flotChart",
          [
            {
              data: flotSampleData3,
              color: "#007bff",
              lines: {
                fillColor: { colors: [{ opacity: 0 }, { opacity: 0.2 }] },
              },
            },
            {
              data: flotSampleData4,
              color: "#560bd0",
              lines: {
                fillColor: { colors: [{ opacity: 0 }, { opacity: 0.2 }] },
              },
            },
          ],
          {
            series: {
              shadowSize: 0,
              lines: {
                show: true,
                lineWidth: 2,
                fill: true,
              },
            },
            grid: {
              borderWidth: 0,
              labelMargin: 8,
            },
            yaxis: {
              show: true,
              min: 0,
              max: 100,
              ticks: [
                [0, ""],
                [20, "20K"],
                [40, "40K"],
                [60, "60K"],
                [80, "80K"],
              ],
              tickColor: "#eee",
            },
            xaxis: {
              show: true,
              color: "#fff",
              ticks: [
                [25, "OCT 21"],
                [75, "OCT 22"],
                [100, "OCT 23"],
                [125, "OCT 24"],
              ],
            },
          }
        );

        $.plot(
          "#flotChart1",
          [
            {
              data: dashData2,
              color: "#00cccc",
            },
          ],
          {
            series: {
              shadowSize: 0,
              lines: {
                show: true,
                lineWidth: 2,
                fill: true,
                fillColor: { colors: [{ opacity: 0.2 }, { opacity: 0.2 }] },
              },
            },
            grid: {
              borderWidth: 0,
              labelMargin: 0,
            },
            yaxis: {
              show: false,
              min: 0,
              max: 35,
            },
            xaxis: {
              show: false,
              max: 50,
            },
          }
        );

        $.plot(
          "#flotChart2",
          [
            {
              data: dashData2,
              color: "#007bff",
            },
          ],
          {
            series: {
              shadowSize: 0,
              bars: {
                show: true,
                lineWidth: 0,
                fill: 1,
                barWidth: 0.5,
              },
            },
            grid: {
              borderWidth: 0,
              labelMargin: 0,
            },
            yaxis: {
              show: false,
              min: 0,
              max: 35,
            },
            xaxis: {
              show: false,
              max: 20,
            },
          }
        );

        //-------------------------------------------------------------//

        // Line chart
        $(".peity-line").peity("line");

        // Bar charts
        $(".peity-bar").peity("bar");

        // Bar charts
        $(".peity-donut").peity("donut");

        var ctx5 = document.getElementById("chartBar5").getContext("2d");
        new Chart(ctx5, {
          type: "bar",
          data: {
            labels: [0, 1, 2, 3, 4, 5, 6, 7],
            datasets: [
              {
                data: [2, 4, 10, 20, 45, 40, 35, 18],
                backgroundColor: "#560bd0",
              },
              {
                data: [3, 6, 15, 35, 50, 45, 35, 25],
                backgroundColor: "#cad0e8",
              },
            ],
          },
          options: {
            maintainAspectRatio: false,
            tooltips: {
              enabled: false,
            },
            legend: {
              display: false,
              labels: {
                display: false,
              },
            },
            scales: {
              yAxes: [
                {
                  display: false,
                  ticks: {
                    beginAtZero: true,
                    fontSize: 11,
                    max: 80,
                  },
                },
              ],
              xAxes: [
                {
                  barPercentage: 0.6,
                  gridLines: {
                    color: "rgba(0,0,0,0.08)",
                  },
                  ticks: {
                    beginAtZero: true,
                    fontSize: 11,
                    display: false,
                  },
                },
              ],
            },
          },
        });

        // Donut Chart
        var datapie = {
          labels: ["Search", "Email", "Referral", "Social", "Other"],
          datasets: [
            {
              data: [25, 20, 30, 15, 10],
              backgroundColor: [
                "#6f42c1",
                "#007bff",
                "#17a2b8",
                "#00cccc",
                "#adb2bd",
              ],
            },
          ],
        };

        var optionpie = {
          maintainAspectRatio: false,
          responsive: true,
          legend: {
            display: false,
          },
          animation: {
            animateScale: true,
            animateRotate: true,
          },
        };

        // For a doughnut chart
        var ctxpie = document.getElementById("chartDonut");
        var myPieChart6 = new Chart(ctxpie, {
          type: "doughnut",
          data: datapie,
          options: optionpie,
        });
      });
    </script>
  </body>
  
</html>

