<h2>Thống kê sản phẩm</h2>
<table class="table table-stripped">
    <thead>
        <tr>
            <th>Ngày thêm</th>
            <th>Mã sản phẩm</th>
            <th>Tên sản phẩm</th>
            <th>Ảnh sản phẩm</th>
            <th>Giá</th>
            <th>Số lượng</th>
            <th>Trạng thái</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($statistic as $item) : ?>
            <tr>
                <td><?= $item['date_add'] ?></td>
                <td><?= $item['id_product'] ?></td>
                <td><?= $item['product_name'] ?></td>
                <td><img class = "img-pro-statis" src="<?= PUBLIC_ASSETS.$item['product_image'] ?>" alt=""></td>
                <td><?= $item['price'] ?></td>
                <td><?= $item['product_quantity'] ?></td>
                <td><?= $item['status'] == 1 ? "Còn hàng" : "Hết hàng" ?></td>
            </tr>
        <?php endforeach ?>
    </tbody>
</table>
 <a href="<?= ADMIN_URL .'thong-ke/bieu-do'?>" class="btn btn-sm btn-info">Biểu đồ</a>