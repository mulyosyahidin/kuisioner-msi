<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html lang="ID-id">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title><?php echo $title; ?></title>
  
    <link rel="stylesheet" href="<?php echo base_url('assets/adminlte/plugins/fontawesome-free/css/all.min.css'); ?>">
    <link rel="stylesheet" href="<?php echo base_url('assets/adminlte/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css'); ?>">
    <link rel="stylesheet" href="<?php echo base_url('assets/adminlte/css/adminlte.min.css'); ?>">
    <link rel="stylesheet" href="<?php echo base_url('assets/adminlte/plugins/toastr/toastr.min.css'); ?>">

    <link rel="icon" href="<?php echo base_url('assets/uploads/static/icon.png'); ?>" type="image/icon">

  </head>
  <body class="hold-transition sidebar-mini layout-fixed">
    <div class="wrapper">

      <nav class="main-header navbar navbar-expand navbar-white navbar-light">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>
          </li>
        </ul>

    <ul class="navbar-nav ml-auto">
      <li class="nav-item dropdown">
        <form class="form-inline ml-3" action="#" method="GET">
          <div class="input-group input-group-sm">
            <input class="form-control form-control-navbar" type="search" value="" name="query" placeholder="Cari data..." aria-label="Search">
            <div class="input-group-append">
              <button class="btn btn-navbar" type="submit">
              <i class="fas fa-search"></i>
            </button>
            </div>
          </div>
        </form>
  
      </li>
    </ul>
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link">
      <img src="<?php echo base_url('assets/msi/img/new_logo.png'); ?>" alt="" class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">Survey MSI</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="<?php echo base_url('assets/msi/img/ms2.jpg'); ?>" class="img-circle elevation-2" alt="Foto profil Martin MS">
        </div>
        <div class="info">
          <a href="#" class="d-block">Martin MS</a>
        </div>
      </div>

      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
        <li class="nav-item">
            <a href="<?php echo site_url('report/overview'); ?>" class="nav-link">
              <i class="nav-icon fa fa-chart-bar"></i>
              <p>
                Ringkasan
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="<?php echo site_url('report'); ?>" class="nav-link">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Laporan
              </p>
            </a>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>