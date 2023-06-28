<div class="container-fluid">
	<div class="panel panel-default" style="margin-top: 20px;">
	  <div class="panel-heading">Detail Produk</div>
	  <div class="panel-body">
	    <?php foreach($barang as $brg): ?>
	    <div class="row">	    	
	    	<div class="col-md-4">
	    		<img src="<?php echo base_url().'/uploads/'.$brg->gambar ?>" class="img-responsive">
	    	</div>
	    	<div class="col-md-8">
	    		<table class="table">
	    			<tr>
	    				<td>Nama Produk</td>
	    				<td><strong><?php echo $brg->nama_barang ?></strong></td> 
	    			</tr>
	    			<tr>
	    				<td>Keterangan</td>
	    				<td><strong><?php echo $brg->keterangan ?></strong></td> 
	    			</tr>
	    			<tr>
	    				<td>Kategori</td>
	    				<td><strong><?php echo $brg->kategori ?></strong></td> 
	    			</tr>
	    			<tr>
	    				<td>Stok</td>
	    				<td><strong><?php echo $brg->stok ?></strong></td> 
	    			</tr>
	    			<tr>
	    				<td>Harga</td>
	    				<td><strong><div class="btn btn-sm btn-success"><?php echo "Rp.	".number_format($brg->harga, 0,',','.') ?></div></strong></td> 
	    			</tr>
	    		</table>
	    		<?php echo anchor('dashboard/tambah_ke_keranjang/'.$brg->id_barang,'<div class="btn btn-sm btn-primary">Tambah ke Keranjang</div>') ?>
			    <?php echo anchor('dashboard/index/','<div class="btn btn-sm btn-danger">Kembali</div>') ?>
	    	</div>
	    </div>
		<?php endforeach; ?>
	  </div>
	</div>
</div>