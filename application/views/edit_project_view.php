<?php
error_reporting(0);
$this->load->view('inc/header');
?>

<style>
	.col-md-10,
	.col-md-8,
	.col-md-12,
	.col-md-2,
	.col-md-3,
	.col-md-4 {
		position: relative;
		width: 100%;
		min-height: 1px;
		padding-right: 4px;
		padding-left: 4px;
	}

	body {
		background-color: #f0f0f0 !important;
	}

	

	tr.group,
	tr.group:hover {
		background-color: #ddd !important;
	}
</style>
<!-- START PAGE CONTENT WRAPPER -->
<div class="page-content-wrapper">
	<!-- START PAGE CONTENT -->
	<div class="content">
		<!-- START JUMBOTRON -->
		<div class="jumbotron" data-pages="parallax">
			<div class=" container-fluid container-fixed-lg sm-p-l-0 sm-p-r-0">
				<div class="inner">
					<!-- START BREADCRUMB -->
					<ol class="breadcrumb">
						<li class="breadcrumb-item">CMS</li>
						<li class="breadcrumb-item">Edit Proejcts</li>
						<li class="breadcrumb-item"><mark><?php echo date('Y-m-d h:i:s'); ?></mark></li>
					</ol>
					<!-- END BREADCRUMB -->
				</div>
			</div>
		</div>
		<!-- END JUMBOTRON -->
		<!-- START CONTAINER FLUID -->
		<div class="container-fluid container-fixed-lg">
			<!-- BEGIN PlACE PAGE CONTENT HERE -->
			<div class="pgn-wrapper" data-position="top" style="top: 48px;" id="msg_div"></div>
			<div class="row">
				<div class="col-xl-12 col-lg-12">
					<!-- START card -->
					<div class=" container-fluid   container-fixed-lg bg-gray">
						<div class="row">
							<div class="col-md-5" id="f_panel">
								<div class="card m-t-10">
									<div class="card-header  separator">
										<div class="card-title">Edit Projects </div>
									</div>
									<div class="card-body">
										<?php echo $error['error'] ?>
										<?php
										$action_path = "Project_Controller/edit_master_detail_row";

										?>
										<form enctype="multipart/form-data" id="add_name" class="row  needs-validation" novalidate method="POST" action="<?php echo base_url() . $action_path ?>">
											<link href="<?php echo base_url(); ?>assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="screen" />
											<script src="<?php echo base_url(); ?>assets/js/bootstrap.bundle.min.js"></script>
											<style>
												.form-floating>label {
													position: absolute;
													font-size: 17px;
													top: -7px;
													left: 10px;
													height: 100%;
													padding: 1rem 0.75rem;
													pointer-events: none;
													border: 1px solid transparent;
													transform-origin: 0 0;
													transition: opacity .1s ease-in-out, transform .1s ease-in-out;
												}
											</style>
											<?php
											if (!empty($get_event_data)) { ?>
											
											<?php
												foreach ($get_event_data as $item) {
													$ProjectId = $item['ProjectId'];
													$Title = $item['Title'];
													$Period = $item['Period'];
													$Organization = $item['Organization'];
													$OrganizationLogo = $item['OrganizationLogo'];
													$Detail = $item['Details'];
													$SortNo = $item['SortNo'];
													$File = $item['File'];
												}
											}
											?>
											<div class="col-md-6 my-3 form-floating ">
												<input type="text" class="form-control" name="title" id="floatingInput" value="<?php echo $Title ?>"  required>
												<label for="validationTooltip01" class="form-label">Title</label>
												<div class="valid-tooltip">Looks good!</div>
												<div class="invalid-tooltip">This Field Is Required!</div>
											</div>
											<div class="col-md-6 my-3 form-floating ">
												<input type="text" class="form-control" name="Period" id="floatingInput" value="<?php echo $Period ?>"  required>
												<label for="validationTooltip01" class="form-label">Period</label>
												<div class="valid-tooltip">Looks good!</div>
												<div class="invalid-tooltip">This Field Is Required!</div>
											</div>
											<div class="col-md-10 my-3 form-floating ">
												<input type="text" class="form-control" name="Organization" id="floatingInput" value="<?php echo $Organization ?>"  required>
												<label for="validationTooltip01" class="form-label">Organization</label>
												<div class="valid-tooltip">Looks good!</div>
												<div class="invalid-tooltip">This Field Is Required!</div>
											</div>
											<div class="col-md-2 my-3 form-floating ">
											<input type="number" required  name="SortNo" value="<?php echo $SortNo ?>" class="form-control name_list" />
												<label for="validationTooltip01" class="form-label">Sort</label>
												<div class="valid-tooltip">Looks good!</div>
												<div class="invalid-tooltip">This Field Is Required!</div>
											</div>
											<div class="col-md-10 my-3 form-floating ">
												<input type="text" hidden class="form-control" name="Org_logo_previous" id="floatingInput" value="<?php echo $OrganizationLogo ?>"  required>
												<input type="file" class="form-control" name="OrganizationLogo" id="floatingInput" >
												<label for="validationTooltip01" class="form-label">Organization Logo</label>
												<div class="valid-tooltip">Looks good!</div>
												<div class="invalid-tooltip">This Field Is Required!</div>
											</div>
											<div class="col-md-2 my-3">
											<img style="border-radius:5px ;" width="55px" height="55px" src="<?php echo base_url(); ?>assets/projects_images/<?php echo $OrganizationLogo ?>" >
											</div>

											<div class="col-md-12 my-2 form-floating ">
												<textarea class="form-control" style="height:100px;" name="detail" placeholder="Leave a Detail here" id="floatingTextarea2" required><?php echo $Detail?></textarea>
												<label for="floatingTextarea2">Detail</label>
												<div class="valid-tooltip">Looks good!</div>
												<div class="invalid-tooltip">This Field Is Required!</div>
											</div>
											<div class="col-md-8 my-3 form-floating ">
												<input type="text" hidden class="form-control" name="file_previous" id="floatingInput" value="<?php echo $File ?>"  required>
												<input type="file" class="form-control" name="File" id="floatingInput" >
												<label for="validationTooltip01" class="form-label">Attach File</label>
												<div class="valid-tooltip">Looks good!</div>
												<div class="invalid-tooltip">This Field Is Required!</div>
											</div>
											<div class="col-md-4 my-4">
											<a style="border:1px solid gray ;" href="<?php echo base_url(); ?>assets/projects_images/<?php echo $File ?>" class="btn btn-scondery"><i class="fa fa-eye"></i> Previous File</a>
											</div>


											<div class="col-md-12 my-3 form-floating ">
												<input type="text" hidden name="project_id" value="<?php echo $ProjectId ?>" class="form-control name_list" />
												<table class="table table-bordered">
													          
													<?php $last_index = (count($get_event_img_data) - 1); ?>
													<?php foreach ($get_event_img_data as $key => $item) {
														$ProjectImageId = $item['ProjectImageId'];
														$Image = $item['Image'];
														$Alternative = $item['Alternative'];
													?>
														<input type="text" hidden name="file_text[]" value="<?php echo $Image ?>" class="form-control name_list" />
														<input type="text" hidden name="id[]" value="<?php echo $ProjectImageId ?>" class="form-control name_list" />
														<tr id="row<?php echo $ProjectImageId; ?>">
															<td><input type="file"  name="img_name[]" value="<?php echo $Image ?>" accept="image/*" class="form-control name_list" /></td>
															<td><input type="text" name="text[]" value="<?php echo $Alternative ?>" placeholder="Enter alternative text" class="form-control name_list" required /></td>
															<td class="text-center"><button type="button" name="remove" id="<?php echo $ProjectImageId ?>" class="btn btn-outline-danger btn_remove"><i class="fa fa-remove"></i></button></td>
														</tr>

													<?php } ?>
													<tr id="dynamic_field">
														<td class="text-right" colspan="3"><button type="button" name="add" id="add" class="btn btn-outline-success "><i class="fa fa-plus"></i></button></td>
													</tr>

												</table>
											</div>

											<div class="col-md-12  text-center">
												<a class="btn btn-danger" id="cancel"  href="<?php echo base_url()?>home"> Cancel</a>
												<button class="btn btn-success" id="add_name" type="submit">Save</button>
											</div>

										</form>
									</div>
								</div>
							</div>

							<div class="col-md-7" id="d_panel">
								<div class="card m-t-10">
									<div class="card-header  separator">
										<div class="card-title">Data Panel</div>
										<div class="card-controls">
											<!-- <button class="btn btn-primary" type="button" onclick="filters()">Full Screen</button> -->
										</div>
									</div>
									<div class="card-body">
										<div class="table-responsive">
											<table width="100%" style="border-top:1px solid black ;" class="table table-bordered compact nowrap" id="data_list" name="data_panel">
												<thead>
													<tr>
														<th>Sr No</th>
														<th>Project Image</th>
														<th>Alternative</th>
														<th>Title</th>
													</tr>
												</thead>
												<tbody>
													<?php
													$i = 1;
													foreach ($data as $item) {
														$ProjectImageId = $item['ProjectImageId'];
														$Image = $item['Image'];
														$Alternative = $item['Alternative'];

													?>
														<tr>

															<td><?php echo $i ?></td>
															<td class="text-center " style="cursor:pointer;" data-toggle="modal" data-target="#edit_<?php echo $ProjectImageId ?>"><img width="30px" height="30px" src="<?php echo base_url(); ?>assets/projects_images/<?php echo $Image ?>" alt="<?php echo $Alternative ?>"> </td>
															<td><?php echo $Alternative ?> </td>
															<td><?php echo $Title ?> </td>
															
														</tr>
														<div class="modal" id="edit_<?php echo $ProjectImageId ?>">
															<div class="modal-dialog">
																<div class="modal-content">
																	<!-- Modal Header -->
																	<div class="modal-header">
																		<h4 class="modal-title"><?php echo $Alternative ?> </h4>
																		<button type="button" class="close" data-dismiss="modal">&times;</button>
																	</div>
																	<!-- Modal body -->
																	<div class="modal-body">
																		<img width="100%" height="80%" src="<?php echo base_url(); ?>assets/projects_images/<?php echo $Image ?>" alt="<?php echo $Alternative?>">
																	</div>
																	<!-- Modal footer -->
																	<div class="modal-footer">
																		<button type="button" style="border:2px solid gray !important ;" class="btn btn-default " data-dismiss="modal" type="submit">Close</button>

																	</div>
																</div>
															</div>
														</div>
													<?php $i++;
													} ?>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>

							<!-- END card -->
						</div>
					</div>
					<!-- END PLACE PAGE CONTENT HERE -->
				</div>
				<!-- END CONTAINER FLUID -->
			</div>
			<!-- END PAGE CONTENT -->


		</div>
	</div>
	<?php
	$this->load->view('inc/footer');
	?>

	<script>
		$(document).ready(function() {
			var i = 1;
			$('#add').click(function() {
				i++;
				$('#dynamic_field').before('<tr id="row' + i + '"><td><input type="file" name="img_name[]" accept="image/*" class="form-control name_list" required /></td><td><input type="text" name="text[]" placeholder="Enter alternative text" class="form-control name_list" required /></td><td class="text-center"><button type="button" name="remove" id="' + i + '" class="btn btn-outline-danger btn_remove"><i class="fa fa-remove"></i></button></td></tr>');
			});
			$(document).on('click', '.btn_remove', function() {
				var button_id = $(this).attr("id");
				$('#row' + button_id + '').remove();
			});

		});
	</script>
	<script>
		function filters() {
			var f_class = $('#f_panel').attr('class');
			var d_class = $('#d_panel').attr('class');

			if (f_class.indexOf('col-md-4') != -1) {
				f_class = f_class.replace('col-md-4', 'col-md-0');
				d_class = d_class.replace('col-md-8', 'col-md-12');
				$('#f_panel').hide();
			} else {
				f_class = f_class.replace('col-md-0', 'col-md-4');
				d_class = d_class.replace('col-md-12', 'col-md-8');
				$('#f_panel').show();
			}

			$('#f_panel').attr('class', f_class);
			$('#d_panel').attr('class', d_class);
		}
	</script>
	<script>
		// Example starter JavaScript for disabling form submissions if there are invalid fields
		(function() {
			'use strict'
			// Fetch all the forms we want to apply custom Bootstrap validation styles to
			var forms = document.querySelectorAll('.needs-validation')
			// Loop over them and prevent submission
			Array.prototype.slice.call(forms)
				.forEach(function(form) {
					form.addEventListener('submit', function(event) {
						if (!form.checkValidity()) {
							event.preventDefault()
							event.stopPropagation()
						}
						form.classList.add('was-validated')
					}, false)
				})
		})()
	</script>
	<script>
		$(document).ready(function() {
			$('#data_list').DataTable().destroy();
			var groupColumn = 3;
			table = $('#data_list').DataTable({
				"lengthMenu": [
					[10, 25, 50, 100, -1],
					[10, 25, 50, 100, "All"]
				],
				columnDefs: [{
					visible: false,
					targets: groupColumn
				}],

				displayLength: 10,
				drawCallback: function(settings) {
					var api = this.api();
					var rows = api.rows({
						page: 'all'
					}).nodes();
					var last = null;

					api
						.column(groupColumn, {
							page: 'all'
						})
						.data()
						.each(function(group, i) {

							if (last !== group) {
								var group_text = group.split('--')
								// console.log(group_text[0])
								$(rows)
									.eq(i)
									.before('<tr class="group"><th colspan="4">' + group_text[0] + '</th></tr>');

								last = group;
							}
						});
				},
			});
		});
		$('#data_list tbody').on('click', 'tr.group', function() {
			var currentOrder = table.order()[0];
			if (currentOrder[0] === groupColumn && currentOrder[1] === 'asc') {
				table.order([groupColumn, 'desc']).draw();
			} else {
				table.order([groupColumn, 'asc']).draw();
			}
		});
	</script>