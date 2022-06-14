/*search*/

var products = new Bloodhound( {
  datumTokenizer: Bloodhound.tokenzers.whitespace,
  queryTokenizer: Bloodhound.tokenzers.whitespace,
  remote:{
    wildcard: '%QUERY',
    url: '/search?query=%QUERY'
  }
});

products.initialize();

$("#typeahead").typeahead({
  highlight:true
},{
  name: 'products',
  display: 'title',
  limit: 10,
  source: products
});

$('#typeahead').bind('typeahead:select', function(ev, suggestion) {
  window.location = '/product/' + encodeURIComponent(suggestion.id);
});
