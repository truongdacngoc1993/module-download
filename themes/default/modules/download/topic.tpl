<!-- BEGIN: main -->
<!-- BEGIN: listpostcat -->
<div class="panel panel-default">
	<div class="clearfix panel-body">
		<!-- BEGIN: is_admin -->
		<div class="pull-right">
			(<a href="{listpostcat.edit_link}">{GLANG.edit}</a>)
		</div>
		<!-- END: is_admin -->
		<!-- BEGIN: image -->
  		<div class="col-xs-12 col-md-4">
			<a href="{listpostcat.more_link}"><img src="{listpostcat.imagesrc}" alt="{listpostcat.title}" class="img-thumbnail" /></a>
		</div>
		<!-- END: image -->
		<h4><a title="{listpostcat.title}" href="{listpostcat.more_link}">{listpostcat.title}</a></h4>
		<p>
			{listpostcat.introtext}
		</p>
	</div>
	<div class="panel-footer">
		<ul class="list-inline">
			<li><em class="fa fa-upload">&nbsp;</em> {LANG.uploadtime}: {listpostcat.uploadtime}</li>
			<li><em class="fa fa-eye">&nbsp;</em> {LANG.view_hits} {listpostcat.view_hits}</li>
			<li><em class="fa fa-download">&nbsp;</em> {LANG.download_hits} {listpostcat.download_hits}</li>
			<li><em class="fa fa-comments">&nbsp;</em> {LANG.comment_hits}: {listpostcat.comment_hits}</li>
		</ul>
	</div>
</div>
<!-- END: listpostcat -->
<!-- BEGIN: generate_page -->
<div class="page-nav m-bottom aright">
	{GENERATE_PAGE}
</div>
<!-- END: generate_page -->
<!-- END: main -->