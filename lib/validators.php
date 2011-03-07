<?

function is_phone_number_format($obj, $field)
{
  $format = trim(ereg_replace("[^0-9]", "", $obj->$field));
  return in(strlen($format), 10,11);
}
