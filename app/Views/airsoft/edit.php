<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>


<div class="container">
    <div class="row">
        <div class="col-8">
            <h2 class="my-3">Airsoft Editing Form</h2>

            <form action="/airsoft/update/<?= $airsoft['id']; ?>" method="post" enctype="multipart/form-data">
                <input type="hidden" name="<?= csrf_token() ?>" value="<?= csrf_hash() ?>" />
                <input type="hidden" name="slug" value="<?= $airsoft['slug']; ?>">
                <input type="hidden" name="oldThumbnail" value="<?= $airsoft['thumbnail']; ?>">
                <div class="form-group row">
                    <label for="name" class="col-sm-2 col-form-label">Name</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control <?= ($validation->hasError('name')) ? 'is-invalid' : ''; ?>" id="name" name="name" autofocus value="<?= (old('name')) ? old('name') : $airsoft['name'] ?>">
                        <div id="validationServer03Feedback" class="invalid-feedback">
                            <?= $validation->getError('name'); ?>
                        </div>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="factory" class="col-sm-2 col-form-label">Factory</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="factory" name="factory" value="<?= (old('factory')) ? old('factory') : $airsoft['factory']  ?>">
                    </div>
                </div>


                <div class="form-group row">
                    <label for="thumbnail" class="col-sm-2 col-form-label">Thumbnail</label>
                    <div class="col-sm-2">
                        <img src="/img/<?= $airsoft['thumbnail']; ?>" class="img-thumbnail img-preview">
                    </div>
                    <div class="col-sm-8">
                        <div class="custom-file">
                            <input type="file" class="custom-file-input <?= ($validation->hasError('thumbnail')) ? 'is-invalid' : ''; ?>" id="thumbnail" name="thumbnail" onchange="previewImg()">
                            <div id="validationServer03Feedback" class="invalid-feedback">
                                <?= $validation->getError('thumbnail'); ?>
                            </div>
                            <label class="custom-file-label" for="thumbnail"><?= $airsoft['thumbnail']; ?></label>
                        </div>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="type" class="col-sm-2 col-form-label">Type</label>
                    <div class="col-sm-5"> <select class="form-control" id="type" name="type" value="<?= (old('type')) ? old('type') : $airsoft['type']  ?>">
                            <option>Select Type ...</option>
                            <option>Spring</option>
                            <option>Electric</option>
                            <option>Gas</option>

                        </select></div>
                </div>

                <div class="form-group row">
                    <div class="col-sm-10">
                        <button type="submit" class="btn btn-primary">Update Product</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>


<?= $this->endSection(); ?>