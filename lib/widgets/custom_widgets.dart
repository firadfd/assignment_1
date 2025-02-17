import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomWidgets {
  static Widget chipsItem(
      String label, bool isSelected, ValueChanged<String> onPressed) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          onPressed(label);
        },
        child: Chip(
          label: Text(
            label,
            style: GoogleFonts.akatab(
                fontSize: 14, color: Colors.white, fontWeight: FontWeight.w400),
          ),
          backgroundColor: isSelected ? Colors.red : Colors.grey[800],
          labelStyle: TextStyle(
            color: isSelected ? Colors.white : Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  static Widget movieCard(ValueChanged<String> onPressed) {
    return InkWell(
      onTap: () {
        onPressed("https://static.posters.cz/image/hp/53729.jpg");
      },
      child: Card(
        color: Colors.black,
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.network(
            "https://static.posters.cz/image/hp/53729.jpg",
            width: double.infinity,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }

  static Widget moviePoster(
      String url, String title, ValueChanged<String> onPressed) {
    return InkWell(
      onTap: () {
        onPressed(url);
      },
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              url,
              height: 115,
              width: 76,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title.length >= 13 ? "${title.substring(0, 10)}..." : title,
            style: GoogleFonts.roboto(
              fontSize: 12,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  static Widget watchedEpisode(String imageUrl, String title, double progress,
      ValueChanged<String> onPressed) {
    return InkWell(
      onTap: () {
        onPressed(imageUrl);
      },
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  imageUrl,
                  height: 100,
                  width: 170,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: FractionallySizedBox(
                  alignment: Alignment.centerLeft,
                  widthFactor: progress,
                  child: Container(
                    height: 4,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          SizedBox(
            width: 170,
            child: Text(
              title,
              style: GoogleFonts.akatab(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.start,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  static Widget recommendedMoviePoster(
      String url, String title, ValueChanged<String> onPressed) {
    return InkWell(
      onTap: () {
        onPressed(url);
      },
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              url,
              height: 127,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title.length >= 13 ? "${title.substring(0, 10)} ..." : title,
            style: GoogleFonts.roboto(
              fontSize: 14,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
