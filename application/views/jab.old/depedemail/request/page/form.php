<!--<h3>FORM HELPER</h3>-->
<!--<form action="" method="post" class="" id="" enctype="multipart/form-data">
  
    <input type="text" placeholder="Name"/>
    <input type="email" placeholder="Email"/>
    <button type="submit">Submit</button>
</form>-->

<h3>WITH FORM FORM HELPER</h3>
<?php
echo form_open('c_emailrequest/request_by_daterange', array(
    "method" => "post",
    "class" => "form-class",
    "id" => "form-id",
    "enctype" => "multipart/form-data"
));
?>
<input type="text" placeholder="Name" name="name"/>
<input type="email" placeholder="Email" name="email"/>
<button type="submit">Submit</button>

<?php echo form_close(); ?>