<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daftar Tantangan</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
    <div class="container">
        <h2 class="my-4">Tantangan Saya</h2>
        <table class="table table-striped" id="challenge-table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nama</th>
                    <th>Deskripsi</th>
                    <th>Batas Waktu</th>
                    <th>Status</th>
                    <th>Tanggal Dibuat</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
    </div>

    <script>
        // Memuat data dari server saat halaman dimuat
        $(document).ready(function() {
            fetchData();
        });

        // Memuat data dari server dengan Ajax
        function fetchData() {
            $.ajax({
                url: 'get_tantangan.php',
                type: 'GET',
                dataType: 'json',
                success: function(data) {
                    displayData(data);
                },
                error: function(xhr, status, error) {
                    console.error('Terjadi kesalahan: ' + error);
                }
            });
        }

        // Menampilkan data dalam tabel
        function displayData(data) {
            var table = $('#challenge-table tbody');
            table.empty();
            $.each(data, function(index, challenge) {
                var row = $('<tr>');
                row.append($('<td>').text(challenge.id));
                row.append($('<td>').text(challenge.name));
                row.append($('<td>').text(challenge.description));
                row.append($('<td>').text(challenge.deadline));
                row.append($('<td>').text(challenge.status));
                row.append($('<td>').text(challenge.created_at));
                row.append($('<td>').html('<button class="btn btn-danger" onclick="deleteChallenge(' + challenge.id + ')">Hapus</button>'));
                table.append(row);
            });
        }

        // Menghapus data dengan Ajax
        function deleteChallenge(id) {
            if (confirm('Anda yakin ingin menghapus tantangan ini?')) {
                $.ajax({
                    url: 'delete_tantangan.php?id=' + id,
                    type: 'GET',
                    success: function(response) {
                        // Memuat ulang data setelah penghapusan
                        fetchData();
                    },
                    error: function(xhr, status, error) {
                        console.error('Terjadi kesalahan: ' + error);
                    }
                });
            }
        }
    </script>
</body>
</html>
