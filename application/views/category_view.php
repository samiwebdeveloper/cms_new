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

	.select2-container--default .select2-selection--single {
		background-color: #fff;
		border: 1px solid #BEBEBE !important;
		border-radius: 4px;
		padding: 27px !important;
	}

	.select2-container .select2-selection .select2-selection__rendered {
		margin-left: -25px !important;
	}

	.select2-container .select2-selection .select2-selection__rendered {
		padding: 0;
		padding-left: 13px;
		padding-top: 0px;
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
						<li class="breadcrumb-item">Add Product Category </li>
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
							<div class="col-md-4" id="f_panel">
								<div class="card m-t-10">
									<div class="card-header  separator">
										<div class="card-title">Add Product Category </div>
									</div>
									<div class="card-body">
										<?php echo  $this->session->flashdata('msg'); ?>

										<?php
										if (!empty($fetch_record)) {
											$action_path = "Add_product_category/edit_data";
										} else {
											$action_path = "Add_product_category/insert";
										}
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
											if (!empty($fetch_record)) {
												foreach ($fetch_record as $rows) {
													$CategoryId = $rows->CategoryId;
													$ParentId = $rows->ParentId;
													$Category = $rows->Category;
												}
													
											?>
												<input type="text" hidden name="id" value="<?php echo $CategoryId ?>">
												<div class="col-md-12 my-4 form-floating ">
												<select name="ParentId"   class="form-select" id="category_select">
												<option value=""  >Select Parent Category</option>
													<?php 
													
													foreach ($fetch_data as $items) {
														$selected="";
														if ($items->CategoryId == $ParentId) {
															$selected="selected";
														}
														echo"<option $selected value='$items->CategoryId'>$items->Category</option>";
													} 
													?>
												</select>
													<label for="category_select">Select Parent Category</label>
													<div class="valid-tooltip">Looks good!</div>
													<div class="invalid-tooltip">This Field Is Required!</div>
												</div>

												<div class="col-md-12 my-3 form-floating ">
													<input value="<?php echo $Category ?>" type="text" class="form-control" name="Category" id="floatingInput" placeholder="name@example.com" required>
													<label for="validationTooltip01" class="form-label">Category</label>
													<div class="valid-tooltip">Looks good!</div>
													<div class="invalid-tooltip">This Field Is Required!</div>
												</div>
												
											<?php } else { ?>
												<div class="col-md-12 my-4 form-floating ">
												<select name="ParentId"  class="form-select" id="category_select">
													<option value="" selected >Select Parent Category</option>
													<?php foreach ($fetch_data_d as $item) {
														echo'<option value="'.$item->CategoryId.'">'.$item->Category.'</option>';
													}?>
												</select>
													<label for="category_select">Select Parent  Category</label>
													<div class="valid-tooltip">Looks good!</div>
													<div class="invalid-tooltip">This Field Is Required!</div>
												</div>
												<div class="col-md-12 my-3 form-floating ">
													<input type="text" class="form-control" name="Category" id="floatingInput" placeholder="name@example.com" required>
													<label for="validationTooltip01" class="form-label">Category</label>
													<div class="valid-tooltip">Looks good!</div>
													<div class="invalid-tooltip">This Field Is Required!</div>
												</div>
												
											<?php } ?>
											<div class="col-md-12 my-2 text-center">
												<button class="btn btn-danger" id="cancel" type="reset"> Cancel</button>
												<button class="btn btn-primary" type="reset">Reset</button>
												<button class="btn btn-success" type="submit">Save</button>
											</div>
										</form>
									</div>
								</div>
							</div>

							<div class="col-md-8" id="d_panel">
								<div class="card m-t-10">
									<div class="card-header  separator">
										<div class="card-title">Data Panel</div>
										<div class="card-controls">
											<button class="btn btn-primary" type="button" onclick="filters()">Full Screen</button>
										</div>
									</div>
									<div class="card-body">
										<div class="table-responsive">
											<table width="100%" style="border-top:1px solid black ;" class="table table-bordered nowrap" id="data_list" name="data_panel">
												<thead>
													<tr>
														<th>Sr No</th>
														<th>Parent Category</th>
														<th>Category</th>
														<th style="display:none ;">id</th>
														<th class="text-center">Action</th>
													</tr>
												</thead>
												<tbody>
													<?php
													$i = 0;
													$row_parent_categpry=array_column($fetch_data,'Category','CategoryId');
													foreach ($fetch_data as $item) {
														$i++; ?>
														<tr>
															<?php $id = $item->CategoryId ?>
															<td><?php echo $i ?></td>
															<?php
															 if ($item->ParentId==0) {
																echo "<td class='text-center'><b>".$item->Category."</b></td>";
																echo "<td class='text-center'><b> - - - </b></td>";
															} else {
																echo "<td class='text-center'>".$row_parent_categpry[$item->ParentId]."</td>";
																echo "<td class='text-center'>".$item->Category."</td>";
															}?>

															<td hidden class='row_id'><?php echo $id ?></td>
															<!-- <?php if ($item->ParentId==0) {?>
																<td class="text-center ">
																<a disabled href="javascript:avoid(0)" class="edit_btn btn btn-success btn-sm"><i class="fa fa-edit"></i></a>
																<a  disabled href="javacript:avoid(0)" class="edit_btn btn btn-danger btn-sm"><i class="fa fa-trash"></i></a></td>
															<?php } else {?>
																<td class="text-center ">
																<a href="<?php echo base_url() ?>Add_product_category/edit_record/<?php echo $id; ?>" class="edit_btn btn btn-success btn-sm"><i class="fa fa-edit"></i></a>
																<a href="<?php echo base_url() ?>Add_product_category/delete_record/<?php echo $id; ?>" class="edit_btn btn btn-danger btn-sm"><i class="fa fa-trash"></i></a>
															</td> -->
															<!-- <?php	}?> -->

															<td class="text-center">
															<a href="<?php echo base_url() ?>Add_product_category/edit_record/<?php echo $id; ?>" class="edit_btn btn btn-success btn-sm"><i class="fa fa-edit"></i></a>
																<a href="<?php echo base_url() ?>Add_product_category/delete_record/<?php echo $id; ?>" class="edit_btn btn btn-danger btn-sm"><i class="fa fa-trash"></i></a>
															</td>
															
														</tr>
													<?php } ?>
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
		$('#cancel').click(function(params) {
			history.go(-1);
		})
	</script>
	<script>
		function filters() {
			var f_class = $('#f_panel').attr('class');
			$('#f_panel').hide();

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
	<script type="text/javascript">
		$(document).ready(function() {
			$('#data_list').DataTable()
		})
	</script>