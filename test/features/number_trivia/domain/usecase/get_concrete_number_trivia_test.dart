import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tdd/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:tdd/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:tdd/features/number_trivia/domain/usecases/get_concrete_number_trivia.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {}

void main() {
  GetConcreteNumberTrivia useCase;
  MockNumberTriviaRepository mockNumberTriviaRepository;
  final testNumber = 1;
  final testNumberTrivia = NumberTrivia(number: 1, text: "test");
  setUp(() {
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    useCase = GetConcreteNumberTrivia(mockNumberTriviaRepository);
  });
  test("should get trivia for the number from the repository", () async {
    //arrange
    when(mockNumberTriviaRepository.getConcreteNumberTrivia(any)).thenAnswer(
      (realInvocation) async => Right(testNumberTrivia),
    );

    //act

    //assert
  });
}
