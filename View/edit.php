<?php require 'inc/header.php' ?>
<?php require 'inc/topbar.php' ?>

<div class="container">
  <?php if (empty($this->oPosts)): ?>
    <h1>Il n'y a aucun article.</h1>
    <p><button type="button" onclick="window.location='<?=ROOT_URL?>admin_add.html'" class="btn blue darken-4 waves-effect waves-light">Ajoutez votre premier article!</button></p>
  <?php else: ?>
  <h1>Edition</h1>
  <a href="<?=ROOT_URL?>admin_add.html"><button class="btn blue darken-4 waves-effect waves-light">Ajouter un article</button></a>
  <br>
  <br>
  <hr>

  <table class="striped">
    <thead>
      <tr>
          <th>Titre</th>
          <th>Date</th>
          <th>Modifié</th>
          <th>Action</th>
      </tr>
    </thead>

    <tbody>
      <?php foreach ($this->oPosts as $oPost): ?>
        <tr>
          <td><?= $oPost->title ?></td>
          <td>Le <?= date('d/m/Y à H:i', strtotime($oPost->createdDate)); ?></td>
          <td>Le <?= date('d/m/Y à H:i', strtotime($oPost->modifiedDate)); ?></td>
          <td>
            <?php require 'inc/control_buttons.php' ?>
          </td>
        </tr>
      <?php endforeach ?>
    </tbody>
  </table>
</div>
<?php endif ?>
