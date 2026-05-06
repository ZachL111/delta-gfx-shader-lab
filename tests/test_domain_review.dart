import '../lib/domain_review.dart';

void main() {
  const item = DomainReview(60, 25, 13, 45);
  assert(DomainReviewLens.score(item) == 151);
  assert(DomainReviewLens.lane(item) == 'ship');
}
