% if mode == 'definition':
balanced.Card().save()
% elif mode == 'request':
import balanced

balanced.configure('ak-test-2eKlj1ZDfAcZSARMf3NMhBHywDej0avSY')

card = balanced.Card.fetch('/cards/CC4zyuNpxY0A0eAf87SeULCR')
card.meta = {
  'twitter.id': '1234987650',
  'facebook.user_id': '0192837465',
  'my-own-customer-id': '12345'
}
card.save()
% elif mode == 'response':
Card(links={u'customer': None}, cvv_result=u'Match', number=u'xxxxxxxxxxxx5100', expiration_month=12, href=u'/cards/CC4zyuNpxY0A0eAf87SeULCR', type=u'credit', id=u'CC4zyuNpxY0A0eAf87SeULCR', category=u'other', is_verified=True, cvv_match=u'yes', bank_name=u'BANK OF HAWAII', avs_street_match=None, brand=u'MasterCard', updated_at=u'2015-01-09T03:23:56.070888Z', fingerprint=u'fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788', can_debit=True, name=None, expiration_year=2020, cvv=u'xxx', avs_postal_match=None, avs_result=None, can_credit=False, meta={u'twitter.id': u'1234987650', u'facebook.user_id': u'0192837465', u'my-own-customer-id': u'12345'}, created_at=u'2015-01-09T03:23:51.373358Z', address={u'city': None, u'line2': None, u'line1': None, u'state': None, u'postal_code': None, u'country_code': None})
% endif