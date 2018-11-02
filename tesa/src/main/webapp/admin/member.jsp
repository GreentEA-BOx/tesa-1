	<section>
		<div class="cotainer">
		<div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>회원목록</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <ul class="dropdown-menu" role="menu">
                          <li><a href="#">Settings 1</a>
                          </li>
                          <li><a href="#">Settings 2</a>
                          </li>
                        </ul>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    
                    <table id="datatable-checkbox" class="table table-striped table-bordered bulk_action">
                      <thead>
                        <tr>
                          <th><input type="checkbox" id="check-all" class="flat"></th>
                          <th>No</th>
                          <th>ID</th>
                          <th>NAME</th>
                          <th>TEL</th>
                          <th>EMAIL</th>
                          <th>Join Date</th>
                          <th>Withdrawal</th>
                        </tr>
                      </thead>
                      <tbody>
                       <c:forEach items="${mlist }" var="m">
                       	<tr>
                       		<td><input type="checkbox" class="flat"></td>
                       		<td>${m.m_code }</td>
                       		<td>${m.m_id }</td>
                       		<td>${m.m_name }</td>
                       		<td>${m.m_tel }</td>
                       		<td>${m.m_email }</td>
                       		<td>DATE</td>
                       		<td>${m.m_del }</td>
                       	</tr>
                       </c:forEach>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
			</div>
		</div>
	</section>