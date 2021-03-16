<?php
require_once dirname(__FILE__).'/../config.php';

//include _ROOT_PATH.'/app/sec/check.php';
require_once _ROOT_PATH.'/libs/Smarty.class.php';

function getParameters(&$form){
    $form['x'] = isset($_REQUEST['x']) ? $_REQUEST['x'] : null;
    $form['y'] = isset($_REQUEST['y']) ? $_REQUEST['y'] : null;
    $form['z'] = isset($_REQUEST['z']) ? $_REQUEST['z'] : null;
}

function validate(&$form, &$notification, &$info, &$hide_intro){

    if ( ! (isset($form['x']) && isset($form['y']) && isset($form['z']) ))	return false;
    $hide_intro = true;
    $info[] = 'Parametry zostały przekazane';
    if($form['x'] == ''){
    $notification[] = 'Nie podano kwoty';
}
if($form['y'] == ''){
    $notification[] = 'Nie podano okresu spłaty';
}
if($form['z'] == ''){
    $notification[] = 'Nie podano oprocentowania';
}
if(count($notification) != 0)
    return false;

if(! is_numeric($form['x'])){
    $notification[] = 'Kwota nie jest liczbą';
}
if(! is_numeric($form['y'])){
    $notification[] = 'Źle uzupełniony okres spłaty';
}
if (! is_numeric($form['z'])){
    $notification[] = 'Źle uzupełnione oprocentowanie';
}

if(count($notification) !=0)
    return false;

        else return true;
}

function calculate(&$form, &$result, &$notification, &$info){
    global $role;

    $form['x'] = floatval($form['x']);
    $form['y'] = floatval($form['y']);
    $form['z'] = floatval($form['z']);

    $month = $form['x']/($form['y']*12);

$percent = ($month * $form['z'])/100;
$result = $month + $percent;
}
$form = null;
$notification = array();
$result = null;
$info = array();
$hide_intro = false;

getParameters($form);
if(validate($form,$notification,$info, $hide_intro)){
    calculate($form, $result, $notification, $info);
}

// wywołuje widok z przekazaniem zmiennych
$smarty = new Smarty();

$smarty->assign('app_url',_APP_URL);

$smarty->assign('hide_intro',$hide_intro);
$smarty->assign('form',$form);
$smarty->assign('result',$result);
$smarty->assign('notification',$notification);
$smarty->assign('info',$info);

$smarty->display(_ROOT_PATH.'/app/calc.tpl');