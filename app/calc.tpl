{extends file="../templates/main.tpl"}
{block name=content}
    <div class="container">
        <div class="row mb-5">
            <div class="col-12 text-center">
                <!-- <h3 class="section-sub-title">Get</h3> -->
                <h2 class="section-title mb-3">Kalkulator</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-7 mb-5">



                <form action="{$app_url}/app/calc.php" method="get" class="p-5 bg-white">

                    <h2 class="h4 text-black mb-5">Formularz</h2>

                    <div class="row form-group">

                        <div class="col-md-12">
                            <label class="text-black" for="id_x">Kwota kredytu</label>
                            <input type="text" id="id_x" class="form-control" name="x" placeholder="Podaj kwotę" value="{$form['x']}">
                        </div>
                    </div>

                    <div class="row form-group">

                        <div class="col-md-12">
                            <label class="text-black" for="id_y">Okres spłaty</label>
                            <input type="text" id="id_y" name="y" class="form-control" value="{$form['y']}" placeholder="Podaj okres w latach">
                        </div>
                    </div>

                    <div class="row form-group">

                        <div class="col-md-12">
                            <label class="text-black" for="id_z">Oprocentowanie</label>
                            <input type="text" id="id_z" name="z" class="form-control" value="{$form['z']}" placeholder="Podaj oprocentowanie">
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
                    {if isset($notification)}
                        {if count($notification)>0}
                            <h4>   Wystąpiły błędy: </h4>
                            <ol class="err">
                                {foreach $notification as $msg}
                                    {strip}
                                        <li>{$msg}</li>
                                    {/strip}
                                {/foreach}
                            </ol>
                        {/if}
                    {/if}

                    {if isset($result)}
                        <h4>Twoja rata: </h4>
                        <p class="oky">
                            {$result}
                        </p>
                    {/if}
                </div>

            </div>
        </div>
    </div>
    {/block}