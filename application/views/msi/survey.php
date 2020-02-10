<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<link rel="apple-touch-icon" sizes="76x76" href="<?php echo base_url('assets/msi/img/apple-icon.png'); ?>" />
	<link rel="icon" type="image/png" href="<?php echo base_url('assets/msi/img/favicon.png'); ?>" />
	<title>Survey Bahasa Pemrograman Paling Diminati Mahasiswa Teknik Informatika Universitas Bengkulu 2019</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />
    
	<!-- CSS Files -->
    <link href="<?php echo base_url('assets/msi/css/bootstrap.min.css'); ?>" rel="stylesheet" />
	<link href="<?php echo base_url('assets/msi/css/paper-bootstrap-wizard.css'); ?>" rel="stylesheet" />

	<!-- CSS Just for demo purpose, don't include it in your project -->
	<link href="<?php echo base_url('assets/msi/css/demo.css'); ?>" rel="stylesheet" />

	<!-- Fonts and Icons -->
    <link href="https://netdna.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.css" rel="stylesheet">
	<link href='https://fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>
    <link href="<?php echo base_url('assets/msi/css/themify-icons.css'); ?>" rel="stylesheet">
    
	</head>

	<body>
	<div class="image-container set-full-height" style="background-image: url('<?php echo base_url('assets/msi/img/paper-1.jpeg'); ?>')">
	         <div class="logo-container">
	            <div class="logo">
	                <img src="<?php echo base_url('assets/msi/img/ms2.jpg'); ?>">
	            </div>
	            <div class="brand">
	                Martin MS
	            </div>
	        </div>

	    <!--   Big container   -->
	    <div class="container">
	        <div class="row">
		        <div class="col-sm-8 col-sm-offset-2">

		            <!--      Wizard container        -->
		            <div class="wizard-container">

		                <div class="card wizard-card" data-color="blue" id="wizardProfile">
		                    <form action="#" method="POST id="itemsForm">

		                    	<div class="wizard-header text-center">
		                        	<h3 class="wizard-title">Survey #10</h3>
									<p class="category">Bahasa Pemrograman Paling Diminati Mahasiswa Teknik Informatika Universitas Bengkulu 2019</p>
		                    	</div>

								<div class="wizard-navigation to-hide">
									<div class="progress-with-circle">
									     <div class="progress-bar" role="progressbar" aria-valuenow="1" aria-valuemin="1" aria-valuemax="3" style="width: 21%;"></div>
									</div>
									<ul>
			                            <li>
											<a href="#about" data-toggle="tab">
												<div class="icon-circle">
													<i class="ti-user"></i>
												</div>
												NPM
											</a>
										</li>
			                            <li>
											<a href="#base" data-toggle="tab">
												<div class="icon-circle">
													<i class="ti-settings"></i>
												</div>
												Base
											</a>
										</li>
			                            <li>
											<a href="#language" data-toggle="tab">
												<div class="icon-circle">
													<i class="ti-world"></i>
												</div>
												Bahasa
											</a>
										</li>
			                        </ul>
								</div>
		                        <div class="tab-content to-hide">
		                            <div class="tab-pane" id="about">
		                            	<div class="row">
											<h5 class="info-text"> Masukkan NPM kamu untuk memulai...</h5>
											<div class="col-sm-4 col-sm-offset-1">
												<div class="picture-container">
													<div class="picture">
														<img src="<?php echo base_url('assets/msi/img/user.png'); ?>" class="picture-src" id="wizardPicturePreview" title="" />
													</div>
												</div>
											</div>
											<div class="col-sm-6">
												<div class="form-group">
													<label>NPM:</label>
                                                    <input name="npm" type="text" class="form-control inp-npm">
                                                    <label class="error-1 error"></label>
												</div>
												<div class="form-group">
													<label>Nama:</label>
													<input name="name" type="text" class="form-control inp-name">
												</div>
											</div>
										</div>
		                            </div>
		                            <div class="tab-pane" id="base">
		                                <h5 class="info-text">Basis pemrograman yang kamu minati</h5>
		                                <div class="row">
		                                    <div class="col-sm-8 col-sm-offset-2">
		                                        <div class="col-sm-4">
		                                            <div class="choice" data-toggle="wizard-checkbox">
		                                                <input type="checkbox" name="base[]" value="1">
		                                                <div class="card card-checkboxes card-hover-effect">
		                                                    <i class="ti-html5"></i>
															<p>Web</p>
		                                                </div>
		                                            </div>
		                                        </div>
		                                        <div class="col-sm-4">
		                                            <div class="choice" data-toggle="wizard-checkbox">
		                                                <input type="checkbox" name="base[]" value="2">
		                                                <div class="card card-checkboxes card-hover-effect">
		                                                    <i class="ti-android"></i>
															<p>Mobile</p>
		                                                </div>
		                                            </div>
		                                        </div>
		                                        <div class="col-sm-4">
		                                            <div class="choice" data-toggle="wizard-checkbox">
		                                                <input type="checkbox" name="base[]" value="3">
		                                                <div class="card card-checkboxes card-hover-effect">
		                                                    <i class="ti-microsoft"></i>
                                                            <p>Desktop</p>
                                                        </div>
		                                            </div>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                            <div class="tab-pane" id="language">
		                                <div class="row">
		                                    <div class="col-sm-12">
		                                        <h5 class="info-text">Bahasa pemrograman yang kamu minati:</h5>
		                                    </div>
                                            
                                            <div class="row">
                                                <div class="col-sm-8 col-sm-offset-2">
                                                    <div class="items"></div>
                                                </div>
                                            </div>
		                                </div>
		                            </div>
		                        </div>
		                        <div class="wizard-footer to-hide">
		                            <div class="pull-right">
		                                <input type='button' class='btn btn-next btn-fill btn-warning btn-wd' name='next' value='Selanjutnya' />
										<button type="button" class="btn btn-finish btn-fill btn-warning btn-wd">Selesai</button>
		                            </div>

		                            <div class="pull-left">
		                                <input type='button' class='btn btn-previous btn-default btn-wd' name='previous' value='Kembali' />
		                            </div>
		                            <div class="clearfix"></div>
								</div>
								<div class="result">
									<div class="row justify-content-center">
		                                <div class="col-sm-8 col-sm-offset-2">
		                                    <div class="col-sm-12">
		                                        <div class="choice active" data-toggle="wizard-checkbox">
		                                            <div class="card card-checkboxes card-hover-effect">
		                                                <i class="ti-star"></i>
														<p>Terima Kasih!</p>
														<p style="color: #333333;">Terima kasih telah mengisi kuisioner ini. Have a Nice Day!</p>
		                                            </div>
												</div>
											</div>
										</div>
								</div>
		                    </form>
		                </div>
		            </div> <!-- wizard container -->
		        </div>
	    	</div><!-- end row -->
		</div> <!--  big container -->

	    <div class="footer">
	        <div class="container text-center">
	            Tugas Mata Kuliah Manajemen Sistem Informasi. Kelompok 10
	        </div>
	    </div>
	</div>

</body>

	<!--   Core JS Files   -->
	<script src="<?php echo base_url('assets/msi/js/jquery-2.2.4.min.js'); ?>" type="text/javascript"></script>
	<script src="<?php echo base_url('assets/msi/js/bootstrap.min.js'); ?>" type="text/javascript"></script>
	<script src="<?php echo base_url('assets/msi/js/jquery.bootstrap.wizard.js'); ?>" type="text/javascript"></script>

	<!--  Plugin for the Wizard -->
	<script src="<?php echo base_url('assets/msi/js/demo.js'); ?>" type="text/javascript"></script>
	<script src="<?php echo base_url('assets/msi/js/paper-bootstrap-wizard.js'); ?>" type="text/javascript"></script>

	<!--  More information about jquery.validate here: https://jqueryvalidation.org/	 -->
    <script src="<?php echo base_url('assets/msi/js/jquery.validate.min.js'); ?>" type="text/javascript"></script>
    
    <script>
        $(document).ready(function() {
			$('.result').hide();

			$('.btn-finish').click(function(e) {
				e.preventDefault();

				$(this).html('<i class="fa fa-spin fa-spinner"></i> Mengirim...');

				var npm = $('.inp-npm').val();
				var selectedItems = [];

				$('.itemval:checked').each(function(i) {
					var val = $(this).val();

					selectedItems[i] = val;
				});

				$.ajax({
					method: 'POST',
					url: '<?php echo site_url('ajax/save_results'); ?>',
					data: {
						npm: npm,
						items: selectedItems
					},
					context: this,
					success: function(res) {
						if (res.success) {
							$('.to-hide').hide('fade');
							$('.result').show();
						}
						else {
							$(this).html('Selesai');
						}
					}
				});
			});

            $('.inp-npm').keyup(function(e) {
                e.preventDefault();

                var npm = $(this).val();

                if (npm.length == 9) {

                $.ajax({
                    method: 'POST',
                    url: '<?php echo site_url('ajax/validate_npm'); ?>',
                    data: { npm: npm },
                    success: function(res) {
                        if ( ! res.success || ! res.is_exist) {
                            $('.error-1').text(res.message);
                        }
                        else {
                            $('.error-1').hide('fade');
                            var name = res.message;
                            $('.inp-name').val(name);
                        }
                    }
                });
                }
            });

            $('.btn-next').click(function(e) {
                e.preventDefault();

                $('.items').empty();
                var count = $('[name="base[]"]:checked');
                var col;

                if (count.length == 1)
                    col = 12;
                else if (count.length == 2)
                    col = 6;
                else if (count.length == 3)
                    col = 4;

                $('[name="base[]"]:checked').each(function() {
                    var base = $(this).val();
                    var logo, logoName;

                    if(base == 1) {
                        logo = 'html5';
                        logoName = 'Web';
                    }
                    else if(base == 2) {
                        logo = 'android';
                        logoName = 'Mobile';
                    }
                    else if(base == 3) {
                        logo = 'microsoft';
                        logoName = 'Desktop';
                    }

                    $.ajax({
                        method: 'POST',
                        url: '<?php echo site_url('ajax/items'); ?>',
                        data: { base: base },
                        success: function(res) {
                            if (res.success) {
								var items = res.items;
								var childItems = '';
								
								for(var i = 0; i < items.length; i++) {
									childItems += '<div class="item card" data-item="'+ items[i].id +'"><input type="checkbox" name="items['+ base +'][]" data-base="'+ base +'" class="itemval" data-val="'+ items[i].id +'" value="'+ items[i].id +'"><div><p>'+ items[i].name +'</p></div></div>';
								}

								$('.items').append('<div class="col-sm-'+ col +'"><div class="choice active"><div class="card card-checkboxes card-hover-effect"><i class="ti-'+ logo +'"></i><p>'+ logoName +'</p></div>'+ childItems +'</div></div>');
							}
                        }
					});
                });
			});
			
			$('body').on('click', '.item', function(e) {
            	var id = $(this).data('item');

            	if ( $(this).hasClass('font-active')) {
					$(this).removeClass('font-active');
					$(this).find('[type="checkbox"]').removeAttr('checked');
				}
				else {
					$(this).addClass('font-active');
                    $(this).find('[type="checkbox"]').attr('checked','true');
				}
        	});
        });
    </script>

</html>
