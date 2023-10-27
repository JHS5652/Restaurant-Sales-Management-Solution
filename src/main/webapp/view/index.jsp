<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8" />
	<title>Color Admin | HTML Startup</title>
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	<script src="../assets/js/vendor.min.js"></script>
	<script src="../assets/js/app.min.js"></script>


	<!-- ================== BEGIN core-css ================== -->
	<link href="../assets/css/vendor.min.css" rel="stylesheet" />
	<link href="../assets/css/google/app.min.css" rel="stylesheet" />
	<!-- ================== END core-css ================== -->
	<link href="../assets/plugins/nvd3/build/nv.d3.css" rel="stylesheet" />

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>

<body>
	<!-- 차트 script -->
	<script src="../assets/plugins/flot/source/jquery.canvaswrapper.js"></script>
<script src="../assets/plugins/flot/source/jquery.colorhelpers.js"></script>
<script src="../assets/plugins/flot/source/jquery.flot.js"></script>
<script src="../assets/plugins/flot/source/jquery.flot.saturated.js"></script>
<script src="../assets/plugins/flot/source/jquery.flot.browser.js"></script>
<script src="../assets/plugins/flot/source/jquery.flot.drawSeries.js"></script>
<script src="../assets/plugins/flot/source/jquery.flot.uiConstants.js"></script>


	<!-- BEGIN #loader -->
	<div id="loader" class="app-loader">
		<span class="spinner"></span>
	</div>
	<!-- END #loader -->

	<!-- BEGIN #app -->
	<div id="app" class="app app-header-fixed app-sidebar-fixed app-with-wide-sidebar app-with-light-sidebar">
		<!-- BEGIN #header -->
		<div id="header" class="app-header">
			<!-- BEGIN navbar-header -->
			<div class="navbar-header">
				<button type="button" class="navbar-desktop-toggler" data-toggle="app-sidebar-minify">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a href="index.jsp" class="navbar-brand">
					<b class="me-1">Color</b> Admin
					<span class="navbar-logo">
						<span class="text-blue">G</span>
						<span class="text-red">o</span>
						<span class="text-orange">o</span>
						<span class="text-blue">g</span>
						<span class="text-green">l</span>
						<span class="text-red">e</span>
					</span>
				</a>
				<button type="button" class="navbar-mobile-toggler" data-toggle="app-sidebar-mobile">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			</div>
			<!-- END navbar-header -->
			<!-- BEGIN header-nav -->
			<div class="navbar-nav">
				<div class="navbar-item navbar-form">
					<form action="" method="POST" name="search">
						<div class="form-group">
							<input type="text" class="form-control" placeholder='Try searching "Users Today"' />
							<button type="submit" class="btn btn-search"><i class="fa fa-search"></i></button>
						</div>
					</form>
				</div>
				<div class="navbar-item dropdown">
					<a href="#" data-bs-toggle="dropdown" class="navbar-link dropdown-toggle icon">
						<i class="fa fa-bell"></i>
						<span class="badge">0</span>
					</a>
					<div class="dropdown-menu media-list dropdown-menu-end">
						<div class="dropdown-header">NOTIFICATIONS (0)</div>
						<div class="text-center w-300px py-3">
							No notification found
						</div>
					</div>
				</div>
				<div class="navbar-item navbar-user dropdown">
					<a href="#" class="navbar-link dropdown-toggle d-flex align-items-center" data-bs-toggle="dropdown">
						<div class="image image-icon bg-gray-800 text-gray-600">
							<i class="fa fa-user"></i>
						</div>
						<span class="d-none d-md-inline">Adam Schwartz</span> <b class="caret ms-lg-2"></b>
					</a>
					<div class="dropdown-menu dropdown-menu-end me-1">
						<a href="javascript:;" class="dropdown-item">Edit Profile</a>
						<a href="javascript:;" class="dropdown-item d-flex align-items-center">
							Inbox
							<span class="badge bg-danger rounded-pill ms-auto pt-5px">2</span>
						</a>
						<a href="javascript:;" class="dropdown-item">Calendar</a>
						<a href="javascript:;" class="dropdown-item">Setting</a>
						<div class="dropdown-divider"></div>
						<a href="javascript:;" class="dropdown-item">Log Out</a>
					</div>
				</div>
			</div>
			<!-- END header-nav -->
		</div>
		<!-- END #header -->
		<!-- BEGIN #sidebar -->
		<div id="sidebar" class="app-sidebar">
			<!-- BEGIN scrollbar -->
			<div class="app-sidebar-content" data-scrollbar="true" data-height="100%">
				<!-- BEGIN menu -->
				<div class="menu">
					<div class="menu-profile">
						<a href="javascript:;" class="menu-profile-link" data-toggle="app-sidebar-profile"
							data-target="#appSidebarProfileMenu">
							<div class="menu-profile-cover with-shadow"></div>
							<div class="menu-profile-image menu-profile-image-icon bg-gray-900 text-gray-600">
								<i class="fa fa-user fs-48px mb-n4"></i>
							</div>
							<div class="menu-profile-info">
								<div class="d-flex align-items-center">
									<div class="flex-grow-1">
										지현석
									</div>
									<div class="menu-caret ms-auto"></div>
								</div>
								<small>Front end developer</small>
							</div>
						</a>
					</div>
					<div id="appSidebarProfileMenu" class="collapse">
						<div class="menu-item pt-5px">
							<a href="javascript:;" class="menu-link">
								<div class="menu-icon"><i class="fa fa-cog"></i></div>
								<div class="menu-text">Settings</div>
							</a>
						</div>
						<div class="menu-item">
							<a href="javascript:;" class="menu-link">
								<div class="menu-icon"><i class="fa fa-pencil-alt"></i></div>
								<div class="menu-text"> Send Feedback</div>
							</a>
						</div>
						<div class="menu-item pb-5px">
							<a href="javascript:;" class="menu-link">
								<div class="menu-icon"><i class="fa fa-question-circle"></i></div>
								<div class="menu-text"> Helps</div>
							</a>
						</div>
						<div class="menu-divider m-0"></div>
					</div>
					<div class="menu-header">Navigation</div>
					<div class="menu-item active">
						<a href="index.jsp" class="menu-link">
							<div class="menu-icon">
								<i class="material-icons">home</i>
							</div>
							<div class="menu-text">매출 관리 리스트</div>
						</a>
					</div>



				</div>
				<!-- END menu -->
			</div>
			<!-- END scrollbar -->
		</div>
		<div class="app-sidebar-bg"></div>
		<div class="app-sidebar-mobile-backdrop"><a href="#" data-dismiss="app-sidebar-mobile"
				class="stretched-link"></a></div>
		<!-- END #sidebar -->

		<!-- BEGIN #content -->
		<div id="content" class="app-content">
			<!-- BEGIN breadcrumb -->
			<ol class="breadcrumb float-xl-end">
				<li class="breadcrumb-item"><a href="javascript:;">Home</a></li>
				<li class="breadcrumb-item"><a href="javascript:;">Library</a></li>
				<li class="breadcrumb-item active">Data</li>
			</ol>
			<!-- END breadcrumb -->
			<!-- BEGIN page-header -->
			<h1 class="page-header">매출관리표 <small>header small text goes here...</small></h1>
			<!-- END page-header -->

			<!-- BEGIN panel -->


			<div class="panel panel-inverse panel-with-tabs">
				<div class="panel-heading p-0">
					<div class="tab-overflow">
						<ul class="nav nav-tabs nav-tabs-inverse">
							<li class="nav-item prev-button"><a href="javascript:;" data-click="prev-tab"
									class="nav-link text-primary"><i class="fa fa-arrow-left"></i></a></li>
							<li class="nav-item">
								<a href="#nav-tab-1" data-bs-toggle="tab" class="nav-link active">등록</a>
							</li>
							<li class="nav-item">
								<a href="#nav-tab-2" data-bs-toggle="tab" class="nav-link ">월별</a>
							</li>

							<li class="nav-item">
								<a href="#nav-tab-3" data-bs-toggle="tab" class="nav-link ">달력</a>
							</li>

							<li class="nav-item">
								<a href="#nav-tab-4" data-bs-toggle="tab" class="nav-link ">차트 분석</a>
							</li>


							<li class="nav-item next-button"><a href="javascript:;" data-click="next-tab"
									class="nav-link text-primary"><i class="fa fa-arrow-right"></i></a></li>
						</ul>
					</div>

					<div class="panel-heading-btn me-2 ms-2 d-flex">
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-secondary"
							data-toggle="panel-expand"><i class="fa fa-expand"></i></a>
					</div>
				</div>


				<!-- div안에 tab들 다 들 -->
				<div class="panel-body tab-content">

					<!-- tab1 -->
					<div class="tab-pane fade active show" id="nav-tab-1">

						<table class="table">
							<tbody>
								<tr>
									<td>

										<h2><i class="fa-solid fa-check"></i>등록</h2>

										<div style="display: inline;">
											<input type="month">
										</div>

										<div class="dropdown" style="display: inline;">
											<a class="btn btn-secondary dropdown-toggle" href="#" role="button"
												data-bs-toggle="dropdown" aria-expanded="false">
												매출
											</a>
										</div>
									</td>
									<td></td>
									<td></td>
								</tr>
								<tr>

									<td>
										<form class="form-floating">
											<input type="email" class="form-control" id="floatingInputValue"
												placeholder="name@example.com">
											<label for=" floatingInputValue">separates items</label>
										</form>
									</td>
									<td>
										<form class="form-floating">
											<input type="email" class="form-control" id="floatingInputValue"
												placeholder="name@example.com">
											<label for=" floatingInputValue">fee</label>
										</form>
									</td>
									<td colspan="2">
										<div class="form-floating">
											<textarea class="form-control" placeholder="Leave a comment here"
												id="floatingTextarea"></textarea>
											<label for="floatingTextarea">memo</label>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
						<button type="button" class="btn btn-primary" style="float: right;">추가</button>
					</div>

					<!-- tab2 -->
					<!-- tab2 -->
					<div class="tab-pane fade" id="nav-tab-2">

						<!-- 월 선택 드롭바 -->
						<div class="d-flex">
							<div class="btn-group">
								<button type="button" class="btn btn-outline-primary">월</button>
								<button type="button"
									class="btn btn-outline-primary dropdown-toggle dropdown-toggle-split"
									data-bs-toggle="dropdown" aria-expanded="false" data-bs-reference="parent">
									<span class="visually-hidden">Toggle Dropdown</span>
								</button>
								<ul class="dropdown-menu">
									<li><a class="dropdown-item" href="#">1월</a></li>
									<li><a class="dropdown-item" href="#">2월</a></li>
									<li><a class="dropdown-item" href="#">3월</a></li>
									<li><a class="dropdown-item" href="#">4월</a></li>
									<li><a class="dropdown-item" href="#">5월</a></li>
									<li><a class="dropdown-item" href="#">6월</a></li>
									<li><a class="dropdown-item" href="#">7월</a></li>
									<li><a class="dropdown-item" href="#">8월</a></li>
									<li><a class="dropdown-item" href="#">9월</a></li>
									<li><a class="dropdown-item" href="#">10월</a></li>
									<li><a class="dropdown-item" href="#">11월</a></li>
									<li><a class="dropdown-item" href="#">12월</a></li>
								</ul>
							</div>
						</div>

						<table class="table table-hover">
							<thead>
								<tr>
									<th scope="col">순서</th>
									<th scope="col">날짜</th>
									<th scope="col">매출 항목</th>
									<th scope="col">비용</th>
									<th scope="col">기타</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row">
										<div class="form-check">
											<input class="form-check-input" type="checkbox" value="" id="fx1">
										</div>
									</th>
									<td>2023/02/02</td>
									<td>찜닭</td>
									<td>20,000</td>
									<td>뒤지게 맛있음</td>
								</tr>
							</tbody>

							<!-- 매입 내역 -->
							<thead>
								<tr>
									<th scope="col">순서</th>
									<th scope="col">날짜</th>
									<th scope="col">매입 항목</th>
									<th scope="col">비용</th>
									<th scope="col">기타</th>
								</tr>
							</thead>

							<tbody>
								<tr>
									<th scope="row">
										<div class="form-check">
											<input class="form-check-input" type="checkbox" value="" id="fx1">
										</div>
									</th>
									<td>2023/02/23</td>
									<td>임대료</td>
									<td>20,000,000</td>
									<td>뒤지게 비쌈 </td>
								</tr>
								<tr>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td>
										<div style="float: right;">

											<button type="button" class="btn btn-secondary position-relative"
												data-bs-toggle="modal" data-bs-target="#exampleModal">수정</button>

											<button type="button position-relative" class="btn btn-danger"
												onclick="delRow()">삭제</button>

										</div>


										<!-- modal 창 -->
										<div class="modal fade  modal-xl" id="exampleModal" tabindex="-1"
											aria-labelledby="exampleModalLabel" aria-hidden="true">
											<div class="modal-dialog">
												<div class="modal-content">
													<div class="modal-header">
														<h1 class="modal-title fs-5" id="exampleModalLabel">Modal title
														</h1>
														<button type="button" class="btn-close" data-bs-dismiss="modal"
															aria-label="Close"></button>
													</div>
													<div class="modal-body">

														<table class="table table-hover">
															<thead>
																<tr>
																	<th scope="col">날짜</th>
																	<th scope="col">매출 항목</th>
																	<th scope="col">비용</th>
																	<th scope="col">기타</th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td><input type="text"></td>
																	<td><input type="text"></td>
																	<td><input type="text"></td>
																	<td><input type="text"></td>
																</tr>
															</tbody>

															<!-- 매입 내역 -->
															<thead>
																<tr>
																	<th scope="col">날짜</th>
																	<th scope="col">매입 항목</th>
																	<th scope="col">비용</th>
																	<th scope="col">기타</th>
																</tr>
															</thead>

															<tbody>
																<tr>
																	<td><input type="text"></td>
																	<td><input type="text"></td>
																	<td><input type="text"></td>
																	<td><input type="text"></td>
																</tr>
															</tbody>
														</table>
													</div>
													<div class="modal-footer">
														<button type="button" class="btn btn-secondary"
															data-bs-dismiss="modal">Close</button>
														<button type="button" class="btn btn-primary">Save
															changes</button>
													</div>
												</div>
											</div>
							</tbody>
						</table>
					</div>

					<!-- tab3 -->
					<div class="tab-pane fade" id="nav-tab-3">
					</div>

					<!-- tab4 -->
					<div class="tab-pane fade" id="nav-tab-4">
						<div id="nav-tab-4" class="h-250px tab-pane fade"></div>
					</div>
				</div>
			</div>


		</div>
		<!-- END panel -->
	</div>
	<!-- END #content -->



	<!-- BEGIN scroll to top btn -->
	<a href="javascript:;" class="btn btn-icon btn-circle btn-success btn-scroll-to-top" data-toggle="scroll-to-top"><i
			class="fa fa-angle-up"></i></a>
	<!-- END scroll to top btn -->
	</div>
	<!-- END #app -->

	<!-- ================== BEGIN core-js ================== -->

	<!-- ================== END core-js ================== -->
	<script>
		var barChartData = [{
			key: 'Cumulative Return',
			values: [
				{ 'label': 'A', 'value': 29, 'color': app.color.red },
				{ 'label': 'B', 'value': 15, 'color': app.color.orange },
				{ 'label': 'C', 'value': 32, 'color': app.color.success },
				{ 'label': 'D', 'value': 196, 'color': app.color.cyan },
				{ 'label': 'E', 'value': 44, 'color': app.color.blue },
				{ 'label': 'F', 'value': 98, 'color': app.color.purple },
				{ 'label': 'G', 'value': 13, 'color': app.color.gray500 },
				{ 'label': 'H', 'value': 5, 'color': app.color.componentColor }
			]
		}];

		nv.addGraph(function () {
			var barChart = nv.models.discreteBarChart()
				.x(function (d) { return d.label })
				.y(function (d) { return d.value })
				.showValues(true)
				.duration(250);

			barChart.yAxis.axisLabel("Total Sales");
			barChart.xAxis.axisLabel('Product');

			d3.select('#nv-bar-chart').append('svg').datum(barChartData).call(barChart);
			nv.utils.windowResize(barChart.update);

			return barChart;
		});



		function delRow() {
			var checkRows = $("input[type='checkbox']:checked");
			for (var i = checkRows.length - 1; i > -1; i--) {
				checkRows.eq(i).closest('tr').remove();
			}


			var tables = $("table");
			tables.each(function () {
				var table = $(this);
				table.find("tr:last-child button").show();
			});
		}


		const alertPlaceholder = document.getElementById('liveAlertPlaceholder')
		const appendAlert = (message, type) => {
			const wrapper = document.createElement('div')
			wrapper.innerHTML = [
				`<div class="alert alert-${type} alert-dismissible" role="alert">`,
				`   <div>${message}</div>`,
				'   <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>',
				'</div>'
			].join('')

			alertPlaceholder.append(wrapper)
		}

		const alertTrigger = document.getElementById('liveAlertBtn')
		if (alertTrigger) {
			alertTrigger.addEventListener('click', () => {
				appendAlert('추가되었습니다.')
			})
		}

		// 차트 script
		var data = [[0, 10], [1, 8], [2, 4], [3, 13], [4, 17], [5, 9]];
		var ticks = [[0, 'JAN'], [1, 'FEB'], [2, 'MAR'], [3, 'APR'], [4, 'MAY'], [5, 'JUN']];
		$.plot('#nav-tab-4', [{ label: 'Bounce Rate', data: data, color: app.color.componentColor }], {
			series: {
			bars: {
				show: true,
				barWidth: 0.6,
				align: 'center',
				fill: true,
				fillColor: 'rgba('+ app.color.componentColorRgb + ', .25)',
				zero: true
			}
			},
			xaxis: {
			tickColor: 'rgba('+ app.color.darkRgb + ', .15)',
			autoscaleMargin: 0.05,
			ticks: ticks
			},
			yaxis: {
			tickColor: 'rgba('+ app.color.darkRgb + ', .15)'
			},
			grid: {
			borderColor: 'rgba('+ app.color.darkRgb + ', .15)',
			borderWidth: 1,
			backgroundColor: 'rgba('+ app.color.darkRgb + ', .035)',
			tickColor: 'rgba('+ app.color.darkRgb + ', .15)'
			},
			legend: {
			noColumns: 0
			},
		});

	</script>

</body>

</html>