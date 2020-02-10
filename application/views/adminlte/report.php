<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Laporan Survey MSI #10</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><?php echo anchor(base_url(), 'Home'); ?></li>
                        <li class="breadcrumb-item active">Laporan</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>

    <section class="content">
        <div class="card card-primary">
            <?php if ( count($reports) > 0) : ?>
                <div class="table-responsive">
                    <table class="table table-hover">
                        <thead class="card-header">
                            <tr>
                                <th>#</th>
                                <th>Nama</th>
                                <th>Bahasa</th>
                                <th>Waktu</th>
                            </tr>
                        </thead>
                        <tbody class="card-body">
                            <?php foreach ($reports as $report) : ?>
                            <tr>
                                <td><?php echo $report->id; ?></td>
                                <td><?php echo $report->name; ?></td>
                                <td><?php echo $report->parent; ?> / <?php echo $report->language; ?></td>
                                <td><?php echo date('l, d F Y H:i', strtotime($report->input_time)); ?></td>
                            </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
                <?php else : ?>
                <div class="alert alert-info">Belum ada data.</div>
                <?php endif; ?>

        </div>
    </section>

</div>