function calculate_cost() {
    echo "jumlah developer: "
    read developers

    echo "gaji dev per bulan: "
    read gajidev

    echo "brp lama proyeknya (bulan): "
    read durpro

    echo "biaya server per bulan: "
    read sercost

    echo "biaya lisensi software: "
    read soflice

    echo "biaya operasional lainnya: "
    read opercost

    echo "budget awal proyek: "
    read proget

    tosary=$((developers * gajidev * durpro))

    toserst=$((sercost * durpro))

    tocost=$((tosary + total_server_cost + soflice + opercost))

    leftget=$((proget - tocost))

    echo "Biaya gaji developer: Rp $total_salary"
    echo "Harga server bulanan: Rp $toserst"
    echo "Harga lisensi software: Rp $soflice"
    echo "Total biaya operasional: Rp $opercost"

    echo "------------------------"

    echo "Total harga keseluruhan proyek: Rp $tocost"
    echo "Sisa duit: Rp $leftget"
    if [$leftget -lt 0]; then

        echo "Proyek melebihi budget sebesar Rp ${leftget#-}"
    else

        echo "Proyek dapat diselesaikan dengan budgetnya."
    fi
}
calculate_cost