<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>passweb</title>
</head>
<body>
	<form name="Request" method="post" action="testServlet">
		<h1 align="center">
			<label><big>What You Need</big></label>
		</h1>
		<table align="center" width="300px" border="5"
			style="WORD-BREAK: break-all; WORD-WRAP: break-word">
			<tr>
				<td><div align="right">Progrem ID:</div></td>
				<td><input type="text" name="preg_id"></td>
			</tr>
			<tr>
				<td><div align="right">CPU:</div></td>
				<td><input type="text" name="preg_cpu"></td>
			</tr>
			<tr>
				<td><div align="right">Memory:</div></td>
				<td><input type="text" name="preg_mem"></td>
			</tr>
			<tr>
				<td><div align="right">DiskSpace:</div></td>
				<td><input type="text" name="preg_diskspace"></td>
			</tr>
			<tr>
				<td><div align="right">Instances:</div></td>
				<td><input type="text" name="preg_instances"></td>
			</tr>
			<tr>
				<td><div align="right">cmd:</div></td>
				<td><input type="text" name="preg_cmd"></td>
			</tr>
			<tr>
				<td><div align="right">
						<input type="Submit" name="Submit" value="Submit">
					</div></td>
			</tr>
		</table>
	</form>
</body>
</html>