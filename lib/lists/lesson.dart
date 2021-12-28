import 'package:preschool_learning_app/lists/lesson_content.dart';
import 'package:preschool_learning_app/lesson_slider_page.dart';
import 'package:preschool_learning_app/models/lesson.dart';

List<Lesson> lessons = [
  Lesson(
    title: 'TAMIL ALPHABETS',
    image: 'assets/tamil.jpg',
    routeWidget: LessonSlider(
      title: 'TAMIL ALPHABETS',
      list: LessonContentList.TamilAlphabets,
    ),
  ),
  Lesson(
    title: 'ENGLISH ALPHABETS',
    image: 'assets/abc.png',
    routeWidget: LessonSlider(
      title: 'ENGLISH ALPHABETS',
      list: LessonContentList.alphabets,
    ),
  ),
  Lesson(
    title: 'NUMBERS',
    image: 'assets/number.png',
    routeWidget: LessonSlider(
      title: 'NUMBERS',
      list: LessonContentList.Numbers,
    ),
  ),
  Lesson(
    title: 'FRUITS',
    image: 'assets/fruit.jpg',
    routeWidget: LessonSlider(
      title: 'FRUITS',
      list: LessonContentList.fruits,
    ),
  ),
  Lesson(
    title: 'COLORS',
    image: 'assets/color.jpg',
    routeWidget: LessonSlider(
      title: 'COLORS',
      list: LessonContentList.Colors,
    ),
  )
];
