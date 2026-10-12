
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/makanan_model.dart';

class CustumeMakananCard extends StatelessWidget {
  final MakananModel makanan;
  final VoidCallback onTap;

  const CustumeMakananCard({
    super.key,
    required this.makanan,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  makanan.gambar,
                  width: 85,
                  height: 85,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      width: 85,
                      height: 85,
                      color: Colors.blue.shade50,
                      child: const Icon(
                        Icons.restaurant,
                        color: Colors.blue,
                        size: 35,
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(width: 14),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      makanan.namaMakanan,
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 6),

                    Text(
                      "Rp ${makanan.harga}",
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.blue,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    const SizedBox(height: 6),

                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 18,
                        ),
                        const SizedBox(width: 4),
                        Expanded(
                          child: Text(
                            makanan.review,
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(width: 8),

              const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 18,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
