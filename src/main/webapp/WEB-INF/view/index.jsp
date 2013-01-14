<html>
<%--head --%>
<jsp:include page="common/head.jsp"></jsp:include>
<body>

	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse"> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
				</a> <a class="brand" href="#">Backbone.sync.SAStruts</a>
				<div class="nav-collapse collapse">
					<ul class="nav">
						<li class="active"><a href="#">Home</a></li>
						<li><a href="#about">About</a></li>
						<li><a href="#contact">Contact</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<div id="container" class="container">
        <div class="well">
		<h1>Backbone.sync.SAStruts</h1>
		<p>
			これは<code>Backbone.sync.SAStruts</code>のサンプルサイトです。<br>
			Guestbookを題材に<code>SAStruts</code>と<code>Backbone.sync</code>の連携部分についてDemoします。
		</p>
        </div>

        <div id="inputForm" class="">
            <form>
			  <fieldset>
			    <h4>コメント登録</h4>
			    <label>
				    <input type="text" placeholder="名前" name="name" id="name" class="input-medium">
	                <input type="text" placeholder="コメント" name="comment" id="comment" class="input-xxlarge">
			    </label>
			    <button type="button" id="create" class="btn btn-primary input-small">登録</button>
			  </fieldset>
            </form>
        </div>

        <div id="comments">
            <h4>コメント一覧</h4>
            <div id="tableHeader">
                <table class="table ">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>名前</th>
                            <th>コメント</th>
                            <th>登録日時</th>
                            <th></th>
                        </tr>
                    </thead>
                </table>
            </div>

            <div id="tableContents" class="hide">
                <table class="table table-striped">
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>あああ</td>
                            <td>こめこえ</td>
                            <td>22222</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>あああ</td>
                            <td>こめこえ</td>
                            <td>22222</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>あああ</td>
                            <td>こめこえ</td>
                            <td>22222</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

	</div>

    <%--templates --%>
<jsp:include page="common/templates.jsp"></jsp:include>

	<%--JS --%>
<jsp:include page="common/scripts.jsp"></jsp:include>

</body>
</html>