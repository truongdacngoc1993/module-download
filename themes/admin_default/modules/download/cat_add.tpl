<!-- BEGIN: main -->
<!-- BEGIN: error -->
<div class="alert alert-danger">{ERROR}</div>
<!-- END: error -->
<form action="{FORM_ACTION}" method="post">
	<div class="table-responsive">
		<table class="table table-striped table-bordered table-hover">
			<tbody>
				<tr>
					<td> {LANG.category_cat_name} <sup class="required">(*)</sup></td>
					<td><input class="w300 form-control" type="text" value="{DATA.title}" name="title" id="idtitle" maxlength="100" {ONCHANGE} /></td>
				</tr>
				<tr>
					<td> {LANG.alias} </td>
					<td><input class="w300 form-control pull-left" type="text" value="{DATA.alias}" name="alias" id="idalias" maxlength="100" />&nbsp;<em class="fa fa-refresh fa-lg fa-pointer" onclick="get_alias();">&nbsp;</em></td>
				</tr>
				<tr>
					<td> {LANG.description} </td>
					<td><input class="w300 form-control" type="text" value="{DATA.description}" name="description" maxlength="255" /></td>
				</tr>
				<tr>
					<td> {LANG.category_cat_parent} </td>
					<td>
					<select name="parentid" class="form-control w200">
						<!-- BEGIN: parentid -->
						<option value="{LISTCATS.id}"{LISTCATS.selected}>{LISTCATS.name}</option>
						<!-- END: parentid -->
					</select></td>
				</tr>
				<tr>
					<td style="vertical-align:top"> {LANG.groups_view} </td>
					<td>
						<!-- BEGIN: groups_view -->
						<input name="groups_view[]" value="{GROUPS_VIEW.key}" type="checkbox"{GROUPS_VIEW.checked} /> {GROUPS_VIEW.title}
						<br />
						<!-- END: groups_view -->
					</td>
				</tr>
				<tr>
					<td style="vertical-align:top"> {LANG.groups_download} </td>
					<td>
						<!-- BEGIN: groups_download -->
						<input name="groups_download[]" value="{GROUPS_DOWNLOAD.key}" type="checkbox"{GROUPS_DOWNLOAD.checked} /> {GROUPS_DOWNLOAD.title}
						<br />
						<!-- END: groups_download -->
					</td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" name="submit" value="{LANG.cat_save}" class="btn btn-primary" /></td>
				</tr>
			</tbody>
		</table>
	</div>
</form>
<script>
	function get_alias() {
	var title = strip_tags(document.getElementById('idtitle').value);
	if (title != '') {
		$.post(script_name + '?' + nv_name_variable + '=' + nv_module_name + '&' + nv_fc_variable + '=cat&nocache=' + new Date().getTime(), 'gettitle=' + encodeURIComponent(title) , function(res) {
			if (res != "") {
				document.getElementById('idalias').value = res;
			} else {
				document.getElementById('idalias').value = '';
			}
		});
	}
	return false;
}
</script>
<!-- END: main -->
<!-- BEGIN: get_alias -->
<script type="text/javascript">
$(document).ready(function() {
	$("#idtitle").change(function() {
		get_alias();
	});
	});
</script>
<!-- END: get_alias -->