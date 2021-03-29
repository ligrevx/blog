my basic csrf version

```php
<?php
$ip = isset($_SERVER['HTTP_CF_CONNECTING_IP']) ? $_SERVER['HTTP_CF_CONNECTING_IP'] : $_SERVER['REMOTE_ADDR'];
$mt = md5(microtime());
$rt = md5($ip).md5($mt);

if( isset($_POST['a']) && isset($_POST['b']) && isset($_POST['c']) && isset($_POST['d']) ) {
   $ip_ = md5($ip);
   $mt_ = md5($_POST['c']);
   $rt_ = md5($_POST['d']);

   if( md5($ip_.$mt_) == $rt_) print("VALID");

   else print("INVALID");
}

?>
-----------------------------------------------------------
TESTER
-----------------------------------------------------------
<form action="" method="POST">
<input type="text" name="a" placeholder="License Number">
<input type="text" name="b" placeholder="DOB">
<input type="hidden" name="c" value="<?php echo $mt;?>">
<input type="hidden" name="d" value="<?php echo $rt;?>">
<input type="submit" value="POST">
</form>
```
