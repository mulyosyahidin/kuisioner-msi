<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
  <div class="content-wrapper">
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">Ringkasan</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Ringkasan</li>
            </ol>
          </div>
        </div>
      </div>
    </div>
   
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-success">
              <div class="inner">
                <h3><?php echo $total['base']; ?></h3>

                <p>Basis</p>
              </div>
              <div class="icon">
                <i class="ion ion-bag"></i>
              </div>
            </div>
          </div>
          
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-primary">
              <div class="inner">
                <h3><?php echo $total['items']; ?></h3>

                <p>Bahasa</p>
              </div>
              <div class="icon">
                <i class="ion ion-stats-bars"></i>
              </div>
            </div>
          </div>
          
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-warning">
              <div class="inner">
                <h3><?php echo $total['students']; ?></h3>

                <p>Mahasiswa</p>
              </div>
              <div class="icon">
                <i class="ion ion-person-add"></i>
              </div>
            </div>
          </div>
         
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
                <h3><?php echo $total['votes']; ?></h3>

                <p>Pilihan</p>
              </div>
              <div class="icon">
                <i class="ion ion-pie-graph"></i>
              </div>
            </div>
          </div>
        </div>
       
        <div class="row">
          <section class="col-lg-7 connectedSortable">
            <!-- Custom tabs (Charts with tabs)-->
            <div class="card p-0">
              <div class="card-header">
                <h3 class="card-title">
                  <i class="fas fa-chart-pie mr-1"></i>
                  Statistik Bahasa
                </h3>
                <div class="card-tools">
                  <ul class="nav nav-pills ml-auto">
                    <li class="nav-item">
                      <a class="nav-link active" href="#all" data-toggle="tab">Semua</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#desktop" data-toggle="tab">Desktop</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#mobile" data-toggle="tab">Mobile</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#web" data-toggle="tab">Web</a>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="card-body">
                <div class="tab-content">
                  <div class="chart tab-pane active" id="all">
                    <canvas id="statsAll" height="300" style="height: 300px;"></canvas>  
                  </div>
                  <div class="chart p-0 tab-pane" id="desktop">
                  <canvas id="statsDesktop" height="300" style="height: 300px;"></canvas>  
                  </div> 
                  <div class="chart tab-pane" id="mobile">
                  <canvas id="statsMobile" height="300" style="height: 300px;"></canvas>  
                  </div>
                  <div class="chart tab-pane" id="web">
                  <canvas id="statsWeb" height="300" style="height: 300px;"></canvas>  
                  </div>

                </div>
              </div>
            </div>
          </section>
          <section class="col-lg-5 connectedSortable">
            <div class="card bg-gradient-primary">
              <div class="card-header border-0">
                <h3 class="card-title">
                  <i class="fas fa-chart-bar"></i>
                  Statistik Basis
                </h3>
              </div>
              <div class="card-body">
                <canvas id="stats" height="300" style="height: 300px;"></canvas>
              </div>
            </div>
          </section>
        </div>
      </div>
    </section>
  </div>