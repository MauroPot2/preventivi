import '../quote.dart';

abstract class QuoteRepository {
  Future<List<Quote>> getAllQuotes();
  Future<Quote?> getQuoteById(String id);
  Future<Quote> createQuote(Quote quote);
  Future<void> updateQuote(Quote quote);
  Future<void> deleteQuote(String id);
}
