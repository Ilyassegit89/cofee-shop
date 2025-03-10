<!DOCTYPE html>
<html lang="en" dir="ltr">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="robots" content="noindex">
<title>Export: local - AdminerEvo</title>
<link rel="stylesheet" type="text/css" href="?file=default.css&amp;version=4.8.3">
<script src='?file=functions.js&amp;version=4.8.3' nonce="MjM2N2UzNTUzYmRlNTZlMWUxYTk5MDE3MjdlNzQ0YWE="></script>
<link rel="shortcut icon" type="image/x-icon" href="?file=favicon.ico&amp;version=4.8.3">
<link rel="apple-touch-icon" href="?file=favicon.ico&amp;version=4.8.3">

<body class="ltr nojs">
<script nonce="MjM2N2UzNTUzYmRlNTZlMWUxYTk5MDE3MjdlNzQ0YWE=">
mixin(document.body, {onkeydown: bodyKeydown, onclick: bodyClick});
document.body.className = document.body.className.replace(/ nojs/, ' js');
var offlineMessage = 'You are offline.';
var thousandsSeparator = ',';
</script>

<div id="help" class="jush-sql jsonly hidden"></div>
<script nonce="MjM2N2UzNTUzYmRlNTZlMWUxYTk5MDE3MjdlNzQ0YWE=">mixin(qs('#help'), {onmouseover: function () { helpOpen = 1; }, onmouseout: helpMouseout});</script>

<div id="content">
<p id="breadcrumb"><a href=".">MySQL</a> &raquo; <a href='?username=root' accesskey='1' title='Alt+Shift+1'>Local Site: coffeeshop</a> &raquo; <a href="?username=root&amp;db=local">local</a> &raquo; Export
<h2>Export: local</h2>
<div id='ajaxstatus' class='jsonly hidden'></div>
<div class='error'>Too big POST data. Reduce the data or increase the 'post_max_size' configuration directive.</div>

<form action="" method="post">
<table cellspacing="0" class="layout">
<tr><th>Output<td><label><input type='radio' name='output' value='text' checked>open</label><label><input type='radio' name='output' value='file'>save</label><label><input type='radio' name='output' value='gz'>gzip</label>
<tr><th>Format<td><label><input type='radio' name='format' value='sql' checked>SQL</label><label><input type='radio' name='format' value='csv'>CSV,</label><label><input type='radio' name='format' value='csv;'>CSV;</label><label><input type='radio' name='format' value='tsv'>TSV</label>
<tr><th>Database<td><select name='db_style'><option selected><option>USE<option>DROP+CREATE<option>CREATE</select><label><input type='checkbox' name='routines' value='1' checked>Routines</label><label><input type='checkbox' name='events' value='1' checked>Events</label><tr><th>Tables<td><select name='table_style'><option><option selected>DROP+CREATE<option>CREATE</select><label><input type='checkbox' name='auto_increment' value='1'>Auto Increment</label><label><input type='checkbox' name='triggers' value='1' checked>Triggers</label><tr><th>Data<td><select name='data_style'><option><option>TRUNCATE+INSERT<option selected>INSERT<option>INSERT+UPDATE</select></table>
<p><input type="submit" value="Export">
<input type="hidden" name="token" value="472722:351788">

<table cellspacing="0">
<script nonce="MjM2N2UzNTUzYmRlNTZlMWUxYTk5MDE3MjdlNzQ0YWE=">qsl('table').onclick = dumpClick;</script>
<thead><tr><th style='text-align: left;'><label class='block'><input type='checkbox' id='check-tables' checked>Tables</label><script nonce="MjM2N2UzNTUzYmRlNTZlMWUxYTk5MDE3MjdlNzQ0YWE=">qs('#check-tables').onclick = partial(formCheck, /^tables\[/);</script><th style='text-align: right;'><label class='block'>Data<input type='checkbox' id='check-data' checked></label><script nonce="MjM2N2UzNTUzYmRlNTZlMWUxYTk5MDE3MjdlNzQ0YWE=">qs('#check-data').onclick = partial(formCheck, /^data\[/);</script></thead>
<tr><td><label class='block'><input type='checkbox' name='tables[]' value='wp_commentmeta' checked>wp_commentmeta</label><td align='right'><label class='block'><span id='Rows-wp_commentmeta'></span><input type='checkbox' name='data[]' value='wp_commentmeta' checked></label>
<tr><td><label class='block'><input type='checkbox' name='tables[]' value='wp_comments' checked>wp_comments</label><td align='right'><label class='block'><span id='Rows-wp_comments'></span><input type='checkbox' name='data[]' value='wp_comments' checked></label>
<tr><td><label class='block'><input type='checkbox' name='tables[]' value='wp_links' checked>wp_links</label><td align='right'><label class='block'><span id='Rows-wp_links'></span><input type='checkbox' name='data[]' value='wp_links' checked></label>
<tr><td><label class='block'><input type='checkbox' name='tables[]' value='wp_options' checked>wp_options</label><td align='right'><label class='block'><span id='Rows-wp_options'></span><input type='checkbox' name='data[]' value='wp_options' checked></label>
<tr><td><label class='block'><input type='checkbox' name='tables[]' value='wp_postmeta' checked>wp_postmeta</label><td align='right'><label class='block'><span id='Rows-wp_postmeta'></span><input type='checkbox' name='data[]' value='wp_postmeta' checked></label>
<tr><td><label class='block'><input type='checkbox' name='tables[]' value='wp_posts' checked>wp_posts</label><td align='right'><label class='block'><span id='Rows-wp_posts'></span><input type='checkbox' name='data[]' value='wp_posts' checked></label>
<tr><td><label class='block'><input type='checkbox' name='tables[]' value='wp_term_relationships' checked>wp_term_relationships</label><td align='right'><label class='block'><span id='Rows-wp_term_relationships'></span><input type='checkbox' name='data[]' value='wp_term_relationships' checked></label>
<tr><td><label class='block'><input type='checkbox' name='tables[]' value='wp_term_taxonomy' checked>wp_term_taxonomy</label><td align='right'><label class='block'><span id='Rows-wp_term_taxonomy'></span><input type='checkbox' name='data[]' value='wp_term_taxonomy' checked></label>
<tr><td><label class='block'><input type='checkbox' name='tables[]' value='wp_termmeta' checked>wp_termmeta</label><td align='right'><label class='block'><span id='Rows-wp_termmeta'></span><input type='checkbox' name='data[]' value='wp_termmeta' checked></label>
<tr><td><label class='block'><input type='checkbox' name='tables[]' value='wp_terms' checked>wp_terms</label><td align='right'><label class='block'><span id='Rows-wp_terms'></span><input type='checkbox' name='data[]' value='wp_terms' checked></label>
<tr><td><label class='block'><input type='checkbox' name='tables[]' value='wp_usermeta' checked>wp_usermeta</label><td align='right'><label class='block'><span id='Rows-wp_usermeta'></span><input type='checkbox' name='data[]' value='wp_usermeta' checked></label>
<tr><td><label class='block'><input type='checkbox' name='tables[]' value='wp_users' checked>wp_users</label><td align='right'><label class='block'><span id='Rows-wp_users'></span><input type='checkbox' name='data[]' value='wp_users' checked></label>
<script nonce="MjM2N2UzNTUzYmRlNTZlMWUxYTk5MDE3MjdlNzQ0YWE=">ajaxSetHtml('?username=root&db=local&script=db');</script>
</table>
</form>
<p><a href='?username=root&amp;db=local&amp;dump=wp%25'>wp</a></div>

<form action='' method='post'>
<div id='lang'>Language: <select name='lang'><option value="en" selected>English<option value="ar">العربية<option value="bg">Български<option value="bn">বাংলা<option value="bs">Bosanski<option value="ca">Català<option value="cs">Čeština<option value="da">Dansk<option value="de">Deutsch<option value="el">Ελληνικά<option value="es">Español<option value="et">Eesti<option value="fa">فارسی<option value="fi">Suomi<option value="fr">Français<option value="gl">Galego<option value="he">עברית<option value="hu">Magyar<option value="id">Bahasa Indonesia<option value="it">Italiano<option value="ja">日本語<option value="ka">ქართული<option value="ko">한국어<option value="lv">Latviešu<option value="lt">Lietuvių<option value="ms">Bahasa Melayu<option value="nl">Nederlands<option value="no">Norsk<option value="pl">Polski<option value="pt">Português<option value="pt-br">Português (Brazil)<option value="ro">Limba Română<option value="ru">Русский<option value="sk">Slovenčina<option value="sl">Slovenski<option value="sr">Српски<option value="sv">Svenska<option value="ta">த‌மிழ்<option value="th">ภาษาไทย<option value="tr">Türkçe<option value="uk">Українська<option value="vi">Tiếng Việt<option value="zh">简体中文<option value="zh-tw">繁體中文</select><script nonce="MjM2N2UzNTUzYmRlNTZlMWUxYTk5MDE3MjdlNzQ0YWE=">qsl('select').onchange = function () { this.form.submit(); };</script> <input type='submit' value='Use' class='hidden'>
<input type='hidden' name='token' value='715051:557461'>
</div>
</form>
<form action="" method="post">
<p class="logout">
<input type="submit" name="logout" value="Logout" id="logout">
<input type="hidden" name="token" value="472722:351788">
</p>
</form>
<div id="menu">
<h1>
<a href='https://www.adminerevo.org/' target="_blank" rel="noreferrer noopener" id='h1'>AdminerEvo</a> <span class="version">4.8.3</span>
</h1>
<script src='?file=jush.js&amp;version=4.8.3' nonce="MjM2N2UzNTUzYmRlNTZlMWUxYTk5MDE3MjdlNzQ0YWE="></script>
<script nonce="MjM2N2UzNTUzYmRlNTZlMWUxYTk5MDE3MjdlNzQ0YWE=">
var jushLinks = { sql: [ '?username=root&db=local&table=$&', /\b(wp_commentmeta|wp_comments|wp_links|wp_options|wp_postmeta|wp_posts|wp_term_relationships|wp_term_taxonomy|wp_termmeta|wp_terms|wp_usermeta|wp_users)\b/g ] };
jushLinks.bac = jushLinks.sql;
jushLinks.bra = jushLinks.sql;
jushLinks.sqlite_quo = jushLinks.sql;
jushLinks.mssql_bra = jushLinks.sql;
bodyLoad('8.0');
</script>
<form action="">
<table id='dbs'><tr><td width=1><input type="hidden" name="username" value="root"><label title='database' for='menu_db'>DB</label>:</td><td><select name='db' id='menu_db'><option value=""><option>information_schema<option selected>local<option>mysql<option>performance_schema<option>sys</select><script nonce="MjM2N2UzNTUzYmRlNTZlMWUxYTk5MDE3MjdlNzQ0YWE=">mixin(qsl('select'), {onmousedown: dbMouseDown, onchange: dbChange});</script>
</td></tr><tr class='hidden'><td colspan=2><input type='submit' value='Use'></td></tr>
</table><input type='hidden' name='dump' value=''><p class='links'><a href='?username=root&amp;db=local&amp;sql='>SQL command</a><span class='separator'>|</span><a href='?username=root&amp;db=local&amp;import='>Import</a><span class='separator'>|</span><a href='?username=root&amp;db=local&amp;dump=' id='dump' class='active '>Export</a></p><p class='links'><a href="?username=root&amp;db=local&amp;create=">Create table</a></p><ul id='tables'><script nonce="MjM2N2UzNTUzYmRlNTZlMWUxYTk5MDE3MjdlNzQ0YWE=">mixin(qs('#tables'), {onmouseover: menuOver, onmouseout: menuOut});</script>
<li><a href="?username=root&amp;db=local&amp;select=wp_commentmeta" class='select' title='Select data'>select</a> <a href="?username=root&amp;db=local&amp;table=wp_commentmeta" class='structure' title='Show structure'>wp_commentmeta</a>
<li><a href="?username=root&amp;db=local&amp;select=wp_comments" class='select' title='Select data'>select</a> <a href="?username=root&amp;db=local&amp;table=wp_comments" class='structure' title='Show structure'>wp_comments</a>
<li><a href="?username=root&amp;db=local&amp;select=wp_links" class='select' title='Select data'>select</a> <a href="?username=root&amp;db=local&amp;table=wp_links" class='structure' title='Show structure'>wp_links</a>
<li><a href="?username=root&amp;db=local&amp;select=wp_options" class='select' title='Select data'>select</a> <a href="?username=root&amp;db=local&amp;table=wp_options" class='structure' title='Show structure'>wp_options</a>
<li><a href="?username=root&amp;db=local&amp;select=wp_postmeta" class='select' title='Select data'>select</a> <a href="?username=root&amp;db=local&amp;table=wp_postmeta" class='structure' title='Show structure'>wp_postmeta</a>
<li><a href="?username=root&amp;db=local&amp;select=wp_posts" class='select' title='Select data'>select</a> <a href="?username=root&amp;db=local&amp;table=wp_posts" class='structure' title='Show structure'>wp_posts</a>
<li><a href="?username=root&amp;db=local&amp;select=wp_term_relationships" class='select' title='Select data'>select</a> <a href="?username=root&amp;db=local&amp;table=wp_term_relationships" class='structure' title='Show structure'>wp_term_relationships</a>
<li><a href="?username=root&amp;db=local&amp;select=wp_term_taxonomy" class='select' title='Select data'>select</a> <a href="?username=root&amp;db=local&amp;table=wp_term_taxonomy" class='structure' title='Show structure'>wp_term_taxonomy</a>
<li><a href="?username=root&amp;db=local&amp;select=wp_termmeta" class='select' title='Select data'>select</a> <a href="?username=root&amp;db=local&amp;table=wp_termmeta" class='structure' title='Show structure'>wp_termmeta</a>
<li><a href="?username=root&amp;db=local&amp;select=wp_terms" class='select' title='Select data'>select</a> <a href="?username=root&amp;db=local&amp;table=wp_terms" class='structure' title='Show structure'>wp_terms</a>
<li><a href="?username=root&amp;db=local&amp;select=wp_usermeta" class='select' title='Select data'>select</a> <a href="?username=root&amp;db=local&amp;table=wp_usermeta" class='structure' title='Show structure'>wp_usermeta</a>
<li><a href="?username=root&amp;db=local&amp;select=wp_users" class='select' title='Select data'>select</a> <a href="?username=root&amp;db=local&amp;table=wp_users" class='structure' title='Show structure'>wp_users</a>
</ul>
</div>
<script nonce="MjM2N2UzNTUzYmRlNTZlMWUxYTk5MDE3MjdlNzQ0YWE=">setupSubmitHighlight(document);</script>
<script nonce="MjM2N2UzNTUzYmRlNTZlMWUxYTk5MDE3MjdlNzQ0YWE=">setupCopyToClipboard(document);</script>
</body>
</html>