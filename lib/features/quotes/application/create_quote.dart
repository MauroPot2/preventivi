import 'package:preventiviedili/core/application/id_generator.dart';
import 'package:preventiviedili/features/quotes/application/quote_number_generator.dart';
import 'package:preventiviedili/features/quotes/domain/quote.dart';
import 'package:preventiviedili/features/quotes/domain/quote_item.dart';
import 'package:preventiviedili/features/quotes/domain/quote_revision.dart';
import 'package:preventiviedili/features/quotes/domain/quote_status.dart';
import 'package:preventiviedili/features/quotes/domain/repositories/quote_repository.dart';

class CreateQuote {
  final QuoteRepository _quoteRepository;
  final IdGenerator _idGenerator;
  final QuoteNumberGenerator _quoteNumberGenerator;

  CreateQuote(
    this._quoteRepository,
    this._idGenerator,
    this._quoteNumberGenerator,
  );

  Future<Quote> call({
    required String customerId,
    required List<QuoteItem> items,
    required double vatPercent,
    double discountPercent = 0,
    String? notes,
  }) async {
    final now = DateTime.now();
    final revisionId = _idGenerator.generate();
    final quoteId = _idGenerator.generate();
    final quoteNumber = await _quoteNumberGenerator.generateNext();
    final revisionNumber = 1;

    final revision = QuoteRevision(
      id: revisionId,
      revisionNumber: revisionNumber,
      discountPercent: discountPercent,
      vatPercent: vatPercent,
      status: QuoteStatus.draft,
      createdAt: now,
      updatedAt: now,
      items: items,
      notes: notes,
    );

    final quote = Quote(
      id: quoteId,
      customerId: customerId,
      quoteNumber: quoteNumber,
      createdAt: now,
      updatedAt: now,
      revisions: [revision],
    );

    return await _quoteRepository.createQuote(quote);
  }
}
