import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PostBox extends StatelessWidget {
  const PostBox({Key? key, required this.index, required this.likes})
      : super(key: key);

  final int index;
  final int likes;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 15, right: 7, top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 17,
                    backgroundImage: CachedNetworkImageProvider(
                        "https://picsum.photos/20$index"),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Text(
                    "ProggChef",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              Icon(
                Icons.more_vert_sharp,
                size: 20,
              ),
            ],
          ),
        ),
        CachedNetworkImage(
          imageUrl: "https://picsum.photos/60$index",
          progressIndicatorBuilder: ((context, url, progress) => Container(
                color: Colors.grey,
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 7, left: 12, right: 13),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    "asset/images/heart.png",
                    width: 25,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Image.asset(
                    "asset/images/chat.png",
                    width: 25,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Image.asset(
                    "asset/images/send.png",
                    width: 25,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                ],
              ),
              Image.asset(
                "asset/images/bookmark.png",
                width: 20,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12, right: 12),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "$likes likes",
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              RichText(
                text: const TextSpan(
                  text: "ProggChef ",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                  children: [
                    TextSpan(
                      text:
                          "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit. Ut lacus massa, volutpat sed libero in, ultrices eleifend ligula. Ut ultricies luctus porttitor. Curabitur scelerisque mi eget iaculis imperdiet. Vestibulum tincidunt eget dui sed consectetur. Sed eleifend enim vitae sollicitudin tincidunt. In nec faucibus tortor. Nulla gravida tempus sagittis.",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: const [
                  CircleAvatar(
                    radius: 12,
                    backgroundImage:
                        CachedNetworkImageProvider("https://picsum.photos/200"),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  SizedBox(
                    width: 120,
                    height: 20,
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Add a comment...",
                          hintStyle: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "3 hours ago",
                  style: TextStyle(
                    fontSize: 10,
                    color: Color(0xFF9A9A9A),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
