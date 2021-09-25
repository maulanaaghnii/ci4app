<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<div class="container">
    <div class="row">
        <div class="col">
            <!-- <a href="/airsoft/create/" class="btn btn-primary my-3">Add Product</a> -->
            <h1 class="mt-2">Users List</h1>

            <table class="table table-hover">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Name</th>
                        <th scope="col">Addres</th>
                        <th scope="col">Email</th>
                        <th scope="col">Country</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 1; ?>
                    <?php foreach ($users as $o) : ?>
                        <tr>
                            <th scope="row"><?= $i++; ?></th>
                            <td><?= $o['name_user']; ?></td>
                            <td><?= $o['addres_user']; ?></td>
                            <td><?= $o['email_user']; ?></td>
                            <td><?= $o['country_user']; ?></td>

                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>

        </div>
    </div>
</div>


<?= $this->endSection(); ?>