<?= $this->extend('layout/template'); ?>


<?= $this->section('content'); ?>


<div class="container">
    <div class="row">
        <div class="col-sm">

            <table>
                <tbody>
                    <tr>
                        <td>
                            <img src="/img/xtreme.jpg" width="500px">
                        </td>
                    </tr>
                </tbody>
            </table>

        </div>

        <div class="col-sm">
            <img src="/img/army-jpg.png" align="center">
            <p></p>
            <h1>Welcome to Airsoft Store</h1>
            <div>
                <button type="button" class="btn btn-outline-dark">About</button>
                <button type="button" class="btn btn-outline-dark">Contact</button>
                <button type="button" class="btn btn-outline-dark">List User</button>
                <button type="button" class="btn btn-outline-dark">List Product</button>
                <button type="button" class="btn btn-outline-dark">Our Teams</button>
                <!-- <button type="button" class="btn btn-outline-dark">Awarded</button> -->
                <button type="button" class="btn btn-outline-dark">Sponsored</button>
            </div>
        </div>
    </div>
    <hr>
</div>
<?= $this->endSection(); ?>