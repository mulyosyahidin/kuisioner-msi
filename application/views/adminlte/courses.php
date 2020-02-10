<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Kelola Mata Kuliah</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><?php echo anchor(base_url(), 'Home'); ?></li>
                        <li class="breadcrumb-item active">Mata Kuliah</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>

    <section class="content">
        <div class="card card-primary">
            <?php if ( count($courses) > 0) : ?>
                <div class="table-responsive">
                    <table class="table table-hover">
                        <thead class="card-header">
                            <tr>
                                <th>Semester</th>
                                <th>Kode Mata Kuliah</th>
                                <th>Nama Mata Kuliah</th>
                                <th>SKS</th>
                                <th>W/P</th>
                                <th>Prasyarat</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody class="card-body">
                            <?php foreach ($courses as $course) : ?>
                            <tr>
                                <td><?php echo $course->semester; ?></td>
                                <td><?php echo $course->code; ?></td>
                                <td><?php echo $course->name; ?></td>
                                <td><?php echo ($course->class_sks + $course->practice_sks); ?> (<?php echo $course->class_sks; ?> - <?php echo $course->practice_sks; ?>)</td>
                                <td><?php echo $course->level; ?></td>
                                <td>
                                    <pre>
                                    <?php print_r($course); ?>
                                    </pre>
                                </td>
                                <td class="text-right">
                                    <a href="<?php echo site_url('courses/edit/'. $course->id); ?>" class="btn btn-success btn-sm"><i class="fa fa-edit"></i></a>
                                    <a href="#" data-toggle="modal" data-target="#deleteModal" class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></a>
                                </td>
                            </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
                <?php else : ?>
                <div class="alert alert-info">Belum ada data mata kuliah yang ditambahkan. Silahkan menambahkan baru.</div>
                <?php endif; ?>

        </div>
    </section>

</div>
 
<div class="modal fade" id="deleteModal">
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