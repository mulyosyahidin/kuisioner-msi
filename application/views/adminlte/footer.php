<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
  <footer class="main-footer">
    <strong>Copyright &copy; 2019 <?php echo anchor(base_url(), 'Survey MSI #10'); ?>.</strong>
  </footer>

  <aside class="control-sidebar control-sidebar-dark">
  </aside>
</div>

<script src="<?php echo base_url('assets/adminlte/plugins/jquery/jquery.min.js'); ?>"></script>
<script src="<?php echo base_url('assets/adminlte/plugins/bootstrap/js/bootstrap.bundle.min.js'); ?>"></script>
<script src="<?php echo base_url('assets/adminlte/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js'); ?>"></script>
<script src="<?php echo base_url('assets/adminlte/js/adminlte.js'); ?>"></script>
<script src="<?php echo base_url('assets/adminlte/plugins/chart.js/Chart.min.js'); ?>"></script>
<script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@0.4.0/dist/chartjs-plugin-datalabels.min.js"></script>

<script>
  $(function() {
    var config = {
      type: 'pie',
      data : {
        datasets: [{
          data: [
            <?php foreach ($bases as $base) : ?>
            <?php echo $base->jumlah; ?>,
            <?php endforeach; ?>
          ],
          backgroundColor: [
            '#f7464a',
            '#46bfbd',
            '#fdb45c'
          ],
        }],
        labels: [
          <?php foreach ($bases as $base) : ?>
            '<?php echo $base->name; ?>',
            <?php endforeach; ?>
        ]
      },
      options: {
        plugins: {
          datalabels: {
            formatter: (value, ctx) => {
              let sum = 0;
              let dataArr = ctx.chart.data.datasets[0].data;

              dataArr.map(data => {
                sum += data;
              });
  
              let percentage = (value*100 / sum).toFixed(2) +"%";
              return percentage;
            },
            color: '#fff',
          }
        },
        responsive: true,
        legend: {
          position: 'top',
          labels: {
            fontColor: '#fff'
          }
        },
        animation: {
          animateScale: true,
          animeRotate: true
        }
      }
    }

    var ChartContext = $('#stats').get(0).getContext('2d')
    window.pPercentage = new Chart(ChartContext, config);

    var coloR = [];

    var dynamicColors = function() {
      var r = Math.floor(Math.random() * 255);
      var g = Math.floor(Math.random() * 255);
      var b = Math.floor(Math.random() * 255);

      return 'rgb('+ r +', '+ g +', '+ b +')';
    }

    var config = {
      type: 'pie',
      data : {
        datasets: [{
          data: [
            <?php foreach ($all_language as $base) : ?>
            <?php echo $base->jumlah; ?>,
            <?php endforeach; ?>
          ],
          backgroundColor: dynamicColors,
        }],
        labels: [
          <?php foreach ($all_language as $base) : ?>
            '<?php echo $base->name; ?> (<?php echo $base->parent; ?>)',
            <?php endforeach; ?>
        ]
      },
      options: {
        plugins: {
          datalabels: {
            formatter: (value, ctx) => {
              let sum = 0;
              let dataArr = ctx.chart.data.datasets[0].data;

              dataArr.map(data => {
                sum += data;
              });
  
              let percentage = (value*100 / sum).toFixed(2) +"%";
              return percentage;
            },
            color: '#fff',
          }
        },
        responsive: true,
        legend: {
          position: 'top',
          labels: {
            fontColor: '#1F8BFF'
          }
        },
        animation: {
          animateScale: true,
          animeRotate: true
        }
      }
    }

    var ChartContext = $('#statsAll').get(0).getContext('2d')
    window.pPercentage = new Chart(ChartContext, config);


    var config = {
      type: 'pie',
      data : {
        datasets: [{
          data: [
            <?php foreach ($desktop as $base) : ?>
            <?php echo $base->jumlah; ?>,
            <?php endforeach; ?>
          ],
          backgroundColor: dynamicColors,
        }],
        labels: [
          <?php foreach ($desktop as $base) : ?>
            '<?php echo $base->name; ?>',
            <?php endforeach; ?>
        ]
      },
      options: {
        plugins: {
          datalabels: {
            formatter: (value, ctx) => {
              let sum = 0;
              let dataArr = ctx.chart.data.datasets[0].data;

              dataArr.map(data => {
                sum += data;
              });
  
              let percentage = (value*100 / sum).toFixed(2) +"%";
              return percentage;
            },
            color: '#fff',
          }
        },
        responsive: true,
        legend: {
          position: 'top',
          labels: {
            fontColor: '#1F8BFF'
          }
        },
        animation: {
          animateScale: true,
          animeRotate: true
        }
      }
    }

    var ChartContext = $('#statsDesktop').get(0).getContext('2d')
    window.pPercentage = new Chart(ChartContext, config);

    var config = {
      type: 'pie',
      data : {
        datasets: [{
          data: [
            <?php foreach ($mobiles as $base) : ?>
            <?php echo $base->jumlah; ?>,
            <?php endforeach; ?>
          ],
          backgroundColor: dynamicColors,
        }],
        labels: [
          <?php foreach ($mobiles as $base) : ?>
            '<?php echo $base->name; ?>',
            <?php endforeach; ?>
        ]
      },
      options: {
        plugins: {
          datalabels: {
            formatter: (value, ctx) => {
              let sum = 0;
              let dataArr = ctx.chart.data.datasets[0].data;

              dataArr.map(data => {
                sum += data;
              });
  
              let percentage = (value*100 / sum).toFixed(2) +"%";
              return percentage;
            },
            color: '#fff',
          }
        },
        responsive: true,
        legend: {
          position: 'top',
          labels: {
            fontColor: '#1F8BFF'
          }
        },
        animation: {
          animateScale: true,
          animeRotate: true
        }
      }
    }

    var ChartContext = $('#statsMobile').get(0).getContext('2d')
    window.pPercentage = new Chart(ChartContext, config);

    var config = {
      type: 'pie',
      data : {
        datasets: [{
          data: [
            <?php foreach ($web as $base) : ?>
            <?php echo $base->jumlah; ?>,
            <?php endforeach; ?>
          ],
          backgroundColor: dynamicColors,
        }],
        labels: [
          <?php foreach ($web as $base) : ?>
            '<?php echo $base->name; ?>',
            <?php endforeach; ?>
        ]
      },
      options: {
        plugins: {
          datalabels: {
            formatter: (value, ctx) => {
              let sum = 0;
              let dataArr = ctx.chart.data.datasets[0].data;

              dataArr.map(data => {
                sum += data;
              });
  
              let percentage = (value*100 / sum).toFixed(2) +"%";
              return percentage;
            },
            color: '#fff',
          }
        },
        responsive: true,
        legend: {
          position: 'right',
          labels: {
            fontColor: '#1F8BFF'
          }
        },
        animation: {
          animateScale: true,
          animeRotate: true
        }
      }
    }

    var ChartContext = $('#statsWeb').get(0).getContext('2d')
    window.pPercentage = new Chart(ChartContext, config);
    
  });
</script>

<!-- Elapsed in {elapsed_time} times  -->
</body>
</html>