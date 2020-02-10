<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Kelola Semester</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><?php echo anchor(base_url(), 'Home'); ?></li>
                        <li class="breadcrumb-item active">Semester</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>

    <section class="content">
        <div class="card card-primary">
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-hover" id="semester">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Semester</th>
                            </tr>
                        </thead>
                        <tbody id="semester_list"></tbody>
                    </table>
                </div>
            </div>

        </div>
    </section>

</div>
 
<div class="modal fade" id="confirmDeleteDialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Hapus Data Surat</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p class="confirmDeleteText">Yakin ingin menghapus data Semester? Tindakan ini tidak dapat dibatalkan.</p>
            </div>
            <div class="modal-footer justify-content-between">
                <button type="button" class="btn btn-default" data-dismiss="modal">Batal</button>
                <button type="button" class="btn btn-primary confirmDeleteMailBtn">Hapus</button>
            </div>
        </div>
    </div>
</div>