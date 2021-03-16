<?php
/* Smarty version 3.1.39, created on 2021-03-16 08:53:11
  from 'F:\xampp\htdocs\kalk_szablon\app\calc.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_605063e75a4068_63691665',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '91303a4dc9e36a6dfd41d0ffa7227dc7f36441fd' => 
    array (
      0 => 'F:\\xampp\\htdocs\\kalk_szablon\\app\\calc.tpl',
      1 => 1615881188,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_605063e75a4068_63691665 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>

<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_873544422605063e7594881_90388863', 'content');
$_smarty_tpl->inheritance->endChild($_smarty_tpl, "../templates/main.tpl");
}
/* {block 'content'} */
class Block_873544422605063e7594881_90388863 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_873544422605063e7594881_90388863',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <div class="container">
        <div class="row mb-5">
            <div class="col-12 text-center">
                <!-- <h3 class="section-sub-title">Get</h3> -->
                <h2 class="section-title mb-3">Kalkulator</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-7 mb-5">



                <form action="<?php echo $_smarty_tpl->tpl_vars['app_url']->value;?>
/app/calc.php" method="get" class="p-5 bg-white">

                    <h2 class="h4 text-black mb-5">Formularz</h2>

                    <div class="row form-group">

                        <div class="col-md-12">
                            <label class="text-black" for="id_x">Kwota kredytu</label>
                            <input type="text" id="id_x" class="form-control" name="x" placeholder="Podaj kwotę" value="<?php echo $_smarty_tpl->tpl_vars['form']->value['x'];?>
">
                        </div>
                    </div>

                    <div class="row form-group">

                        <div class="col-md-12">
                            <label class="text-black" for="id_y">Okres spłaty</label>
                            <input type="text" id="id_y" name="y" class="form-control" value="<?php echo $_smarty_tpl->tpl_vars['form']->value['y'];?>
" placeholder="Podaj okres w latach">
                        </div>
                    </div>

                    <div class="row form-group">

                        <div class="col-md-12">
                            <label class="text-black" for="id_z">Oprocentowanie</label>
                            <input type="text" id="id_z" name="z" class="form-control" value="<?php echo $_smarty_tpl->tpl_vars['form']->value['z'];?>
" placeholder="Podaj oprocentowanie">
                        </div>
                    </div>

                    <div class="row form-group">
                        <div class="col-md-12" >
                            <input type="submit" value="Oblicz" class="btn btn-primary btn-md text-white">
                        </div>
                    </div>


                </form>
            </div>

            <div class="col-md-5">

                <div class="p-4 mb-3">
                    <?php if ((isset($_smarty_tpl->tpl_vars['notification']->value))) {?>
                        <?php if (count($_smarty_tpl->tpl_vars['notification']->value) > 0) {?>
                            <h4>   Wystąpiły błędy: </h4>
                            <ol class="err">
                                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['notification']->value, 'msg');
$_smarty_tpl->tpl_vars['msg']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['msg']->value) {
$_smarty_tpl->tpl_vars['msg']->do_else = false;
?>
                                    <li><?php echo $_smarty_tpl->tpl_vars['msg']->value;?>
</li>
                                <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                            </ol>
                        <?php }?>
                    <?php }?>

                    <?php if ((isset($_smarty_tpl->tpl_vars['result']->value))) {?>
                        <h4>Twoja rata: </h4>
                        <p class="oky">
                            <?php echo $_smarty_tpl->tpl_vars['result']->value;?>

                        </p>
                    <?php }?>
                </div>

            </div>
        </div>
    </div>
    <?php
}
}
/* {/block 'content'} */
}
