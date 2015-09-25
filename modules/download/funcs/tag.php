<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC (contact@vinades.vn)
 * @Copyright (C) 2014 VINADES.,JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate 3-6-2010 0:14
 */

if( ! defined( 'NV_IS_MOD_DOWNLOAD' ) ) die( 'Stop!!!' );

$alias = $nv_Request->get_title( 'alias', 'get' );
$array_op = explode( '/', $alias );
$alias = $array_op[0];

if( isset( $array_op[1] ) )
{
	if( sizeof( $array_op ) == 2 and preg_match( '/^page\-([0-9]+)$/', $array_op[1], $m ) )
	{
		$page = intval( $m[1] );
	}
	else
	{
		$alias = '';
	}
}
$page_title = trim( str_replace( '-', ' ', $alias ) );

if( ! empty( $page_title ) and $page_title == strip_punctuation( $page_title ) )
{
	$array_item=array();
	$_sql = 'SELECT * FROM ' . NV_PREFIXLANG . '_' . $module_data . '_tags as a
			INNER JOIN ' . NV_PREFIXLANG . '_' . $module_data . '_tags_id as b
			ON a.did=b.did
			WHERE alias='.$db->quote($alias);

	$_query = $db->query( $_sql );

	$check=$_query->rowCount();
	$array_item=array();
	if($check>0)
	{
		while( $row = $_query->fetch() )
		{

			$sql = 'SELECT * FROM ' . NV_PREFIXLANG . '_' . $module_data . ' WHERE id='.$row['id'];
			$query = $db->query( $sql );
			if( $rows = $query->fetch() )
			{
				$array_item[$rows['id']]=$rows;
			}
		}
	}

	$contents = topic_theme_download( $array_item );

	if( $page > 1 )
	{
		$page_title .= ' ' . NV_TITLEBAR_DEFIS . ' ' . $lang_global['page'] . ' ' . $page;
	}

	include NV_ROOTDIR . '/includes/header.php';
	echo nv_site_theme( $contents );
	include NV_ROOTDIR . '/includes/footer.php';
}

$redirect = '<meta http-equiv="Refresh" content="3;URL=' . nv_url_rewrite( NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=' . $module_name, true ) . '" />';
nv_info_die( $lang_global['error_404_title'], $lang_global['error_404_title'], $lang_global['error_404_content'] . $redirect );
