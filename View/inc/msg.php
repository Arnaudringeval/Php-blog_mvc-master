<?php if (!empty($this->sErrMsg)): ?>

  <div class="card red darken-4">
    <div class="card-content white-text">
      <?php  echo $this->sErrMsg.'<br/>'; ?>
    </div>
  </div>
<?php endif ?>

<?php if (!empty($this->sSuccMsg)): ?>
  <div class="card green darken-4">
    <div class="card-content white-text">
        <?php  echo $this->sSuccMsg.'<br/>'; ?>
    </div>
  </div>
<?php endif ?>
