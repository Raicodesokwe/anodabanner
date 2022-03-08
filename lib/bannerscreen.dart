import 'package:flutter/material.dart';

class BannerScreen extends StatelessWidget {
  const BannerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: const Icon(
              Icons.arrow_back,
              color: Color(0xFF322644),
            ),
            actions: [
              TextButton(
                  onPressed: () {},
                  child: const Text('Preview',
                      style: TextStyle(
                          color: Color(0xFFFF773D),
                          fontWeight: FontWeight.w700)))
            ],
            pinned: true,
            backgroundColor: const Color(0xFFF7F7F7),
            expandedHeight: size.height * 0.15,
            elevation: 0,
            flexibleSpace: const FlexibleSpaceBar(
              titlePadding: EdgeInsets.only(left: 20, bottom: 15),
              title: Text(
                'Customize store',
                style: TextStyle(
                    color: Color(0xFF322644),
                    fontWeight: FontWeight.w700,
                    fontSize: 18),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 27),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Business logo',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  SizedBox(
                    width: size.width * 0.75,
                    child: const Text(
                      'Upload high quality image for your own logo',
                      style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w700,
                          fontSize: 13),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.025,
                  ),
                  Container(
                    height: size.height * 0.1,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFF7F7F7)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            child: Center(
                              child: Image.asset("assets/images/pic.png"),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  10.0,
                                ),
                                color:
                                    const Color(0xFFFF773D).withOpacity(0.2)),
                          ),
                          SizedBox(
                            width: size.width * 0.03,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Format: JPG,PNG',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black45,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.01,
                              ),
                              const Text(
                                'Size: 512 x 512 pixels',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black45,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Container(
                            height: 45,
                            width: size.width * 0.25,
                            child: const Center(
                              child: Text(
                                'Upload a file',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF00CC99)),
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  10.0,
                                ),
                                color: const Color(0xFFFFFFFF)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.45,
                  ),
                  Container(
                    width: double.infinity,
                    height: size.height * 0.08,
                    child:const Center(
                        child: Text(
                      'Update changes',
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 17),
                    )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFF00CC99).withOpacity(0.2)),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
