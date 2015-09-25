<!-- BEGIN: main -->
<div class="table-responsive">
	<table class="table table-striped table-bordered table-hover">
		<colgroup>
			<col class="w50" />
			<col span="2" />
			<col class="w100" />
			<col class="w150" />
		</colgroup>
		<thead>
			<tr>
				<th class="text-center">{LANG.number}</th>
				<th>{LANG.alias}</th>
				<th>{LANG.keywords}</th>
				<th class="text-center">{LANG.numlinks}</th>
				<th>&nbsp;</th>
			</tr>
		</thead>
		<tbody>
			<!-- BEGIN: loop -->
			<tr>
				<td class="text-center">{ROW.number}</td>
				<td><a href="{ROW.link}">{ROW.alias}</a></td>
				<td>
					{ROW.keywords}
					<!-- BEGIN: incomplete -->
				 	<em class="text-danger fa fa-lg fa-warning tags-tip" data-toggle="tooltip" data-placement="top" title="{LANG.tags_no_description}">&nbsp;</em>
					<!-- END: incomplete -->
				</td>
				<td class="text-center">{ROW.numdownload}</td>
				<td class="text-center">
					<em class="fa fa-edit fa-lg">&nbsp;</em> <a href="{ROW.url_edit}">{GLANG.edit}</a> &nbsp;
					<em class="fa fa-trash-o fa-lg">&nbsp;</em> <a href="javascript:void(0);" onclick="nv_del_tags({ROW.did})">{GLANG.delete}</a>
				</td>
			</tr>
			<!-- END: loop -->
		</tbody>
		<!-- BEGIN: other -->
		<tfoot>
			<tr>
				<td colspan="5">{LANG.alias_search}</td>
			</tr>
		</tfoot>
		<!-- END: other -->
	</table>
</div>
<script type="text/javascript">
$(function(){
	$('.tags-tip').tooltip();
});
</script>
<!-- END: main -->