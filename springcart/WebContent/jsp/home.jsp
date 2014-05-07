<link rel="stylesheet" type="text/css" href="style.css" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="page">

	<form method="post" action="dashboard">
		<table id="login">


			<tr>
				<td style="color: red;">${message}</td>
			</tr>
			<tr>
				<td>User Name Or Email</td>
				<td><input type="text" name="name" size="16" /></td>

			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="password" value="" size="16" /></td>
			</tr>

			<tr>
				<td colspan="2"><input type="submit" value="Log In"
					name="stdsubmit" class="send_button" /></td>
			</tr>
			<tr>
				<td>Click <a href="registration">here</a> to register.
				</td>
			</tr>
		</table>
	</form>

</div>
