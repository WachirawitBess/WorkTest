import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Tourist Attractions',
    home: FirstRoute(index: 0), // Start with index 0
  ));
}

class FirstRoute extends StatefulWidget {
  final int index;

  const FirstRoute({super.key, this.index = 0}); // index with default value 0

  @override
  _FirstRouteState createState() => _FirstRouteState();
}

class _FirstRouteState extends State<FirstRoute> {
  // List of tourist attractions
  final List<TouristAttraction> places = [
    TouristAttraction(
      name: 'พีระมิด',
      image: 'images/1.jpg',
      description: 'เป็นสิ่งก่อสร้างขนาดใหญ่ ที่มีฐานเป็นรูปสี่เหลี่ยม มีจุดยอดรวมอยู่ที่เดียวกัน โดยแต่ละด้านจะมีลักษณะเป็นสามเหลี่ยมประกอบประกอบแต่ละด้าน  อารยธรรมในยุคโบราณหลายแห่งในโลกมีสิ่งก่อสร้างรูปพีระมิด โดยพีระมิดที่มีชื่อเสียงมากที่สุดคือ พีระมิดในอียิปต์ ซึ่งสร้างขึ้นเพื่อเป็นสุสานของฟาโรห์ โดยพีระมิดที่ใหญ่ที่สุดคือ มหาพีระมิดแห่งกิซ่า ซึ่งเป็นหนึ่งในเจ็ดสิ่งมหัศจรรย์ของโลกยุคโบราณ และเป็นสิ่งเดียวที่ยังอยู่มาจนถึงยุคปัจจุบัน องค์ประกอบพื้นฐานที่สำคัญของพีระมิดคือหินทราย ซึ่งหินทรายดังกล่าวจะมีขนาดใหญ่และมีน้ำหนักมาก ต้องใช้แรงงานคนนับแสนในการสร้างพีระมิดแต่ละองค์ โดยใช้เวลาในการสร้างไม่ต่ำกว่า 10 ปีนอกจากนี้ยังมีพีระมิดของชาวนูเบียซึ่งขนาดเล็กกว่าและอยู่ทางใต้ของอียิปต์ และชาวเมโสโปเตเมียมีพีระมิดในรูปแบบของตนเองที่เรียกว่า ซิกกุรัต'
    ),
    TouristAttraction(
      name: 'มาชูปิกชู',
      image: 'images/2.jpg',
      description: ' เป็นซากอารยธรรมโบราณของชาวอินคา ตั้งอยู่บนเทือกเขาสูงในประเทศเปรู ที่ความสูงประมาณ 2,430 เมตร[1][2] อารยธรรมแห่งนี้ได้ถูกคนภายนอกลืมจนกระทั่งมีการค้นพบอีกครั้งโดยนักโบราณคดีที่ชื่อไฮแรม บิงแฮมมาชูปิกชูเป็นหลักฐานที่สำคัญของจักรวรรดิอินคา ใน ค.ศ. 1983 ยูเนสโกได้ขึ้นทะเบียนมาชูปิกชูให้เป็นแหล่งมรดกโลก โดยทำให้เป็นสถานที่ท่องเที่ยวที่คนนิยมไป7 กรกฎาคม ค.ศ. 2007 มาชูปิกชูได้รับเลือกให้เป็นหนึ่งในเจ็ดสิ่งมหัศจรรย์ของโลกยุคใหม่ จากการลงคะแนนทั่วโลกทั้งทางอินเทอร์เน็ตและโทรศัพท์เคลื่อนที่[3] แต่หลักฐานจากเอกสารโบราณจำนวนมากชี้ว่า ชื่อของมันคือ "อวยนาปิกชู" (Huayna Picchu) หรือ "ปิกชู" (Picchu) ต่างหาก ผลการศึกษานี้ตีพิมพ์ในวารสาร Ñawpa Pacha ของสถาบันอาณาบริเวณศึกษาแถบเทือกเขาแอนดีส (IAS) โดยทีมผู้วิจัยระบุว่าได้สืบค้นข้อมูลจากเอกสารที่เกี่ยวข้อง เช่นแผนที่ซึ่งระบุชื่อสถานที่ต่าง ๆ ในช่วงศตวรรษที่ 19 เอกสารจากนักล่าอาณานิคมชาวสเปนในศตวรรษที่ 17 รวมทั้งบันทึกข้อมูลภาคสนามต้นฉบับของไฮรัม บิงแฮม (Hiram Bingham) นักสำรวจชาวอเมริกันผู้ค้นพบมาชูปิกชูเมื่อปี 1911 ด้วย',
    ),
    TouristAttraction(
      name: 'ซากราดาฟามิลิอา',
      image: 'images/3.jpg',
      description: ' เป็นสถาปัตยกรรมประจำเมืองบาร์เซโลนา แคว้นกาตาลุญญา ประเทศสเปนที่ออกแบบโดยอันตอนี เกาดี สถาปนิกชาวกาตาลา เป็นผลงานในแนวมูดาร์นิซมา ซึ่งเป็นงานศิลปะเฉพาะถิ่นและเป็นนวศิลป์ที่มีเอกลักษณ์เฉพาะตัวของกาตาลุญญางานชิ้นนี้เริ่มสร้างตั้งแต่ปี พ.ศ. 2425 มีกำหนดก่อสร้างหอคอยทั้งหมด 18 หอคอย นับตั้งแต่ปีเริ่มสร้างจนถึงปัจจุบันสร้างเสร็จไปแล้วแค่ 8 หอคอย งานคืบหน้าไปประมาณร้อยละ 50 สถาปนิกผู้ออกแบบถูกรถรางทับเสียชีวิตไปเมื่อ พ.ศ. 2469 โดยศพของเขาได้ถูกฝังไว้ในซากราดาฟามิลิอาด้วยแม้เกาดีจะเสียชีวิตไปแล้ว แต่ผู้ร่วมงานของเขายังคงสานต่อโครงการโดยอาศัยรูปถ่าย ภาพร่าง และแบบจำลองที่เกาดีทำไว้ แต่แล้วในปี พ.ศ. 2479 โครงการก็ต้องหยุดชะงักเพราะสงครามกลางเมืองในสเปน ห้องใต้ดินและแบบจำลองอย่างละเอียดก็ถูกเผาทำลาย แต่เมื่อสิ้นสุดสงครามทีมงานก็กลับมาทำงานกันต่อ โดยอาศัยภาพร่าง ภาพถ่ายและแบบจำลองอื่น ๆ ที่รอดพ้นจากการถูกทำลาย ภายหลังได้นำคอมพิวเตอร์มาใช้ออกแบบ แต่ถึงจะใช้เทคโนโลยีมากมายมาช่วย กว่าโครงการนี้จะเสร็จก็อีกยาวไกลถึงปี พ.ศ. 2569',
    ),
    TouristAttraction(
      name: 'มหาวิหารนักบุญเบซิล',
      image: 'images/4.jpg',
      description: ' เป็นอาสนวิหารของศาสนจักรออร์โธดอกซ์รัสเซีย ตั้งอยู่ที่จัตุรัสแดง กรุงมอสโก ประเทศรัสเซีย สร้างโดยซาร์อีวานที่ 4 แห่งรัสเซีย หรือซาร์อีวานจอมโหด เพื่อฉลองชัยชนะเหนือพวกมองโกลที่กรีธาทัพมาเมืองคาซัน เมื่อปี ค.ศ. 1552 ผลจากชัยชนะครั้งนี้ทำให้รัสเซียสามารถรวมชาติได้เป็นปึกแผ่น จึงสร้างมหาวิหารแห่งนี้ขึ้นเมื่อปี ค.ศ. 1555 เดิมทีมหาวิหารเซนต์บาซิล เป็นเพียงโบสถ์ขนาดเล็กที่บรรจุศพของนักบุญวาซิลีหรือนักบุญบาซิลมหาวิหารเซนต์บาซิลมีรูปทรงที่ไม่เหมือนโบสถ์อื่น คือมีโดม 8 โดมล้อมรอบโดมที่ 9 ที่อยู่ตรงกลาง ทำให้อาคารมีรูปทรงแปดเหลี่ยม ด้วยสถาปัตยกรรมที่ผสมผสานระหว่างสถาปัตยกรรมแบบรัสเซียโบราณอันได้รับอิทธิพลมาจากไบแซนไทน์ที่เป็นโดมทรงหัวหอมกับสถาปัตยกรรมที่เรียกกันว่ารัสเซียนกอธิก หอคอยสูงรูปกระโจมเป็นอิทธิพลจากยุโรปตะวันตก ผลลัพธ์ที่ออกมาจึงกลายเป็นหอคอยสูงรูปแท่งเทียนกำลังลุกไหม้บนปลายลำเทียน ส่งความโชติช่วงชัชวาลย์เป็นเครื่องบูชาเทพเจ้าบนสวรรค์',
    ),
    TouristAttraction(
      name: 'ทัชมาฮาล',
      image: 'images/5.jpeg',
      description: 'เป็นอาคารฝังศพสร้างด้วยหินอ่อนสีขาวงาช้าง ตั้งอยู่บนฝั่งแม่น้ำทางใต้ของแม่น้ำยมุนา ในเมืองอัคระ รัฐอุตตรประเทศ ประเทศอินเดีย ทัชมาฮาลเริ่มสร้างขึ้นในปี 1632 โดยจักรพรรดิโมกุล จักรพรรดิชาห์ชะฮัน (ครองราชย์ 1628 ถึง 1658) เพื่อตั้งศพของพระสนมเอก มุมตาช มหัล และเป็นที่ตั้งพระศพของจักรพรรดิชาห์ชะฮันเอง ทัชมาฮาลประกอบด้วยตัวอาคารสุสาน, มัสยิด และเกสต์เฮาส์ รายล้อมด้วยสวน การก่อสร้างทัชมาฮาลสำเร็จสมบูรณ์ในปี 1643 แต่มีการก่อสร้างในเฟสอื่น ๆ ของโครงการที่ดำเนินต่อไปอีกกว่า 10 ปีทัชมาฮาล เมื่อปี ค.ศ.2004ทัชมาฮาลได้รับสถานะเป็นแหล่งมรดกโลกของยูเนสโกในปี 1983 ในฐานะ "เพชรน้ำเอกของศิลปะมุสลิมในอินเดีย และเป็นหนึ่งในงานชิ้นเอกที่ได้รับการชื่นชมในระดับสากล" และได้รับการยกย่องโดยหลายบุคคลให้เป็นผลงานชิ้นเอกของสถาปัตยกรรมโมกุล และสัญลักษณ์ของประวัติศาสตร์อินเดียอันร่ำรวย ทัชมาฮาลมีผู้เดินทางมาเยี่ยมเยียนราว 7–8 ล้านคนต่อปีในปี 2007',
    ),
  ];

 @override
  Widget build(BuildContext context) {
    // Get the current tourist attraction based on index
    final currentAttraction = places[widget.index];

    return Scaffold(
      appBar: AppBar(
        title: Text('สถานที่ท่องเที่ยวอันดับที่ ${widget.index + 1}'), // Adjusted title
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display the image of the current attraction
            Image.asset(
              currentAttraction.image,
              width: 300,
              height: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            // Display the name of the attraction
            Text(
              currentAttraction.name,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            // Display the description of the attraction
            Text(
              currentAttraction.description,
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            const FavoriteWidget(), // Added Favorite Widget here
            const SizedBox(height: 20),
            if (widget.index < 4) // Check if the current index is less than 4 (for places 0-4)
              ElevatedButton(
                child: Text('สถานที่ท่องเที่ยวที่ ${_getNextIndex()}'), // Display next index
                onPressed: () {
                  int nextIndex = widget.index + 1;
                  if (nextIndex > 4) { // Adjust the limit to the length of places list
                    nextIndex = 0; // Reset to 0 if index exceeds 4
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FirstRoute(index: nextIndex),
                    ),
                  );
                },
              ),

          ],
        ),
      ),
    );
  }

  int _getNextIndex() {
    int nextIndex = widget.index + 2; // Increment index by 2
    if (nextIndex > 5) {
      nextIndex = 1; // Reset to 1 if nextIndex exceeds 5
    }
    return nextIndex;
  }
}

// Define the TouristAttraction class with the required attributes
class TouristAttraction {
  final String name;
  final String image;
  final String description;

  TouristAttraction({
    required this.name,
    required this.image,
    required this.description,
  });
}

// Favorite Widget
class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoriteCount = 41;

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            padding: const EdgeInsets.all(0),
            alignment: Alignment.center,
            icon: (_isFavorited
                ? const Icon(Icons.star)
                : const Icon(Icons.star_border)),
            color: Colors.red[500],
            onPressed: _toggleFavorite,
          ),
        ),
        SizedBox(
          width: 18,
          child: Text('$_favoriteCount'),
        ),
      ],
    );
  }
}