<!-- BEGIN: main -->
<div class="panel panel-info block_download">
	<div class="panel-heading">
		{ROW.title}
	</div>
	<div class="panel-body">
		<!-- BEGIN: is_image -->
		<div class="image">
			<a href="#" id="pop" title="{ROW.title}"> <img id="imageresource" alt="{ROW.title}" src="{FILEIMAGE.src}" width="{FILEIMAGE.width}" height="{FILEIMAGE.height}" class="img-thumbnail" > </a>
			<div class="modal fade" id="imagemodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
								&times;
							</button>
							<h4 class="modal-title" id="myModalLabel">{ROW.title}</h4>
						</div>
						<div class="modal-body">
							<img src="" id="imagepreview" style="width: 400px; height: 264px;" >
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- END: is_image -->
		<!-- BEGIN: introtext -->
		<div class="introtext">
			{ROW.description}
		</div>
		<!-- END: introtext -->
		<!-- BEGIN: filepdf -->
		<iframe frameborder="0" height="600" scrolling="yes" src="{FILEPDF}" width="100%"></iframe>
		<!-- END: filepdf -->
		<div class="detail">
			<em class="fa fa-tasks">&nbsp;</em> {LANG.listing_details}
		</div>
		<div class="panel panel-default">
			<dl class="dl-horizontal">
				<dt>
					{LANG.file_title}:
				</dt>
				<dd>
					{ROW.title}
				</dd>

				<dt>
					{LANG.file_version}:
				</dt>
				<dd>
					{ROW.version}
				</dd>

				<dt>
					{LANG.author_name}:
				</dt>
				<dd>
					{ROW.author_name}
				</dd>

				<dt>
					{LANG.author_url}:
				</dt>
				<dd>
					{ROW.author_url}
				</dd>

				<dt>
					{LANG.bycat2}:
				</dt>
				<dd>
					{ROW.catname}
				</dd>

				<dt>
					{LANG.uploadtime}:
				</dt>
				<dd>
					{ROW.uploadtime}
				</dd>

				<dt>
					{LANG.updatetime}:
				</dt>
				<dd>
					{ROW.updatetime}
				</dd>

				<dt>
					{LANG.user_name}:
				</dt>
				<dd>
					{ROW.user_name}
				</dd>

				<dt>
					{LANG.copyright}:
				</dt>
				<dd>
					{ROW.copyright}
				</dd>

				<dt>
					{LANG.filesize}:
				</dt>
				<dd>
					{ROW.filesize}
				</dd>

				<dt>
					{LANG.view_hits}:
				</dt>
				<dd>
					{ROW.view_hits}
				</dd>

				<dt>
					{LANG.download_hits}:
				</dt>
				<dd id="download_hits">
					{ROW.download_hits}
				</dd>

				<!-- BEGIN: comment_hits -->
				<dt>
					{LANG.comment_hits}:
				</dt>
				<dd>
					{ROW.comment_hits}
				</dd>
				<!-- END: comment_hits -->
			</dl>
		</div>

		<div class="info_download">
			<!-- BEGIN: report -->
			<div class="report pull-right">
				<a href="javascript:void(0);" onclick="nv_link_report({ROW.id});">{LANG.report}</a>
			</div>
			<!-- END: report -->
			<em class="fa fa-download">&nbsp;</em> {LANG.download_detail}
		</div>
		<!-- BEGIN: download_allow -->
		<!-- BEGIN: fileupload -->
		<div class="panel panel-default download">
			<div class="hidden">
				<iframe name="idown">
					&nbsp;
				</iframe>
			</div>

			<div class="panel-heading">
				{LANG.download_fileupload} {SITE_NAME}:
			</div>

			<div class="panel-body">
				<!-- BEGIN: row -->
				<em class="fa fa-link">&nbsp;</em>&nbsp;<a id="myfile{FILEUPLOAD.key}" href="{FILEUPLOAD.link}" onclick="nv_download_file('idown','{FILEUPLOAD.title}');return false;">{FILEUPLOAD.title}</a>
				<!-- END: row -->
			</div>
		</div>
		<!-- END: fileupload -->

		<!-- BEGIN: linkdirect -->
		<div class="panel panel-default download">
			<div class="panel-heading">
				{LANG.download_linkdirect} {HOST}:
			</div>

			<div class="panel-body">
				<!-- BEGIN: row -->
				<span class="fa fa-link">&nbsp;</span>&nbsp;<a href="{LINKDIRECT.link}" onclick="nv_linkdirect('{LINKDIRECT.code}');return false;">{LINKDIRECT.name}</a>
				<!-- END: row -->
			</div>
		</div>
		<!-- END: linkdirect -->
		<!-- END: download_allow -->

		<!-- BEGIN: download_info -->
		<div class="download">
			<div class="alert alert-danger">
				{ROW.download_info}
			</div>
		</div>
		<!-- END: download_info -->

		<div class="detail">
			<span class="fa fa-info">&nbsp;</span>&nbsp;&nbsp;{LANG.file_rating}
		</div>

		<div class="panel panel-default">
			<div class="panel-body">
				<div id="stringrating">
					{LANG.rating_question}
				</div>
				<div style="padding: 5px;">
					<input class="hover-star" type="radio" value="1" title="{LANG.file_rating1}" style="vertical-align: middle" />
					<input class="hover-star" type="radio" value="2" title="{LANG.file_rating2}" style="vertical-align: middle" />
					<input class="hover-star" type="radio" value="3" title="{LANG.file_rating3}" style="vertical-align: middle" />
					<input class="hover-star" type="radio" value="4" title="{LANG.file_rating4}" style="vertical-align: middle" />
					<input class="hover-star" type="radio" value="5" title="{LANG.file_rating5}" style="vertical-align: middle" />
					<span id="hover-test" style="margin-left:20px">{LANG.file_rating_note}</span>
				</div>
			</div>
		</div>
		<!-- BEGIN: keywords -->
		<div class="news_column panel panel-default">
			<div class="panel-body">
				<div class="h5">
					<em class="fa fa-tags">&nbsp;</em><strong>{LANG.keywords}: </strong><!-- BEGIN: loop --><a title="{KEYWORD}" href="{LINK_KEYWORDS}"><em>{KEYWORD}</em></a>{SLASH}<!-- END: loop -->
				</div>
			</div>
		</div>
		<!-- END: keywords -->
		<script type="text/javascript">
			var sr = 0;
			var file_your_rating = '{LANG.file_your_rating}';
			var rating_point = '{LANG.rating_point}';
			var id = '{ROW.id}';
		</script>

		<!-- BEGIN: disablerating -->
		<script type="text/javascript">
			$(".hover-star").rating('disable');
			$('#hover-test').html('{ROW.rating_string}');
			$('#stringrating').html('{LANG.file_rating_note2}');
			sr = 2;
		</script>
		<!-- END: disablerating -->

		<!-- BEGIN: is_admin -->
		<div class="well well-sm">
			<div class="text-right pull-right">
				<a href="{ROW.edit_link}">{GLANG.edit}</a> &divide; <a href="{ROW.del_link}" onclick="nv_del_row(this,{ROW.id});return false;">{GLANG.delete}</a>
			</div>
			{LANG.file_admin}:
		</div>
		<!-- END: is_admin -->
	</div>
</div>
<!-- BEGIN: comment -->
{CONTENT_COMMENT}
<!-- END: comment -->

<!-- END: main -->