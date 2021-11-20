<?php require_once './includes/header.php'; ?>

<nav class="left-navigation">
	<h2>Dashboard</h2>
	<ul>

 <?php if (isset($_SESSION['login']) && $_SESSION['user_role']=='news-poster-admin' ) {

    echo'<li><a href="./create_post.php">Add New Post</a></li>
        <li><a href="./edit_view_delete_post.php">View/Edit/Delete Your Post</a></li>
        <li><a href="./post_comments.php">Your Post Comments</a></li>
		<li><a href="./view_profile.php">view your profile</a></li>
		<li><a href="./update_account.php">Edit your profile</a></li>
		';

 }elseif(isset($_SESSION['login']) && $_SESSION['user_role']=='admin' ){
echo '
        <li><a href="./add_admin.php">Add New Admin</a></li>
		<li><a href="./view_admin.php">View/Delete/edit Admin</a></li>
		<li><a href="./view_profile.php">view your profile</a></li>
		<li><a href="./update_account.php">Edit your profile</a></li>
		<li><a href="./add_category.php">Add Catagory</a></li>
		<li><a href="./view_edit_category.php">Edit/Delete Catagory</a></li>
		<li><a href="./view_all_post.php">view All Posts</a></li>

		';

 }?>


		
		<!-- <li><a href="./edit_category.php">Delete Catagory</a></li> -->
	</ul>
</nav>